/**
* Healthy Hometown
* Author: FoodCare Inc. Copyright 2013. All Rights Reserved
* 
*/

(function() {

var FCPapi = require('lib/fcp').api;
var Dish = require('lib/models/dish').dish;


function createPage(S) {
  
  var ui = S.UI;

  var page = {
    
    name: 'health_resources', 
    title: 'Health Resources',
    useTopBar: 'Know a food business missing from this app?',
    
    createView: function(win, events) {
    	
    	var view = Ti.UI.createScrollView({
	    contentHeight: 'auto',
	    contentWidth: 'auto',
	    showVerticalScrollIndicator:true,
	    showHorizontalScrollIndicator:true,
	    backgroundImage:'/images/bg/city.png',
	    top: 0,
        left: 0,
        bottom:10,
	  });
	var container = Ti.UI.createView({backgroundColor: "transparent", layout: "vertical", zIndex:2});
	var	subData=[{title: "Childhood Obesity", hasChild:true, color:'white', backgroundColor:'transparent', font:{fontSize:'17sp', fontWeight:'bold'}, rightImage:'/images/table_icons/arrow.png'},
	{title: "Women's Health", hasChild:true, color:'white', backgroundColor:'transparent', font:{fontSize:'17sp', fontWeight:'bold'}, rightImage:'/images/table_icons/arrow.png'},
	{title: "Diabetes Prevention & Management",hasChild:true, color:'white', backgroundColor:'transparent', font:{fontSize:'17sp', fontWeight:'bold'}, rightImage:'/images/table_icons/arrow.png'},
	{title: "Senior Nutrition",hasChild:true, color:'white', backgroundColor:'transparent', font:{fontSize:'17sp', fontWeight:'bold'}, rightImage:'/images/table_icons/arrow.png'},
	{title: "Hearth Health",hasChild:true, color:'white', backgroundColor:'transparent', font:{fontSize:'17sp', fontWeight:'bold'}, rightImage:'/images/table_icons/arrow.png'},
	{title: "Corporate Wellness",hasChild:true, color:'white', backgroundColor:'transparent', font:{fontSize:'17sp', fontWeight:'bold'}, rightImage:'/images/table_icons/arrow.png'},
	{title: "Personal Wellness",hasChild:true, color:'white', backgroundColor:'transparent', font:{fontSize:'17sp', fontWeight:'bold'}, rightImage:'/images/table_icons/arrow.png'}];
	var checkOpen=[false,false,false];
var layout = [
		
	{
		title: "Programs",
		isparent: true,
		hasChild:true,
		font:{fontSize:'17sp', fontWeight:'bold'},
		rightImage:'/images/table_icons/arrow-black.png',
		backgroundColor:'white',
		color:'black',
		opened:false,
	},
	{
		title: "Education Tips",
		isparent: true,
		hasChild:true,
		font:{fontSize:'17sp', fontWeight:'bold'},
		rightImage:'/images/table_icons/arrow-black.png',
		backgroundColor:'white',
		color:'black',
		opened:false,
	},
	{
		title: "Healthy Hometown Champions",
		hasChild:true,
		isparent: true,
		font:{fontSize:'17sp', fontWeight:'bold'},
		rightImage:'/images/table_icons/arrow-black.png',
		backgroundColor:'white',
		color:'black',
		opened:false,
	},
];
var tableView = Ti.UI.createTableView({
	top: 0,
	height: 'auto',
	data: layout,
	backgroundColor:'transparent',
    rowBackgroundColor:'#FAFAFF',
    rowHeight:40,
	footerTitle:'',
});
var viewBack = Ti.UI.createView({
	height:0,
    width: 'auto',
    backgroundColor:'#14141F',
    opacity:0.8,
    top: 0,
    left: 0,
    zIndex:1,
  });

	
tableView.addEventListener("click", function(e) {
	var currentIndex = e.index;
	if(e.rowData.isparent) {
		
		var mainRow;
		//Is it opened?
		if(e.row.title=='Programs')
		{
			mainRow=0;
		} else if(e.row.title=='Education Tips')
		{
			mainRow=1;
		}
		else{
			mainRow=2;
		}
		if(checkOpen[mainRow]) {
			e.rowData.rightImage='/images/table_icons/arrow-black.png';
			deleteRow(tableView, currentIndex);
			checkOpen[mainRow] = false;
		}
				
		else {
			//Add teh children.
			e.rowData.rightImage='/images/table_icons/down-arrow.png';
			addRow(tableView, currentIndex);
			checkOpen[mainRow] = true;
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
		var total = 0;
		for(var k = 0; k < tableView.data.length; k++){
		    total = total + tableView.data[k].rowCount;
		}
		viewBack.height=tableView.rowHeight*total;
		add=0;
		i=0;
	return;
	}
	tableView.insertRowAfter(add, subData[i]);
	i++;
	add++;
	setTimeout(function(){addRow(tableView, currentIndex)}, 10);
};
var del=7;
var isFirst=true;
function deleteRow(tableView, currentIndex)
{
	if(isFirst){
		del=7+currentIndex;
		isFirst=false;
	}
	if(del==currentIndex)
	{
		var total = 0;
		for(var k = 0; k < tableView.data.length; k++){
		    total = total + tableView.data[k].rowCount;
		}
		viewBack.height=tableView.rowHeight*total;
		del=7;
		isFirst=true;
		return;
	}
	tableView.deleteRow(del);
	del--;
	setTimeout(function(){deleteRow(tableView, currentIndex)}, 10);
	

};
container.add(tableView);
    	
    	view.add(viewBack);
		view.add(container);
		win.add(ui.topBarLink('Know of a food business missing from this app?'));
		return view;
    } 
  }   
  return page;    
};

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();


