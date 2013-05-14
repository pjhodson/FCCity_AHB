/**
* Healthy Hometown

* Author: FoodCare Inc. Copyright 2013. All Rights Reserved
*/

(function() {

var location = require('lib/location');
var FCPapi = require('lib/fcp').api;
var datastore = require('lib/datastore').datastore;

function createPage(S) {
  
  var L = S.Log;
  var ui = S.UI;
  
  var page = {
    name: 'resources', 
    title: 'Resources',
    searchBox: null,
    
    iconClick: function(viewName, e) {
        S.Log.trace('iconClick: ' + viewName);
        S.Log.print_r(e);
        
        switch(viewName) {
                 
          case 'corporate_wellness':	page.web('Corporate Wellness', 'http://www.heuserclinic.com/adult-wellness-programs/corporate-fitness-programs/'); break;
          
          case 'childhood_obesity': break;
          
          case 'diabetes': page.web('Diabetes', 'http://www.ymcalouisville.org/healthy-living/health-well-being-fitness/ymca-diabetes-prevention-program.html'); break;
          
          case 'senior': page.web('Senior', '/templates/The Senior Nutrition Program.html'); break;
          
          case 'heart': page.web('Heart', '/templates/heart.html'); break;
          
          case 'womens_health': page.web('Womens Health', 'http://www.louisvillewic.org/wictemplate/english/splash/'); break;

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
    
    createView: function(win)  {
      
      location.getLocation();       
      
      win.exitOnClose = true;
      
      var view = Ti.UI.createScrollView({
      	contentHeight: 'auto',
	    contentWidth: 'auto',
	    showVerticalScrollIndicator:true,
	    showHorizontalScrollIndicator:true,      	
      });
      var top = 0;
      
      var sp = {      
          barColor:'#000', 
          showCancel: false,
          height: 80,         
          top: 0,
      }

      if ( (Ti.Platform.osname == 'android')) {
        sp.height = 80;
        } else {
          sp.height = 40;
      }
      
      sp.height = 40;
      
      var search = Ti.UI.createSearchBar(sp);
      search.addEventListener('return', function(e) { page.search('restaurant_list', e ); })
      
      // Doesn't hide keyboard on blur            
      search.hintText = 'search for cuisine';
      page.searchBox = search;
      
      var dashboard = S.UI.createView( {backgroundImage: '/images/bg/city.png'} );
  
      view.add(dashboard);
                  
      var icons = [
        { image: '/images/dashboard/childhoodobesity.png',      page: 'childhood_obesity'    },
        { image: '/images/dashboard/womenshealth.png',      page: 'womens_health'    },
        
        { image: '/images/dashboard/diabetes.png',  page: 'diabetes'},
        { image: '/images/dashboard/senior.png',  page: 'senior'},
        
        { image: '/images/dashboard/heart.png',  page: 'heart'},
        { image: '/images/dashboard/corporatewellness.png',   page: 'corporate_wellness'},

      ];
      
      var twidth = Ti.Platform.displayCaps.platformWidth; // 320x480, iphone; 480 Android
      var midpoint = twidth / 2-60;
      var top = sp.height-10;
      var top_delta = 100;
      var left_1 = 20; //80
      var width = 140;
      
      // guess at appropriate spacing
      var height_offset = 140;
      if ( (Ti.Platform.osname == 'android')) {
        top_delta = top_delta * 2; // try a spacing of 200
  
      } 

      
      for(row = 0; row < icons.length; row++) {

        var icon_left = icons[row];
      
        var image1 = Ti.UI.createImageView( { opacity: 0.90, image: icon_left.image, top: top + top_delta * row, left: midpoint,  page: icon_left.page,  width: width, height: 'auto' } );
                      
        image1.addEventListener('click', function(e) { page.iconClick(e.source.page, e) });
        view.add(image1);
        
      }     
      return view;
     }
  }
  
  return page;      
}  

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();
