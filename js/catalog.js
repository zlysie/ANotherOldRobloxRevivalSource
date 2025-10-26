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

const regex = /[^A-Za-z0-9 ]/g;

ANORRL.Catalog  = {
	CurrentPage: 1,
	CurrentCategory: 8,
	CurrentlyLoadingCrapBruh: false,
	AdvancePager: function() {
		this.GrabAssets(this.CurrentCategory, this.CurrentPage + 1);
	},
	DeadvancePager: function() {
		this.GrabAssets(this.CurrentCategory, this.CurrentPage - 1);
	},
	GrabAssets: function(category, page) {

		if(this.CurrentlyLoadingCrapBruh) {
			return;
		} else {
			this.CurrentlyLoadingCrapBruh = true;
		}

		var loadingMessage = $("#AssetsContainer #StatusText #Loading");
		var emptyMessage = $("#AssetsContainer #StatusText #NoAssets");

		emptyMessage.css("display", "none");
		loadingMessage.css("display", "block");

		if(category === undefined) {
			category = this.CurrentCategory;
		} else {
			this.CurrentCategory = category;
		}
		if(page === undefined) {
			page = 1;
		}

		var feedscontainer = $("#AssetsContainer > table");

		feedscontainer.children().each(function() {
			$(this).remove();
		});

		var pagercontainer = $("#AssetsContainer #Paginator");
		
		var backPager = pagercontainer.find("#PrevPager");
		var nextPager = pagercontainer.find("#NextPager");

		$("li[data_category]").each(function() {
			$(this).removeAttr("selected");
		});

		var categorylabel = $("li[data_category="+category+"]").find("a").html().toLowerCase().replaceAll("-", "");

		$("li[data_category="+category+"]").attr("selected", "");
		
		$.get("/api/catalog", {c: category, q: "", p : page}, function(data) {
			
			var assets = data['assets'];
			ANORRL.Catalog.CurrentPage = data['page'];
			var current_page = ANORRL.Catalog.CurrentPage;
			var total_pages = data['total_pages'];

			feedscontainer.attr("hidden", true);

			if(assets.length == 0) {
				if(pagercontainer.css("display") == "block") {
					pagercontainer.css("display", "none");
				}
				loadingMessage.css("display", "none");
				emptyMessage.css("display", "block");

				emptyMessage.find("#AssetType").html($("li[data_category="+category+"]").find("a").html().toLowerCase());

				
			} else {
				loadingMessage.css("display", "none");
				if(pagercontainer.css("display") == "none") {
					pagercontainer.css("display", "block");
				}

				var index = 0;
				var rowIndex = 0;
				
				for (var key in assets) {
					if(index % 4 == 0 || index == 0) {
						feedscontainer.append($("<tr></tr>"));
						if(index % 4 == 0  && index != 0) {
							rowIndex++;
						}
					} 

					var asset = assets[key];

					var td = $("<td></td>");
					var template = $($(".Asset[template]").clone().prop('outerHTML'));
					td.append(template);
					template.removeAttr("template");

					
					if(asset['onsale']) {
						if(asset['cost']['cones'] + asset['cost']['lights'] == 0) {
							template.find("#Pricing").attr("oneprice", "true");
							template.find("#Pricing").children().each(function() {
								$(this).remove();
							});
							template.find("#Pricing").append($("<span id=\"FreeTag\">Free</span>"))
						} else {

							if(asset['cost']['cones'] == 0) {
								template.find("#Pricing #Cones").remove();
							} else {
								template.find("#Pricing #Cones #Costing").html(asset['cost']['cones']);
							}

							if(asset['cost']['lights'] == 0) {
								template.find("#Pricing #Lights").remove();
							} else {
								template.find("#Pricing #Lights #Costing").html(asset['cost']['lights']);
							}


							if(asset['cost']['lights'] != 0 && asset['cost']['cones'] != 0) {
								template.find("#Pricing").removeAttr("oneprice");
							} else {
								template.find("#Pricing").attr("oneprice", "true");
							}

						}
					} else {
						template.find("#Pricing").attr("oneprice", "true");
						template.find("#Pricing").children().each(function() {
							$(this).remove();
						});
						template.find("#Pricing").append($("<span id=\"NotOnSaleTag\">Not on sale</span>"))
					}


					
					var urlname = asset['name'].replaceAll(regex, "").trim().toLowerCase().replaceAll(" ", "-");
					if(urlname == "") {
						urlname = "unnamed";
					}

					template.find("#NameAndThumbs > img").attr("src", "/thumbs/?id="+asset['id']+"&sxy=130");

					template.find("#NameAndThumbs > span").html(asset['name']);
					template.find("#NameAndThumbs").attr("href", "/"+urlname+"-item?id="+asset['id']);

					template.find("#Creator > span").html(asset['creator']['name']);
					template.find("#Creator").attr("href", "/users/"+asset['creator']['id']+"/profile");

					// implement details
					feedscontainer.removeAttr("hidden");
					$(feedscontainer.find("tr")[rowIndex]).append(td);

					index++;
				}

				if(current_page == 1) {
					backPager.css("display", "none");
				} else {
					backPager.css("display", "inline");
				}

				if(current_page == total_pages) {
					nextPager.css("display", "none");
				} else {
					nextPager.css("display", "inline");
				}

				pagercontainer.find("input").val(current_page);
				pagercontainer.find("#Pages").html(total_pages);
			}

			ANORRL.Catalog.CurrentlyLoadingCrapBruh = false;
		});
	}
}

$(function(){

	$("li[data_category]").on("click",function() {
		ANORRL.Catalog.GrabAssets($(this).attr("data_category"), ANORRL.Catalog.CurrentPage);
	});
	
	ANORRL.Catalog.GrabAssets();

	$("#Paginator").find("input").on("change", function() {
		ANORRL.Catalog.GrabAssets(ANORRL.Catalog.CurrentCategory, Number($(this).val()));
	});
});