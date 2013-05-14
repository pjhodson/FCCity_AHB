.class public Lti/modules/titanium/ui/TabGroupProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TabGroupProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiActivityWindow;


# static fields
.field private static final MSG_ADD_TAB:I = 0x51f

.field private static final MSG_FIRST_ID:I = 0x4bb

.field private static final MSG_GET_ACTIVE_TAB:I = 0x522

.field protected static final MSG_LAST_ID:I = 0x8a2

.field private static final MSG_REMOVE_TAB:I = 0x520

.field private static final MSG_SET_ACTIVE_TAB:I = 0x521

.field private static final MSG_SET_TABS:I = 0x523

.field private static final TAG:Ljava/lang/String; = "TabGroupProxy"


# instance fields
.field private isFocused:Z

.field private selectedTab:Lti/modules/titanium/ui/TabProxy;

.field private tabGroupActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TabProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 66
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;-><init>()V

    .line 67
    return-void
.end method

.method private fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 451
    const-string v0, "fullscreen"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "fullscreen"

    const-string v1, "fullscreen"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    :cond_0
    const-string v0, "navBarHidden"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    const-string v0, "navBarHidden"

    const-string v1, "navBarHidden"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    :cond_1
    const-string v0, "windowSoftInputMode"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    const-string v0, "windowSoftInputMode"

    const-string v1, "windowSoftInputMode"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    :cond_2
    const-string v0, "exitOnClose"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    const-string v0, "finishRoot"

    const-string v1, "exitOnClose"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_3
    const-string v0, "finishRoot"

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleAddTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 142
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TabProxy;->setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 144
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;

    .line 147
    .local v0, tabGroup:Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->addTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 150
    :cond_0
    return-void
.end method

.method private handleGetActiveTab()Lti/modules/titanium/ui/TabProxy;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    .line 283
    :goto_0
    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 281
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSetTabs(Ljava/lang/Object;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 233
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 234
    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 235
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 236
    .local v3, objArray:[Ljava/lang/Object;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 237
    .local v4, tabProxy:Ljava/lang/Object;
    instance-of v5, v4, Lti/modules/titanium/ui/TabProxy;

    if-eqz v5, :cond_0

    .line 238
    check-cast v4, Lti/modules/titanium/ui/TabProxy;

    .end local v4           #tabProxy:Ljava/lang/Object;
    invoke-direct {p0, v4}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #objArray:[Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 129
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x51f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public closeFromActivity()V
    .locals 3

    .prologue
    .line 383
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 384
    .local v1, tab:Lti/modules/titanium/ui/TabProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->close()V

    goto :goto_0

    .line 389
    .end local v1           #tab:Lti/modules/titanium/ui/TabProxy;
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->closeFromActivity()V

    .line 390
    return-void
.end method

.method public getActiveTab()Lti/modules/titanium/ui/TabProxy;
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;->handleGetActiveTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    goto :goto_0
.end method

.method public getTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TabProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTabs()[Lti/modules/titanium/ui/TabProxy;
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, tps:[Lti/modules/titanium/ui/TabProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tps:[Lti/modules/titanium/ui/TabProxy;
    check-cast v0, [Lti/modules/titanium/ui/TabProxy;

    .line 116
    .restart local v0       #tps:[Lti/modules/titanium/ui/TabProxy;
    :cond_0
    return-object v0
.end method

.method protected getWindowActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 366
    const-string v1, "TabGroupProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClose: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 369
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->releaseViews()V

    .line 370
    iput-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 372
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->opened:Z

    .line 374
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 375
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 378
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 246
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 249
    const-string v3, "orientationModes"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 250
    .local v2, orientationModes:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 252
    :try_start_0
    check-cast v2, [Ljava/lang/Object;

    .end local v2           #orientationModes:Ljava/lang/Object;
    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toIntArray([Ljava/lang/Object;)[I

    move-result-object v1

    .line 253
    .local v1, modes:[I
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->setOrientationModes([I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1           #modes:[I
    :cond_0
    :goto_0
    const-string v3, "activeTab"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    const-string v3, "activeTab"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/TabGroupProxy;->setActiveTab(Ljava/lang/Object;)V

    .line 263
    :cond_1
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "TabGroupProxy"

    const-string v4, "Invalid orientationMode array. Must only contain orientation mode constants."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 74
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 75
    .local v0, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 76
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 77
    goto :goto_0

    .line 80
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 81
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 82
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 83
    goto :goto_0

    .line 86
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 87
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleSetActiveTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 88
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 89
    goto :goto_0

    .line 92
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 93
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;->handleGetActiveTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 94
    goto :goto_0

    .line 97
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 98
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleSetTabs(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 100
    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x51f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 290
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 291
    .local v1, topActivity:Landroid/app/Activity;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/appcelerator/titanium/TiActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v1, v0}, Lti/modules/titanium/ui/TabGroupProxy;->fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 294
    invoke-static {p0}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v2

    .line 295
    .local v2, windowId:I
    const-string v3, "useActivityWindow"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    const-string v3, "windowId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public handlePostOpen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 329
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handlePostOpen()V

    .line 331
    iput-boolean v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->opened:Z

    .line 334
    const-string v4, "open"

    invoke-virtual {p0, v4, v6}, Lti/modules/titanium/ui/TabGroupProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 337
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v3, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;

    .line 338
    .local v3, tg:Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    .line 339
    .local v2, tab:Lti/modules/titanium/ui/TabProxy;
    invoke-virtual {v3, v2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->addTab(Lti/modules/titanium/ui/TabProxy;)V

    goto :goto_0

    .line 342
    .end local v2           #tab:Lti/modules/titanium/ui/TabProxy;
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;->handleGetActiveTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v0

    .line 343
    .local v0, activeTab:Lti/modules/titanium/ui/TabProxy;
    if-eqz v0, :cond_1

    .line 344
    iput-object v6, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    .line 347
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->getSelectedTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 348
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->onTabSelected(Lti/modules/titanium/ui/TabProxy;)V

    .line 357
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->isFocused:Z

    .line 360
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->onWindowActivityCreated()V

    .line 361
    return-void

    .line 350
    :cond_2
    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->selectTab(Lti/modules/titanium/ui/TabProxy;)V

    goto :goto_1
.end method

.method public handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 165
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;

    .line 166
    .local v0, tabGroup:Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->removeTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 170
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method protected handleSetActiveTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 207
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;

    .line 208
    .local v0, tabGroup:Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->selectTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    goto :goto_0
.end method

.method public handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 472
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method public onTabSelected(Lti/modules/titanium/ui/TabProxy;)V
    .locals 8
    .parameter "tabProxy"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 422
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    .line 423
    .local v2, previousSelectedTab:Lti/modules/titanium/ui/TabProxy;
    iput-object p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    .line 427
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 428
    .local v1, focusEventData:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "source"

    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v3, "previousTab"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v3, "previousIndex"

    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v3, "tab"

    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v3, "index"

    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollDict;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 437
    .local v0, blurEventData:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "source"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v2, v6}, Lti/modules/titanium/ui/TabProxy;->onSelectionChanged(Z)V

    .line 443
    invoke-virtual {v2, v6, v0}, Lti/modules/titanium/ui/TabProxy;->onFocusChanged(ZLorg/appcelerator/kroll/KrollDict;)V

    .line 445
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v3, v7}, Lti/modules/titanium/ui/TabProxy;->onSelectionChanged(Z)V

    .line 446
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v3, v7, v1}, Lti/modules/titanium/ui/TabProxy;->onFocusChanged(ZLorg/appcelerator/kroll/KrollDict;)V

    .line 447
    return-void
.end method

.method public onWindowFocusChange(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 398
    iget-boolean v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->isFocused:Z

    if-ne v0, p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 401
    :cond_0
    iput-boolean p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->isFocused:Z

    .line 403
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    if-nez v0, :cond_1

    .line 405
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lti/modules/titanium/ui/TabProxy;->onFocusChanged(ZLorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    .line 478
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 479
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 480
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    monitor-enter v3

    .line 481
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 482
    .local v1, t:Lti/modules/titanium/ui/TabProxy;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TabProxy;->setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 483
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->releaseViews()V

    goto :goto_0

    .line 485
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lti/modules/titanium/ui/TabProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 154
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 161
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/TabProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 162
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x520

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setActiveTab(Ljava/lang/Object;)V
    .locals 4
    .parameter "tabOrIndex"

    .prologue
    .line 177
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 178
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 179
    .local v1, tabIndex:I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 180
    :cond_0
    const-string v2, "TabGroupProxy"

    const-string v3, "Invalid tab index."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1           #tabIndex:I
    :goto_0
    return-void

    .line 183
    .restart local v1       #tabIndex:I
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .line 197
    .end local v1           #tabIndex:I
    .local v0, tab:Lti/modules/titanium/ui/TabProxy;
    :cond_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 198
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->handleSetActiveTab(Lti/modules/titanium/ui/TabProxy;)V

    goto :goto_0

    .line 185
    .end local v0           #tab:Lti/modules/titanium/ui/TabProxy;
    .restart local p1
    :cond_3
    instance-of v2, p1, Lti/modules/titanium/ui/TabProxy;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 186
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .line 187
    .restart local v0       #tab:Lti/modules/titanium/ui/TabProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    const-string v2, "TabGroupProxy"

    const-string v3, "Cannot activate tab not in this group."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v0           #tab:Lti/modules/titanium/ui/TabProxy;
    :cond_4
    const-string v2, "TabGroupProxy"

    const-string v3, "No valid tab provided when setting active tab."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local p1
    .restart local v0       #tab:Lti/modules/titanium/ui/TabProxy;
    :cond_5
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x521

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOrientationModes([I)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 500
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    .line 501
    return-void
.end method

.method public setTabs(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 223
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleSetTabs(Ljava/lang/Object;)V

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 303
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    .line 304
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 305
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->setActivity(Landroid/app/Activity;)V

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;-><init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 316
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 318
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->handlePostOpen()V

    .line 323
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addWindowToStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 324
    return-void

    .line 313
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;-><init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    goto :goto_0
.end method
