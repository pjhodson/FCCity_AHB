.class public Lorg/appcelerator/titanium/proxy/MenuProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "MenuProxy.java"


# static fields
.field private static final MSG_ADD:I = 0x137

.field private static final MSG_CLEAR:I = 0x139

.field private static final MSG_CLOSE:I = 0x138

.field private static final MSG_FIRST_ID:I = 0xd3

.field protected static final MSG_LAST_ID:I = 0x4ba

.field private static final MSG_REMOVE_GROUP:I = 0x13a

.field private static final MSG_REMOVE_ITEM:I = 0x13b

.field private static final MSG_SET_GROUP_ENABLED:I = 0x13c

.field private static final MSG_SET_GROUP_VISIBLE:I = 0x13d

.field private static final TAG:Ljava/lang/String; = "MenuProxy"


# instance fields
.field protected menu:Landroid/view/Menu;

.field protected menuMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lorg/appcelerator/titanium/proxy/MenuItemProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    .line 50
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 4
    .parameter "d"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    move-object v2, v1

    .line 113
    :goto_0
    return-object v2

    .line 109
    :cond_0
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 110
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .end local p1
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    move-object p1, v0

    .line 113
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x137

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClear()V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClose()V

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public findItem(I)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 5
    .parameter "itemId"

    .prologue
    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v3, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 226
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 227
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 228
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object v2, v0

    .line 229
    monitor-exit v4

    .line 232
    :cond_0
    return-object v2

    .line 229
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "item"

    .prologue
    .line 249
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    monitor-exit v1

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 3
    .parameter "index"

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 241
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 242
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    check-cast v1, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 245
    .restart local v1       #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    return-object v1
.end method

.method public getItems()[Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 7

    .prologue
    .line 360
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v1

    .line 361
    .local v1, len:I
    new-array v4, v1, [Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 362
    .local v4, proxies:[Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 363
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 364
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 365
    .local v2, mi:Landroid/view/MenuItem;
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 366
    .local v3, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    aput-object v3, v4, v0

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v2           #mi:Landroid/view/MenuItem;
    .end local v3           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    monitor-exit v6

    .line 369
    return-object v4

    .line 368
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 12
    .parameter "d"

    .prologue
    .line 118
    const/4 v3, 0x0

    .line 120
    .local v3, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    const-string v6, ""

    .line 121
    .local v6, title:Ljava/lang/String;
    const/4 v2, 0x0

    .line 122
    .local v2, itemId:I
    const/4 v0, 0x0

    .line 123
    .local v0, groupId:I
    const/4 v5, 0x0

    .line 125
    .local v5, order:I
    const-string v10, "title"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 126
    const-string v10, "title"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_0
    const-string v10, "itemId"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 129
    const-string v10, "itemId"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    .line 131
    :cond_1
    const-string v10, "groupId"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 132
    const-string v10, "groupId"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 134
    :cond_2
    const-string v10, "order"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 135
    const-string v10, "order"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v5

    .line 138
    :cond_3
    iget-object v10, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v10, v0, v2, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 139
    .local v1, item:Landroid/view/MenuItem;
    new-instance v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .end local v3           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-direct {v3, v1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;-><init>(Landroid/view/MenuItem;)V

    .line 140
    .restart local v3       #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v11, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 141
    :try_start_0
    iget-object v10, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const-string v10, "actionView"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 146
    const-string v10, "actionView"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 147
    .local v9, viewProxy:Ljava/lang/Object;
    instance-of v10, v9, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v10, :cond_4

    move-object v10, v9

    .line 148
    check-cast v10, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v7

    .line 149
    .local v7, view:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v7, :cond_4

    .line 150
    invoke-virtual {v7}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v4

    .line 151
    .local v4, nativeView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 152
    .local v8, viewParent:Landroid/view/ViewGroup;
    if-eqz v8, :cond_c

    .line 153
    const-string v10, "MenuProxy"

    const-string v11, "View already has a parent. Can\'t add it as an action view"

    invoke-static {v10, v11}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v4           #nativeView:Landroid/view/View;
    .end local v7           #view:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v8           #viewParent:Landroid/view/ViewGroup;
    .end local v9           #viewProxy:Ljava/lang/Object;
    :cond_4
    :goto_0
    const-string v10, "checkable"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 161
    const-string v10, "checkable"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setCheckable(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 163
    :cond_5
    const-string v10, "checked"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 164
    const-string v10, "checked"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setChecked(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 166
    :cond_6
    const-string v10, "enabled"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 167
    const-string v10, "enabled"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setEnabled(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 169
    :cond_7
    const-string v10, "icon"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 170
    const-string v10, "icon"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setIcon(Ljava/lang/Object;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 172
    :cond_8
    const-string v10, "showAsAction"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 173
    const-string v10, "showAsAction"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setShowAsAction(I)V

    .line 175
    :cond_9
    const-string v10, "titleCondensed"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 176
    const-string v10, "titleCondensed"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setTitleCondensed(Ljava/lang/String;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 178
    :cond_a
    const-string v10, "visible"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 179
    const-string v10, "visible"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setVisible(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 181
    :cond_b
    return-object v3

    .line 142
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 155
    .restart local v4       #nativeView:Landroid/view/View;
    .restart local v7       #view:Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v8       #viewParent:Landroid/view/ViewGroup;
    .restart local v9       #viewProxy:Ljava/lang/Object;
    :cond_c
    invoke-virtual {v3, v9}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setActionView(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public handleClear()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 198
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 200
    monitor-exit v1

    .line 202
    :cond_0
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 219
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, result:Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 58
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 60
    :pswitch_0
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 61
    goto :goto_0

    .line 64
    :pswitch_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClose()V

    .line 65
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 66
    goto :goto_0

    .line 69
    :pswitch_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClear()V

    .line 70
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 71
    goto :goto_0

    .line 74
    :pswitch_3
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveGroup(I)V

    .line 75
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 76
    goto :goto_0

    .line 79
    :pswitch_4
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveItem(I)V

    .line 80
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 81
    goto :goto_0

    .line 84
    :pswitch_5
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupEnabled(Ljava/util/HashMap;)V

    .line 85
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 86
    goto :goto_0

    .line 89
    :pswitch_6
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupVisible(Ljava/util/HashMap;)V

    .line 90
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 91
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleRemoveGroup(I)V
    .locals 7
    .parameter "groupId"

    .prologue
    .line 272
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 273
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5, p1}, Landroid/view/Menu;->removeGroup(I)V

    .line 274
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 275
    .local v4, mm:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/MenuItem;Lorg/appcelerator/titanium/proxy/MenuItemProxy;>;"
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v1

    .line 276
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 277
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 278
    .local v2, mi:Landroid/view/MenuItem;
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 279
    .local v3, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v2           #mi:Landroid/view/MenuItem;
    .end local v3           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 282
    iput-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    .line 283
    monitor-exit v6

    .line 284
    return-void

    .line 283
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v4           #mm:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/MenuItem;Lorg/appcelerator/titanium/proxy/MenuItemProxy;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public handleRemoveItem(I)V
    .locals 4
    .parameter "itemId"

    .prologue
    .line 299
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 300
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 301
    .local v0, mi:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 302
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 303
    .local v1, mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    if-eqz v1, :cond_0

    .line 306
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 308
    .end local v1           #mip:Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_1
    monitor-exit v3

    .line 309
    return-void

    .line 308
    .end local v0           #mi:Landroid/view/MenuItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleSetGroupEnabled(Ljava/util/HashMap;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 331
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 332
    return-void
.end method

.method public handleSetGroupVisible(Ljava/util/HashMap;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 350
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "visible"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 351
    return-void
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 391
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 396
    return-void
.end method

.method public removeGroup(I)V
    .locals 2
    .parameter "groupId"

    .prologue
    .line 262
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveGroup(I)V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 289
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveItem(I)V

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0
    .parameter "groupId"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 313
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3
    .parameter "groupId"
    .parameter "enabled"

    .prologue
    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v0, args:Ljava/util/HashMap;
    const-string v1, "groupId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupEnabled(Ljava/util/HashMap;)V

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGroupVisible(IZ)V
    .locals 3
    .parameter "groupId"
    .parameter "visible"

    .prologue
    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, args:Ljava/util/HashMap;
    const-string v1, "groupId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "visible"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupVisible(Ljava/util/HashMap;)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 377
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eq v0, p1, :cond_0

    .line 378
    const-string v0, "MenuProxy"

    const-string v1, "A new menu has been set, cleaning up old menu first"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->release()V

    .line 381
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 382
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method
