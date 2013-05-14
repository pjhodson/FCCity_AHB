.class public abstract Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIAbstractTab.java"


# instance fields
.field private contentView:Lti/modules/titanium/ui/TabContentViewProxy;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 26
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TabProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 27
    return-void
.end method

.method private getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, windowProxy:Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 81
    .end local v0           #windowProxy:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #windowProxy:Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 5

    .prologue
    .line 42
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    if-nez v3, :cond_2

    .line 43
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v2

    .line 44
    .local v2, windowProxy:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    if-nez v2, :cond_0

    .line 46
    new-instance v0, Landroid/view/View;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, emptyContent:Landroid/view/View;
    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    .end local v0           #emptyContent:Landroid/view/View;
    .end local v2           #windowProxy:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :goto_0
    return-object v0

    .line 51
    .restart local v2       #windowProxy:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_0
    new-instance v3, Lti/modules/titanium/ui/TabContentViewProxy;

    invoke-direct {v3}, Lti/modules/titanium/ui/TabContentViewProxy;-><init>()V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    .line 56
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v3, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/TabProxy;->getTabGroup()Lti/modules/titanium/ui/TabGroupProxy;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/TabGroupProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 57
    .local v1, tabGroupActivity:Landroid/app/Activity;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    invoke-virtual {v3, v1}, Lti/modules/titanium/ui/TabContentViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 60
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/TabContentViewProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollObject;->setProxySupport(Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 62
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/TabContentViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 65
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/TabContentViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 66
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/TabContentViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    .line 69
    :cond_1
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollObject;->setWindow(Ljava/lang/Object;)V

    .line 72
    .end local v1           #tabGroupActivity:Landroid/app/Activity;
    .end local v2           #windowProxy:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->contentView:Lti/modules/titanium/ui/TabContentViewProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/TabContentViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onSelectionChange(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 34
    return-void
.end method
