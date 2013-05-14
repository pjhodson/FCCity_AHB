/**
* Healthy Hometown

* Author: FoodCare Inc. Copyright 2013. All Rights Reserved
*/

(function() {

var FCPapi = require('lib/fcp').api;
var Dish = require('lib/models/dish').dish;


function createPage(S) {
  
  var ui = S.UI;
  var cfg = S.Cfg;

  var locationsViewContainer = {
    
    name: 'hometown_locations', 
    title: 'Hometown locations',
    
    createView: function(win, locations) {
      Ti.App.Logger.trace('+locations_list');
            
      var views = S.UI.createBGTableView('/images/bg/city.png', function(e) {  
	      	FCPapi.abort(); // Kill any pending requests
	        S.UI.hometownNewsList(e.rowData.locations_type_id);           
      });
      
      var dishData = [];            
      var tableData = [];
      
      for(i = 0; i < locations.hometown_locations.length; i++) {
          var locations_type = locations.hometown_locations[i];
          
          dishData.push({ hasChild:true,  'id': locations.id, name: locations_type.description, 'address':locations_type.address, 'category':locations_type.category, 'link':locations.link });
          
          // if (locations_type.description && locations_type.id) {  // protect against null data
              // var row  = Ti.UI.createTableViewRow({title: locations_type.description, locations_type_id: locations_type.id, hasChild: true, color: 'black', backgroundColor: 'white' });           
              // tableData.push( row );              
          // }
      }
      
      events = null;  // Free the reference
     
      var lastRow = 0;
      
      function displayData() {

        var endRow = lastRow + Ti.App.Config.per_page;
        if (endRow > dishData.length) endRow = dishData.length;
              
        for (var dishidx = lastRow; dishidx < endRow; dishidx++) {
          tableData.push(locationsViewContainer.buildRow(dishData[dishidx]) );
        }              
        
        lastRow = endRow;
        views.tableView.setData(tableData);
      }
         
      displayData();
      return views.mainView;
    },
    
    buildRow: function(rowData) {      
      
       if (Ti.App.Util.isAndroid()) {
          height = 'auto';
        } else {
          height = '40dp';
        }

		var rowView = Titanium.UI.createView({
          height: height,
          width: '100%',
          top: 0,
          left: 0,
        });
        
        var header = rowData.name;
        
        rowView.add(
          Titanium.UI.createLabel({
            text: header,
            font: { fontSize: '15sp', fontWeight:'bold', fontFamily: cfg.fontFamily },
            width: 'auto',
            textAlign: 'left',
            top: '2dp',
            height: '18dp',
            left: '5dp',
            color: 'black',
          }));

         rowView.add( 
          Titanium.UI.createLabel({
            text: rowData.address,
            font: { fontSize: '12sp' },
            width: 'auto',
            textAlign: 'left',
            top: '22dp',
            left: '5dp',
            color: 'black',
          }));

      return S.UI.createTableViewRow(rowData, rowView);
    }, 
  }   
  return locationsViewContainer;    
};

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();


