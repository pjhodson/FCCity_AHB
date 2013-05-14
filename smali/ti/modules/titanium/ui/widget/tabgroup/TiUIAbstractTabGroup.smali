.class public abstract Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIAbstractTabGroup.java"


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 0
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract addTab(Lti/modules/titanium/ui/TabProxy;)V
.end method

.method public abstract getSelectedTab()Lti/modules/titanium/ui/TabProxy;
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 57
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, activityObject:Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 60
    .local v1, activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 62
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    check-cast v0, Ljava/util/HashMap;

    .end local v0           #activityObject:Ljava/lang/Object;
    invoke-direct {v2, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 63
    .local v2, options:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    .end local v1           #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .end local v2           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 68
    return-void
.end method

.method public abstract removeTab(Lti/modules/titanium/ui/TabProxy;)V
.end method

.method public abstract selectTab(Lti/modules/titanium/ui/TabProxy;)V
.end method
