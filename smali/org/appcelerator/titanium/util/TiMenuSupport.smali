.class public Lorg/appcelerator/titanium/util/TiMenuSupport;
.super Ljava/lang/Object;
.source "TiMenuSupport.java"


# instance fields
.field protected activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

.field protected menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .parameter "activityProxy"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 27
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->release()V

    .line 95
    iput-object v1, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    .line 97
    :cond_0
    iput-object v1, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(ZLandroid/view/Menu;)Z
    .locals 6
    .parameter "created"
    .parameter "menu"

    .prologue
    .line 31
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v4, "onCreateOptionsMenu"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollFunction;

    .line 32
    .local v1, onCreate:Lorg/appcelerator/kroll/KrollFunction;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v4, "onPrepareOptionsMenu"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .line 33
    .local v2, onPrepare:Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v1, :cond_1

    .line 34
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 35
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    if-eqz v3, :cond_4

    .line 36
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v3, p2}, Lorg/appcelerator/titanium/proxy/MenuProxy;->setMenu(Landroid/view/Menu;)V

    .line 42
    :cond_0
    :goto_0
    const-string v3, "menu"

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .end local v0           #event:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 48
    :cond_2
    const/4 p1, 0x1

    .line 50
    :cond_3
    return p1

    .line 40
    .restart local v0       #event:Lorg/appcelerator/kroll/KrollDict;
    :cond_4
    new-instance v3, Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-direct {v3, p2}, Lorg/appcelerator/titanium/proxy/MenuProxy;-><init>(Landroid/view/Menu;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v2, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v0

    .line 65
    .local v0, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "click"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 67
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(ZLandroid/view/Menu;)Z
    .locals 5
    .parameter "prepared"
    .parameter "menu"

    .prologue
    .line 74
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "onPrepareOptionsMenu"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollFunction;

    .line 75
    .local v1, onPrepare:Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v1, :cond_1

    .line 76
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 77
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v2, p2}, Lorg/appcelerator/titanium/proxy/MenuProxy;->setMenu(Landroid/view/Menu;)V

    .line 84
    :cond_0
    :goto_0
    const-string v2, "menu"

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v0           #event:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    const/4 p1, 0x1

    .line 88
    return p1

    .line 82
    .restart local v0       #event:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    new-instance v2, Lorg/appcelerator/titanium/proxy/MenuProxy;

    invoke-direct {v2, p2}, Lorg/appcelerator/titanium/proxy/MenuProxy;-><init>(Landroid/view/Menu;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiMenuSupport;->menuProxy:Lorg/appcelerator/titanium/proxy/MenuProxy;

    goto :goto_0
.end method
