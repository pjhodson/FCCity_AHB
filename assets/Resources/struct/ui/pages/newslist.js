/**
* Healthy Hometown
* Author: FoodCare Inc. Copyright 2013. All Rights Reserved
*/

(function() {
   
function createPage(S) {
  var cfg = S.Cfg;
     
  var page = {
    name: 'newslist', 
    title: 'News List',
    
    createView: function(win, news) {
    	
    	
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
		text:news.title,
		font:{fontWeight:'bold', fontSize:'17sp'},
		top:0,
		textAlign: 'left',
		height:'auto',
		textAlign:'center'
	});
      var description = Titanium.UI.createLabel({
		id:'description',
		text:news.description,
		top:10,
		textAlign: 'left',
		font:{fontSize:'14sp'},
		height:'auto',
		textAlign:'center'
	});
	var link = Titanium.UI.createLabel({
		id:'link',
		text:news.link,
		top:10,
		textAlign: 'left',
		font:{fontSize:'14sp'},
		height:'auto',
		textAlign:'center',
		color: 'blue'
	});
	
	link.addEventListener('click', function(e)
	{
		var w = Titanium.UI.createWindow({
          title:news.title,
          barColor: S.Cfg.barColor, 
        });
        
        w.add(Ti.UI.createWebView({url:  news.link}));

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
	});

	view.add(title);
	view.add(description);
	view.add(link);
	
      return view;    
    }
  }  
  return page;   
}

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();
