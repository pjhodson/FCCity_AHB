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
  var eventsViewContainer = {
    
    name: 'health_resources', 
    title: 'Health Resources',
    
    createView: function(win, events) {
    	
    	var view = Ti.UI.createScrollView({
	    contentHeight: 'auto',
	    contentWidth: 'auto',
	    showVerticalScrollIndicator:true,
	    showHorizontalScrollIndicator:true,
	    backgroundImage:'/images/bg/city.png',
	    top: 0,
        left: 0,
	  });
	 
	var container = Ti.UI.createView({backgroundColor: "transparent", layout: "vertical"});
	var	subDataLayout=[{title: "Childhood Obesity", color:'white', backgroundColor:'#14141F'},{title: "Women's Health", color:'white', backgroundColor:'#14141F'},{title: "Diabetes Prevention & Management", color:'white', backgroundColor:'#14141F'},
	{title: "Senior Nutrition", color:'white', backgroundColor:'#14141F'}, {title: "Hearth Health", color:'white', backgroundColor:'#14141F'},{title: "Corporate Wellness", color:'white', backgroundColor:'#14141F'},{title: "Personal Wellness", color:'white', backgroundColor:'#14141F'}];
	
	var subData=[];
	var height;
	if (Ti.App.Util.isAndroid()) {
      height = 'auto';
    } else {
      height = '40dp';
    }
	for(var i=0; i<subDataLayout.length; i++)
	{
		var rowView = Titanium.UI.createView({
          height: height,
          width: '100%',
          top: 0,
          left: 0,
        });
        rowView.add(
          Titanium.UI.createLabel({
            text: subDataLayout[i].title,
            font: { fontSize: '17sp', fontWeight:'bold', fontFamily: cfg.fontFamily },
            width: 'auto',
            textAlign: 'left',
            height: '18dp',
            left: '10dp',
            color: 'white',
          }));
		subData.push(S.UI.createTableViewRow({backgroundColor:'#14141F'}, rowView));
	}
var layout = [
		
	{
		title: "Programs",
		isparent: true,
		hasChild:true,
		opened:false,
	},
	{
		title: "Education Tips",
		isparent: true,
		hasChild:true,
		opened:false,
	},
	{
		title: "Healthy Hometown Champions",
		hasChild:true,
		isparent: true,
		opened:false,
	},
];
var tableView = Ti.UI.createTableView({
	top: 0,
	height: Ti.Platform.displayCaps.platformHeight,
	data: layout,
	backgroundColor:'transparent',
    rowBackgroundColor:'#FAFAFF',
    opacity:'0.8',
	footerTitle:'',
});

	
tableView.addEventListener("click", function(e) {
	var currentIndex = e.index;
	if(e.rowData.isparent) {
		
		//Is it opened?
		if(e.rowData.opened) {
			deleteRows(tableView, currentIndex);
			e.rowData.opened = false;
		}
				
		else {
			//Add teh children.
			addRow(tableView, currentIndex);
			e.rowData.opened = true;
		}
				
	}
			
});
var add=0;
var i=0;
function addRow(tableView, currentIndex)
{
	if(add==0){
	add=currentIndex;
	}
	if(add==7+currentIndex){
		add=0;
		i=0;
	return;
	}
	tableView.insertRowAfter(add, subData[i]);
	i++;
	add++;
	setTimeout(function(){addRow(tableView, currentIndex)}, 50);
};
var del=7;
var isFirst=true;
function deleteRows(tableView, currentIndex)
{
	if(isFirst){
		del=7+currentIndex;
		isFirst=false;
	}
	if(del==currentIndex)
	{
		del=7;
		isFirst=true;
		return;
	}
	tableView.deleteRow(del);
	del--;
	setTimeout(function(){deleteRows(tableView, currentIndex)}, 50);
	

};
container.add(tableView);
    	
		view.add(container);
		return view;
    } 
  }   
  return eventsViewContainer;    
};

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();


