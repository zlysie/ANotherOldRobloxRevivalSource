if(typeof(ANORRL) == "undefined") {
	ANORRL = {}
}

if (!Object.keys) {
	Object.keys = function(obj) {
		var keys = [];
		for (var i in obj) {
			if (obj.hasOwnProperty(i)) {
				keys.push(i);
			}
		}
		return keys;
	};
}

ANORRL.User = {
	GrabPlaceInfo: function(id) {
		
		$.get("/api/games", { placeid: id }, function(data) {
			if(!data['error']) {
				var place = data['place'];

				$("#NameAndCreator > a").html(place['name']);
				$("#NameAndCreator > a").attr("href","/game/"+place['id']);
				$("#ShowcaseBigImages > img").attr("src", "/thumbs/?id="+place['id']+"&sx=300&sy=169");

				if(place['description'].trim() == "") {
					$("#ShowcaseDetails > code").html("<b>No description provided...</b>");
				} else {
					$("#ShowcaseDetails > code").html(place['description'].replaceAll("\r\n", "<br>"));
				}
			} else {
				alert("Something went wrong, please try again!")
			}
		})
		//
	}
}

$(() => {
	$("a[data-placeid]").on("click", function() {
		ANORRL.User.GrabPlaceInfo($(this).attr("data-placeid"));
	});

	var place = $("a[data-placeid]").first();
	ANORRL.User.GrabPlaceInfo(place.attr("data-placeid"));
});
