.class public Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;
.super Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
.source "TiUIActionBarTabGroup.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private activityPaused:Z

.field private selectedTabOnResume:Landroid/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 6
    .parameter "proxy"
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;-><init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V

    .line 36
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->activityPaused:Z

    .line 44
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 47
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/app/ActionBar;

    .line 48
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 49
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, tabContent:Landroid/widget/FrameLayout;
    const v2, 0x1020011

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 54
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 55
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 56
    iput-boolean v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 57
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBaseActivity;->getLayout()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->setNativeView(Landroid/view/View;)V

    .line 63
    return-void
.end method


# virtual methods
.method public addTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 3
    .parameter "tabProxy"

    .prologue
    .line 67
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 68
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 71
    new-instance v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    invoke-direct {v1, p1, v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;-><init>(Lti/modules/titanium/ui/TabProxy;Landroid/app/ActionBar$Tab;)V

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TabProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 75
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 76
    return-void
.end method

.method public getSelectedTab()Lti/modules/titanium/ui/TabProxy;
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 105
    .local v0, tab:Landroid/app/ActionBar$Tab;
    if-nez v0, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 112
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 112
    .local v1, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 170
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->activityPaused:Z

    .line 164
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->activityPaused:Z

    .line 155
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->selectedTabOnResume:Landroid/app/ActionBar$Tab;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->selectedTabOnResume:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->selectedTabOnResume:Landroid/app/ActionBar$Tab;

    .line 159
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 149
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 167
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 146
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 120
    .local v1, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    iget-object v2, v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->fragment:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->initializeFragment()V

    .line 124
    const v2, 0x1020011

    iget-object v3, v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->fragment:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    invoke-virtual {p2, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 131
    :goto_0
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .line 132
    .local v0, tabProxy:Lti/modules/titanium/ui/TabProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/TabGroupProxy;->onTabSelected(Lti/modules/titanium/ui/TabProxy;)V

    .line 133
    return-void

    .line 128
    .end local v0           #tabProxy:Lti/modules/titanium/ui/TabProxy;
    :cond_0
    iget-object v2, v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->fragment:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 141
    .local v0, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    iget-object v1, v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->fragment:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 142
    return-void
.end method

.method public removeTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 3
    .parameter "tabProxy"

    .prologue
    .line 80
    invoke-virtual {p1}, Lti/modules/titanium/ui/TabProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 81
    .local v0, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/app/ActionBar;

    iget-object v2, v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 82
    return-void
.end method

.method public selectTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 3
    .parameter "tabProxy"

    .prologue
    .line 86
    invoke-virtual {p1}, Lti/modules/titanium/ui/TabProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 87
    .local v0, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->activityPaused:Z

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/app/ActionBar$Tab;

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->selectedTabOnResume:Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/app/ActionBar;

    iget-object v2, v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method
