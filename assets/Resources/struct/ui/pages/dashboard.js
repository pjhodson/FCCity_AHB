/**
* Healthy Hometown
* Copyright (c)2013 FoodCare, Inc.
* Author: Shashi Dubey, shashid@foodcare.com
*/

//THIS PAGE IS NO LONGER USED CAN WE DELETE IT?

(function() {

var location = require('lib/location');
var FCPapi = require('lib/fcp').api;
var datastore = require('lib/datastore').datastore;

function createPage(S) {
  
  var L = S.Log;
  var ui = S.UI;
  
  var page = {
    name: 'search', 
    title: 'Dashboard',
    searchBox: null,
    
    createView: function(win)  {
      
      location.getLocation();       
      
      win.exitOnClose = true;
      var GridCont = Ti.UI.createScrollableView({
		showPagingControl : true,
		backgroundImage: '/images/bg/city.png',
		width : '100%',
		height : '100%',
	});
	win.add(GridCont);
	
	Ti.Gesture.addEventListener('orientationchange', function(e) {
		page.getDashboardView(GridCont, win);
	});
	
	page.getDashboardView(GridCont, win);
	return GridCont;
      
    },
    
    getDashboardView : function(GridCont, win){
	var cellWidth = 92;
	var cellHeight = 92;

	var IconWidth = 128;
	var IconHeight = 128;

	var _screenW = parseInt(Titanium.Platform.displayCaps.platformWidth);
	var _screenH = parseInt(Titanium.Platform.displayCaps.platformHeight);
	
	var icons = [
        { image: '/images/dashboard/restaurant.png',      page: 'restaurant_list'    },
        { image: '/images/dashboard/recruit.png',      page: 'recruit'    },
        { image: '/images/dashboard/farmersmarket.png',  page: 'farmers_markets'},
        
        { image: '/images/dashboard/grocers.png',  page: 'grocers'},
        { image: '/images/dashboard/home_delivery.png',   page: 'home_delivery'},
        { image: '/images/dashboard/health_conditions.png',   page: 'health_conditions'},
        
        { image: '/images/dashboard/recipes.png',   page: 'local_recepies'},
        { image: '/images/dashboard/get_deals.png',   page: 'get_deals'},
        { image: '/images/dashboard/nurtition_map.png',   page: 'Nutrition_map'},
        
    ];
    
	var colorSetIndex = 0;
	var cellIndex = 0;

	var GridView = [];
	GridCont.views = GridView;
	
	var totalIcons = icons.length*2;
	var x, y, iconH, iconW;
	
	if (_screenW > _screenH) {
		x = 4;
		y = 2;
	} else {
		x = 3;
		y = 3;
	}
	iconW = _screenW / x;
	iconH = (_screenH - (_screenH * 0.25) ) / y;
	
	IconWidth = (iconW<128) ? 92 : IconWidth;
	IconHeight = (iconH<128) ? 92 : IconHeight;
	
	cellWidth = (iconW<128) ? 64 : cellWidth;
	cellHeight = (iconH<128) ? 64 : cellHeight;


	var thisLabelFontSize = (cellWidth==92) ? 16 : 14;
	
	var tmpCnt = Math.ceil(totalIcons / (x * y));
	var totalView = (totalIcons > (x * y)) ? tmpCnt : 1;
	
	var thisView, thisView1, thisView2, thisLabel;
	
	for (var i = 0; i < totalView; i++) {
		var IconContainer = Ti.UI.createView({
			height : 'auto',
			width : 'auto',
			layout : "horizontal",
			id : i,

		});
		GridView.push(IconContainer);
		for (var j = 0; j < y; j++) {
			for (var k = 0; k < x; k++) {
				thisView = Ti.UI.createView({
					height : iconH,
					width : iconW,
					textAlign : Titanium.UI.TEXT_ALIGNMENT_CENTER,
					top : 0,
				});
				
				thisView1 = Ti.UI.createImageView({
					opacity: 0.90,
					image: icons[colorSetIndex].image,
					page: icons[colorSetIndex].page,
					height : IconWidth,
					width : IconHeight,
				});
				thisView1.addEventListener('click', function(e) { page.iconClick(e.source.page, e, win, GridCont) });

				thisView.add(thisView1);
				IconContainer.add(thisView);

				cellIndex++;
				colorSetIndex++;
				
				if( colorSetIndex === icons.length ){
		            colorSetIndex = 0;
		        }
				if (cellIndex == totalIcons) {
					i = totalView;
					j = y;
					k = x;
				}

			}
		}

	}
	GridCont.views = GridView;	
	},
	iconClick: function(viewName, e, win, view) {
        S.Log.trace('iconClick: ' + viewName);
        S.Log.print_r(e);
        
        switch(viewName) {
          case 'news':     FCPapi.getHometownNews(function(response) { S.UI.navigate('hometown_news', response) });      break;
          case 'location':     FCPapi.getHometownLocations(function(response) { S.UI.navigate('hometown_locations', response) });      break;
          case 'events':     FCPapi.getHometownEvents(function(response) { S.UI.navigate('hometown_events', response) });      break;
          case 'restaurant_list':     S.UI.search({}, viewName);  break;
          case 'cuisine':  FCPapi.getCuisineTypes(function(response) { S.UI.navigate('cuisine_types', response) }); break;  
          
          case 'nominate': 
             var nominate = require('struct/ui/modal/nominate').createPage(S);
             nominate.run();
             break;
             
          case 'local_recepies':
          break;
          
          case 'corner_stores':
          	page.web('Corner Stores', '/templates/cornerstores.html');
          break;
          
          case 'farmers_markets':
          	page.web('Farmers Markets', '/templates/farmersmarket.html');
          break;

          default: ui.navigate(viewName);    
        }
    },
    web: function(title, url) {
      
        var w = Titanium.UI.createWindow({
          title: title,
          barColor: S.Cfg.barColor, 
        });
        
        w.add(Ti.UI.createWebView({url: url }));
        
        if (Ti.Platform.name !== 'android') {
          var b = Titanium.UI.createButton({
            title:'Close',
            style:Titanium.UI.iPhone.SystemButtonStyle.PLAIN
          });
          w.setLeftNavButton(b);
          b.addEventListener('click',function()
          {
            w.close();
          });
        }
        w.open({modal:true});
    },
  }
  
  return page;      
}  

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();
