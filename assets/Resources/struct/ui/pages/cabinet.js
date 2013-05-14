/**
* Healthy Hometown
* Author: FoodCare Inc. Copyright 2013. All Rights Reserved
*/

(function() {

function createPage(S) {
  var ui = S.UI;
  var L =  S.Log;
  var cfg = S.Cfg;
  
  function signOutAlert() {
    S.Log.trace('+cabinet signout');
    
    var alert = Ti.UI.createAlertDialog({title:'Healthy Hometown', message:'Are you sure you want to sign out?', buttonNames:['Sign Out', 'Cancel']});    
    alert.addEventListener('click', function(e) {
      S.Log.print("+cabinet signout ok"); 
      if (e.index === 0) {
        S.UI.signout();
      }
    });   
    alert.show();       
  }
  
  function conditionLoad() {
    S.UI.openCondition();
  }
  
  function loading() {
    S.UI.loader.show();
    setTimeout(S.UI.loader.hide, 5000);
  }

  var page = {
    name: 'cabinet', 
    title: 'My Profile',
    useBackButton: true,
    useTopBar: 'Know a food business missing from this app?',
      
    createView: function(win) {
      
      var views = S.UI.createBGTableView('/images/bg/city.png', function(e) {
        S.Log.trace('+cabinet click');
        if (e.rowData.page) {
            S.Log.print(e.rowData.page);
          S.UI.navigate(e.rowData.page);
        }
        
        if (e.rowData.func) {
          S.Log.print('Cabinet Call');
          e.rowData.func();         
        }       
      });
      
    var dataList = [
       {title: 'About Healthy Hometown', hasChild:true, page: 'about', description:'Powered By Foodcare', leftImage:'/images/table_icons/about-icon.png'},    
       {title: 'My Profile', hasChild:true, page: 'profile', description:'Edit your health condition and account settings', leftImage:'/images/table_icons/profile-icon.png'},
       {title: 'FAQs', hasChild:true, page: 'faq', description:'Browse FAQ\'s and get support', leftImage:'/images/table_icons/faq-icon.png'},
       {title: 'Sign Out', hasChild:true, func: signOutAlert, description:'', leftImage:'/images/table_icons/sign-out-icon.png'},          
      ];
     var tableData=[];
     for(var i=0;i<dataList.length; i++)
     {
     	tableData.push(this.buildRow(dataList[i]));
     }
     views.tableView.setData(tableData);
      
      if (Ti.App.Util.isAndroid()) {
        // views.tableView.backgroundColor = 'black';
        views.tableView.height =  '296dp';
      }
	  win.add(ui.topBarLink('Know of a food business missing from this app?'));
      return views.mainView;
    
    },
    buildRow: function(lab, rowData) {

        var description = lab.description; // Description of Rest';
                
        if (Ti.App.Util.isAndroid()) {
          height = 'auto';
        } else {
          height = '60dp';
        }
        
        var rowView = Titanium.UI.createView({
          height: height,
          width: '100%',
          top: 0,
          left: 0,
        });
        
        var header = lab.title;

        rowView.add(
          Titanium.UI.createLabel({
            text: header,
            font: { fontSize: '17sp', fontWeight:'bold'},
            width: 'auto',
            textAlign: 'left',
			 top: '10dp',
            left: '35dp',
            color: 'white',
          }));
        
        rowView.add(  
          Titanium.UI.createLabel({
            text: description,
            font: { fontSize: '11sp' },
            width: 'auto',
            textAlign: 'left',
            top: '30dp',
            left: '35dp',
            color: 'white',
          }));
          
        return S.UI.createTableViewRow({leftImage:lab.leftImage, page:lab.page, func:lab.func, hasChild:lab.hasChild, opacity:'0.5'}, rowView);
    },
  }   
  return page;
};

exports.createViewContainer = createPage;
exports.createPage = createPage;

})();

