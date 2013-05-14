/**
* Healthy Hometown
* Copyright (c)2013 FoodCare, Inc.
* Author: Shashi Dubey, shashid@foodcare.com
*/

(function() {

function createPage(S) {
  
  var L = S.Log;
  var ui = S.UI;
  var cfg = S.Cfg;
  
  var page = {
    name: 'search', 
    title: 'Dashboard',
    searchBox: null,
    
    createView: function()  {

var _screenW = parseInt(Titanium.Platform.displayCaps.platformWidth);
var _screenH = parseInt(Titanium.Platform.displayCaps.platformHeight);
var cellWidth = (_screenW/2);
var cellHeight=((_screenH/2)*20)/100;
var xSpacer = 0;
var ySpacer = 0;

 
var tableData = [];
var iconsList = [['Restaurants', 'Prepared Meals'],['Recipes', 'Local Recipes'],['Farmer Markets', 'Corner Stores'], ['Grocers', 'Help Us Recruit'], ['News & Events', 'Health Resources']];
var xGrid = 2;
var yGrid = iconsList.length;
var cellIndex = 0;
var scrollview = Ti.UI.createScrollView({
    layout:'vertical',
    contentHeight: 'auto',
	contentWidth: 'auto',
	showVerticalScrollIndicator:true,
	showHorizontalScrollIndicator:true,
	top:_screenH/2-50,
});
Ti.API.info('==='+cellHeight);

for (var y=0; y<yGrid; y++){
    var thisRow = Ti.UI.createView({
        layout: "horizontal",
        height: cellHeight+(2*ySpacer),
        
    });
    for (var x=0; x<xGrid; x++){
        var thisView = Ti.UI.createView({
            objName:"grid-view",
            objIndex:cellIndex.toString(),
            backgroundColor: '#14141F',
            zIndex:2,
            opacity:0.80,
            left: ySpacer,
            height: cellHeight,
            width: cellWidth,
            borderWidth:1,
            borderColor:'#000033'
        });

 		var customFont = 'Museo Sans 300'; // use the friendly-name on iOS
		if(Ti.Platform.osname=='android') {
			// on Android, use the "base name" of the file (name without extension)
			customFont = 'MuseoSans_300';
			}

		var location = require('lib/location');
		var FCPapi = require('lib/fcp').api;
		var datastore = require('lib/datastore').datastore;
        var thisLabel = Ti.UI.createLabel({
        	id:iconsList[y][x],
            color:"white",
            font:{fontSize:'17sp', fontFamily: customFont},
            text:iconsList[y][x],
            touchEnabled:true,
            left:'15dp'
        });
        thisView.add(thisLabel);
        thisRow.add(thisView);
        thisView.addEventListener('click', function(e) {
        	if(e.source.objIndex == 0 || e.source.id == 'Restaurants')
        		S.UI.search({}, 'restaurant_list');
        	else if(e.source.objIndex == 8 || e.source.id == 'News & Events'){
        		S.UI.navigate('news_events');
        	}
        	else if(e.source.objIndex == 9 || e.source.id == 'Health Resources'){
        		S.UI.navigate('health_resources');
        	}
        	else if(e.source.objIndex == 7 || e.source.id == 'Help Us Recruit'){
        		S.UI.navigate('recruit');	
        	}
        	else
        		alert('Coming Soon');
        });
        cellIndex++;

    }
    scrollview.add(thisRow);
}
	return scrollview;
      
    },
  }
  
  return page;      
}  

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();
