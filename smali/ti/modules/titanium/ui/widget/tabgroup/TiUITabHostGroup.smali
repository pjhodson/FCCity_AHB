.class public Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;
.super Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
.source "TiUITabHostGroup.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUITabHostGroup"


# instance fields
.field private tabHost:Landroid/widget/TabHost;

.field private final tabViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 3
    .parameter "proxy"
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;-><init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabViews:Ljava/util/HashMap;

    .line 55
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->setupTabHost()V

    .line 57
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 58
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 59
    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 61
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBaseActivity;->getLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private setupTabHost()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 65
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    .local v1, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/TabHost;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    .line 69
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    const v6, 0x1020012

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setId(I)V

    .line 70
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v2}, Landroid/widget/TabHost;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, container:Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 76
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v0, v2}, Landroid/widget/TabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v3, Landroid/widget/TabWidget;

    invoke-direct {v3, v1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 79
    .local v3, tabWidget:Landroid/widget/TabWidget;
    const v5, 0x1020013

    invoke-virtual {v3, v5}, Landroid/widget/TabWidget;->setId(I)V

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 81
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x2

    invoke-direct {v2, v7, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v4, tabcontent:Landroid/widget/FrameLayout;
    const v5, 0x1020011

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 86
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 87
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    .line 93
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->setNativeView(Landroid/view/View;)V

    .line 94
    return-void
.end method


# virtual methods
.method public addTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 6
    .parameter "tab"

    .prologue
    .line 98
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    .line 100
    .local v3, tabWidget:Landroid/widget/TabWidget;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 102
    .local v0, tabIndex:I
    new-instance v2, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;

    invoke-direct {v2, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;-><init>(Lti/modules/titanium/ui/TabProxy;)V

    .line 103
    .local v2, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabViews:Ljava/util/HashMap;

    iget-object v5, v2, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    iget-object v5, v2, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 106
    .local v1, tabSpec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v2, v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->setupTabSpec(Landroid/widget/TabHost$TabSpec;)V

    .line 107
    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 108
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 110
    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->setIndicatorView(Landroid/view/View;)V

    .line 116
    if-nez v0, :cond_0

    .line 117
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 120
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;

    invoke-direct {v5, p0, v0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;-><init>(Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;ILti/modules/titanium/ui/TabProxy;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "tag"

    .prologue
    .line 162
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;

    .line 163
    .local v0, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->getContentView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedTab()Lti/modules/titanium/ui/TabProxy;
    .locals 3

    .prologue
    .line 147
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabViews:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;

    .line 149
    .local v1, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    return-object v2
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 188
    if-eqz p2, :cond_0

    .line 189
    new-instance v0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$2;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$2;-><init>(Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;Landroid/view/View;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 155
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/modules/titanium/ui/TabGroupProxy;

    .line 156
    .local v1, tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabViews:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;

    .line 157
    .local v0, tab:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TabGroupProxy;->onTabSelected(Lti/modules/titanium/ui/TabProxy;)V

    .line 158
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 168
    const-string v4, "tabsBackgroundColor"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, activeTab:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, color:I
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_0

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;

    invoke-virtual {v4, v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->setBackgroundColor(I)V

    goto :goto_0

    .line 181
    .end local v0           #activeTab:Ljava/lang/String;
    .end local v1           #color:I
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 183
    :cond_2
    return-void
.end method

.method public removeTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 136
    const-string v0, "TiUITabHostGroup"

    const-string v1, "Tab removal not supported by this group."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public selectTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 141
    invoke-virtual {p1}, Lti/modules/titanium/ui/TabProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;

    .line 142
    .local v0, tabView:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;

    iget-object v2, v0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 143
    return-void
.end method
