/**
* Healthy Hometown
* Author: FoodCare Inc. Copyright 2013. All Rights Reserved
*/

(function() {
   
function createPage(S) {
  var cfg = S.Cfg;
     
  var page = {
    name: 'eventlist', 
    title: 'Events List',
    
    createView: function(win, events) {
    	
    	
    	var view = Ti.UI.createScrollView({
	    contentHeight: 'auto',
	    contentWidth: 'auto',
	    showVerticalScrollIndicator:true,
	    showHorizontalScrollIndicator:true,
	    backgroundImage:'/images/bg/city.png',
	    top: 0,
          left: 0,
          layout:'vertical'
	  });
      
    var title = Titanium.UI.createLabel({
		id:'title',
		text:events.name,
		font:{fontWeight:'bold', fontSize:'17sp'},
		top:0,
		textAlign: 'left',
		height:'auto',
		textAlign:'center'
	});
      var description = Titanium.UI.createLabel({
		id:'description',
		text:events.description,
		top:10,
		textAlign: 'left',
		font:{fontSize:'14sp'},
		height:'auto',
		textAlign:'center'
	});
	var timings = Titanium.UI.createLabel({
		id:'timings',
		text:events.link,
		top:10,
		textAlign: 'left',
		font:{fontSize:'14sp'},
		height:'auto',
		textAlign:'center',
		color: 'blue'
	});
	
	var address=Titanium.UI.createLabel({
		id:'address',
		text:events.link,
		top:10,
		textAlign: 'left',
		font:{fontSize:'14sp'},
		height:'auto',
		textAlign:'center',
		color: 'blue'
	});
	
	

	view.add(title);
	view.add(description);
	view.add(timings);
	
      return view;    
    }
  }  
  return page;   
}

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();
