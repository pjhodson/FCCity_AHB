.class public Lti/modules/titanium/ui/widget/listview/ListItemProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ListItemProxy.java"


# instance fields
.field protected listProxy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    return-void
.end method

.method private fireItemClick(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "event"
    .parameter "data"

    .prologue
    .line 54
    const-string v3, "click"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 55
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    check-cast p2, Ljava/util/HashMap;

    .end local p2
    invoke-direct {v0, p2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 56
    .local v0, eventData:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "source"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    .local v2, source:Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->listProxy:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->listProxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 59
    .local v1, listViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_0

    .line 60
    const-string v3, "itemclick"

    invoke-virtual {v1, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 64
    .end local v0           #eventData:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #listViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2           #source:Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 30
    new-instance v0, Lti/modules/titanium/ui/widget/listview/TiListItem;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/listview/TiListItem;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 1
    .parameter "event"
    .parameter "data"
    .parameter "bubbles"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->fireItemClick(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public getListProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->listProxy:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->listProxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->release()V

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->listProxy:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->listProxy:Ljava/lang/ref/WeakReference;

    .line 72
    :cond_0
    return-void
.end method

.method public setListProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->listProxy:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method
