<?php
	header("Content-Type: application/json");

	require_once $_SERVER['DOCUMENT_ROOT']."/core/utilities/userutils.php";
	require_once $_SERVER['DOCUMENT_ROOT']."/core/renderer.php";

	$user = UserUtils::RetrieveUser();

	function sanitizeBodyColourID($rawcolour) {
		$colour = intval($_POST[$rawcolour]);

		$colours = [
			1,
			2,
			3,
			5,
			6,
			9,
			11,
			12,
			18,
			21,
			22,
			23,
			24,
			25,
			26,
			27,
			28,
			29,
			36,
			37,
			38,
			39,
			41,
			42,
			43,
			44,
			45,
			47,
			48,
			49,
			50,
			100,
			101,
			102,
			103,
			104,
			105,
			106,
			107,
			108,
			110,
			111,
			112,
			113,
			115,
			116,
			118,
			119,
			120,
			121,
			123,
			124,
			125,
			126,
			127,
			128,
			131,
			133,
			134,
			135,
			136,
			137,
			138,
			140,
			141,
			143,
			145,
			146,
			147,
			148,
			149,
			150,
			151,
			153,
			154,
			157,
			158,
			168,
			176,
			178,
			179,
			180,
			190,
			191,
			192,
			193,
			194,
			195,
			196,
			198,
			199,
			200,
			208,
			209,
			210,
			211,
			212,
			213,
			217,
			218,
			219,
			220,
			221,
			222,
			223,
			224,
			225,
			226,
			232,
			268,
			321,
			333,
			1001,
			1002,
			1003,
			1004,
			1005,
			1006,
			1007,
			1008,
			1009,
			1010,
			1011,
			1012,
			1013,
			1014,
			1015,
			1016,
			1017,
			1018,
			1019,
			1020,
			1021,
			1022,
			1023,
			1024,
			1025,
			1026,
			1027,
			1028,
			1029,
			1030,
			1031,
			1032
		];
		
		if(!in_array($colour, $colours)) {
			return 24;
		} else {
			return $colour;
		}
	}


	if($user != null) {
		if(isset($_GET['r'])) {
			$request = $_GET['r'];
			if($request == "getwardrobe") {
				$type = AssetType::HAT->ordinal();
				if(isset($_GET['c'])) {
					if($_GET['c'] != "outfits") {
						$type = intval($_GET['c']);
					}
				}
				$page = 1;
				if(isset($_GET['p'])) {
					$page = intval($_GET['p']);
				}

				if($page < 1) {
					die(header("Location: /api/wardrobe?r=getwardrobe&c=$type&p=1"));
				}

				if($_GET['c'] != "outfits") {
					$wearing_array = $user->GetWearingArray();
					$total_pages = floor(count($user->GetAllOwnedAssetsOfTypeExcluding(AssetType::index($type), $wearing_array))/8)+1;

					if($total_pages < $page) {
						die(header("Location: /api/wardrobe?r=getwardrobe&c=$type&p=1"));
					}

					$assets = $user->GetAllOwnedAssetsOfTypePagedExcluding(AssetType::index($type),$wearing_array, $page, 8);

					$assets_raw = [];

					if(count($assets) != 0) {
						foreach($assets as $asset) {
							if($asset instanceof Asset) {
								array_push($assets_raw, [
									"id" => $asset->id,
									"name" => $asset->name,
									"creator" => [
										"id" => $asset->creator->id,
										"name" => $asset->creator->name
									],
								]);
							}
						}
					}
					die(json_encode(["assets" => $assets_raw, "page" => $page, "total_pages" => $total_pages]));
				} else {
					die(json_encode(["assets" => [], "page" => 1, "total_pages" => 1, "comment"=> "Hi, outfits haven't been added yet (congrats on finding this lol)"]));
				}
			} else if($request == "wear" && isset($_POST['assetid'])) {
				$asset = Asset::FromID(intval($_POST['assetid']));

				if($asset != null && $user->Owns($asset)) {
					die(json_encode($user->Wear($asset)));
				}				
			} else if($request == "remove" && isset($_POST['assetid'])) {
				$asset = Asset::FromID(intval($_POST['assetid']));

				if($asset != null && $user->Owns($asset)) {
					die(json_encode($user->Unwear($asset)));
				}				
			} else if($request == "getwearing") {
				$wearing_array = $user->GetWearingArray();

				$assets = [];

				if(count($wearing_array) != 0) {
					foreach($wearing_array as $assetid) {
						$asset = Asset::FromID($assetid);
						if($asset != null && $asset instanceof Asset) {
							array_push($assets, [
								"id" => $asset->id,
								"name" => $asset->name,
								"creator" => [
									"id" => $asset->creator->id,
									"name" => $asset->creator->name
								],
							]);
						}
					}
				}

				die(json_encode(["assets" => $assets]));
			} else if($request == "getbodycolours") {
				die(json_encode(["colours" => $user->GetBodyColours()]));
			} else if($request == "setbodycolours" &&
				isset($_POST['head']) &&
				isset($_POST['torso']) &&
				isset($_POST['leftarm']) &&
				isset($_POST['rightarm']) &&
				isset($_POST['leftleg']) &&
				isset($_POST['rightleg'])
			) {
				$head = sanitizeBodyColourID('head');
				$torso = sanitizeBodyColourID('torso');
				$leftarm = sanitizeBodyColourID('leftarm');
				$rightarm = sanitizeBodyColourID('rightarm');
				$leftleg = sanitizeBodyColourID('leftleg');
				$rightleg = sanitizeBodyColourID('rightleg');

				$user->SetBodyColours($head, $torso, $leftarm, $rightarm, $leftleg, $rightleg);
				die(json_encode(["error" => false]));
			} else if($request == "rendercharacter") {
				$mediadir = $_SERVER['DOCUMENT_ROOT']."/../users/".$user->id;

				$render = TheFuckingRenderer::RenderUser($user->id);
				$data = "data:image/png;base64,$render";
				list($type, $data) = explode(';', $data);
				list(, $data)      = explode(',', $data);
				$data = base64_decode($data);

				$render_image = imagecreatefromstring($data);
				imagesavealpha($render_image, true);
				ob_clean();
				header("Content-Type: image/png");
				imagepng($render_image);
			}
		}
		die(json_encode(["error" => true, "reason" => "Invalid request."]));
	} else {
		die(json_encode(["error" => true, "reason" => "User not logged in."]));
	}
	
?>