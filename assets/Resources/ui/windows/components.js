var UI;
function Component(S) {
   UI=S.ui;
}; 
exports.Window = function(S, page) {
	if(page.name=='welcome')
	{
		window = Ti.UI.createWindow({
			fullscreen :false,
		    navBarHidden:true,
		});
		return window;
	}

	window = Ti.UI.createWindow({
		fullscreen :false,
	    navBarHidden:true,
	});
	
	var topBar = Titanium.UI.createView({
         height:'10%',
         backgroundImage:'/images/topbar/home-bar-bg.png',
         left:'0',
		 width:(Ti.Platform.displayCaps.platformWidth),
         top:'0',
         //layout:'horizontal',
         zIndex:2,
     });
	 
     var logo=Ti.UI.createImageView({
		image:'/images/topbar/logo-1.png',
		//width:'100%',
		height:'100%',
		//left: (Ti.Platform.displayCaps.platformWidth) / 2,
	});
	
	var menuImage=Ti.UI.createImageView({
		image:'/images/topbar/menu_icon.png',
		right: '5%',
		height:'100%',
	});
	
	var homeImage=Ti.UI.createImageView({
		image:'/images/topbar/home_icon.png',
		left: '5%',
		height:'100%',
	});

	menuImage.addEventListener('click', function(e) {
		S.UI.loader.show();
         S.UI.navigate('cabinet');
     });

	 homeImage.addEventListener('click', function(e) {
		S.UI.loader.show();
		S.UI.navigate('home');
	});
	
	topBar.add(homeImage);
	topBar.add(logo);
	topBar.add(menuImage);
	window.add(topBar);
	return window;
};