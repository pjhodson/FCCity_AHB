.class public Lti/modules/titanium/ui/TiUIActivityWindow;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIActivityWindow.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiActivityWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/TiUIActivityWindow$MessageHandler;
    }
.end annotation


# static fields
.field private static final MSG_ACTIVITY_CREATED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TiUIActivityWindow"

.field private static final WINDOW_ID_PREFIX:Ljava/lang/String; = "window$"

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected activityKey:Ljava/lang/String;

.field protected animate:Z

.field protected handler:Landroid/os/Handler;

.field protected lastHeight:I

.field protected lastWidth:I

.field protected messageId:I

.field protected messenger:Landroid/os/Messenger;

.field protected windowActivity:Landroid/app/Activity;

.field protected windowId:I

.field protected windowUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/kroll/KrollDict;Landroid/os/Messenger;I)V
    .locals 4
    .parameter "proxy"
    .parameter "options"
    .parameter "messenger"
    .parameter "messageId"

    .prologue
    const/4 v3, -0x1

    .line 66
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->animate:Z

    .line 69
    sget-object v0, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    :cond_0
    iput-object p3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    .line 74
    iput p4, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messageId:I

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lti/modules/titanium/ui/TiUIActivityWindow$MessageHandler;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/TiUIActivityWindow$MessageHandler;-><init>(Lti/modules/titanium/ui/TiUIActivityWindow;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->handler:Landroid/os/Handler;

    .line 76
    iput v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastWidth:I

    .line 77
    iput v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastHeight:I

    .line 79
    invoke-static {p0}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowId:I

    .line 80
    invoke-virtual {p0, p2}, Lti/modules/titanium/ui/TiUIActivityWindow;->createNewActivity(Ljava/util/HashMap;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 2
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;-><init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Messenger;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Messenger;I)V
    .locals 4
    .parameter "proxy"
    .parameter "activity"
    .parameter "messenger"
    .parameter "messageId"

    .prologue
    const/4 v3, -0x1

    .line 90
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 91
    iput-object p2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 93
    sget-object v0, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    :cond_0
    iput-object p3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    .line 98
    iput p4, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messageId:I

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lti/modules/titanium/ui/TiUIActivityWindow$MessageHandler;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/TiUIActivityWindow$MessageHandler;-><init>(Lti/modules/titanium/ui/TiUIActivityWindow;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->handler:Landroid/os/Handler;

    .line 100
    iput v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastWidth:I

    .line 101
    iput v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastHeight:I

    .line 103
    invoke-virtual {p1, p2}, Lti/modules/titanium/ui/ActivityWindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 104
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 105
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBooted()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/TiUIActivityWindow;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/TiUIActivityWindow;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private handleActivityBackgroundDrawable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 6
    .parameter "bgColor"
    .parameter "bgImage"
    .parameter "opacityValue"
    .parameter "tile"
    .parameter "post"

    .prologue
    const/4 v5, 0x0

    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, colorString:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 366
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 369
    :cond_0
    const/4 v2, 0x0

    .line 370
    .local v2, path:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 371
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    :cond_1
    invoke-static {v1, v2, p4, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    .local v0, bd:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, p3, p5}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBackground(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V

    .line 376
    return-void
.end method

.method private handleBackground(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "drawable"
    .parameter "opacityValue"
    .parameter "post"

    .prologue
    .line 332
    if-eqz p1, :cond_1

    .line 333
    const/high16 v1, 0x3f80

    .line 335
    .local v1, opacity:F
    if-eqz p2, :cond_0

    .line 337
    :try_start_0
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lti/modules/titanium/ui/TiUIActivityWindow;->setActivityOpacity(Landroid/graphics/drawable/Drawable;FZ)V

    .line 344
    invoke-virtual {p0, p1, p3}, Lti/modules/titanium/ui/TiUIActivityWindow;->setActivityBackground(Landroid/graphics/drawable/Drawable;Z)V

    .line 346
    .end local v1           #opacity:F
    :cond_1
    return-void

    .line 338
    .restart local v1       #opacity:F
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/NumberFormatException;
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method private setActivityOpacity(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2
    .parameter "background"
    .parameter "opacity"
    .parameter "firstTime"

    .prologue
    .line 350
    const/high16 v1, 0x437f

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 351
    .local v0, alpha:I
    const/16 v1, 0xfe

    if-le v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 352
    const/16 v0, 0xfe

    .line 358
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 359
    return-void

    .line 354
    :cond_1
    if-gez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bindProxies()V
    .locals 4

    .prologue
    .line 176
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    instance-of v3, v3, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v3, :cond_1

    .line 177
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 178
    .local v1, tiActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 180
    .local v2, windowProxy:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v0

    .line 181
    .local v0, activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    if-nez v0, :cond_0

    .line 182
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 185
    :cond_0
    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 187
    .end local v0           #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .end local v1           #tiActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    .end local v2           #windowProxy:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_1
    return-void
.end method

.method protected bindWindowActivity(Landroid/app/Activity;)Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 3
    .parameter "activity"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    const-string v1, "TiUIActivityWindow"

    const-string v2, "we shouldnt be getting in here to bindWindowActivity!!!"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v0
.end method

.method public close(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-boolean v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->animate:Z

    .line 227
    .local v0, animateOnClose:Z
    const/4 v1, 0x0

    .line 228
    .local v1, animated:Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 229
    const-string v2, "animated"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 232
    .end local v1           #animated:Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    .line 233
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 237
    if-nez v0, :cond_3

    .line 238
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 239
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 246
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/appcelerator/titanium/TiApplication;->removeFromActivityStack(Landroid/app/Activity;)V

    .line 247
    const/4 v2, 0x0

    iput-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 249
    :cond_2
    return-void

    .line 242
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected createIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 17
    .parameter "activity"

    .prologue
    .line 557
    new-instance v4, Landroid/content/Intent;

    const-class v15, Lorg/appcelerator/titanium/TiActivity;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "fullscreen"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 560
    .local v3, fullscreen:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 561
    const-string v15, "fullscreen"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 564
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "navBarHidden"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 565
    .local v10, navBarHidden:Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 566
    const-string v15, "navBarHidden"

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 569
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "modal"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 570
    .local v9, modalProperty:Ljava/lang/Object;
    const/4 v8, 0x0

    .line 572
    .local v8, modal:Z
    if-eqz v9, :cond_2

    .line 573
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v8

    .line 574
    const-string v15, "modal"

    invoke-virtual {v4, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    if-eqz v8, :cond_2

    .line 577
    const-class v15, Lorg/appcelerator/titanium/TiModalActivity;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 581
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "opacity"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 582
    .local v11, opacity:Ljava/lang/Object;
    if-eqz v11, :cond_3

    if-nez v8, :cond_3

    .line 583
    const-class v15, Lorg/appcelerator/titanium/TiTranslucentActivity;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 586
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "url"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 587
    .local v13, url:Ljava/lang/Object;
    if-eqz v13, :cond_4

    .line 588
    const-string v15, "url"

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "keepScreenOn"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 592
    .local v5, keepScreenOn:Ljava/lang/Object;
    if-eqz v5, :cond_5

    .line 593
    const-string v15, "keepScreenOn"

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "layout"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 597
    .local v6, layout:Ljava/lang/Object;
    if-eqz v6, :cond_6

    .line 598
    const-string v15, "layout"

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "windowSoftInputMode"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 602
    .local v14, windowSoftInputMode:Ljava/lang/Object;
    if-eqz v14, :cond_7

    .line 603
    const-string v15, "windowSoftInputMode"

    invoke-static {v14}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "windowPixelFormat"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 607
    .local v12, pixelFormat:Ljava/lang/Object;
    if-eqz v12, :cond_8

    .line 608
    const-string v15, "windowPixelFormat"

    invoke-static {v12}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 611
    :cond_8
    const/4 v2, 0x0

    .line 612
    .local v2, finishRoot:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v16, "exitOnClose"

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 614
    .local v1, exitOnClose:Ljava/lang/Object;
    if-eqz v1, :cond_9

    .line 615
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 618
    :cond_9
    const-string v15, "finishRoot"

    invoke-virtual {v4, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    new-instance v7, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->handler:Landroid/os/Handler;

    invoke-direct {v7, v15}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 621
    .local v7, messenger:Landroid/os/Messenger;
    const-string v15, "messenger"

    invoke-virtual {v4, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 623
    const-string v15, "msgActivityCreatedId"

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v15, "useActivityWindow"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    const-string v15, "windowId"

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    return-object v4
.end method

.method protected createNewActivity(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, options:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 110
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 111
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TiUIActivityWindow;->createIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v4

    .line 113
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "animated"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, animated:Ljava/lang/Object;
    const-string v5, "activityEnterAnimation"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, enterAnim:Ljava/lang/Object;
    const-string v5, "activityExitAnimation"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, exitAnim:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 118
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->animate:Z

    .line 121
    :cond_0
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->animate:Z

    if-nez v5, :cond_1

    .line 122
    const/high16 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const-string v5, "animate"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {v0, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_1
    if-eqz v2, :cond_2

    .line 129
    const-string v5, "enterAnimation"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    :cond_2
    if-eqz v3, :cond_3

    .line 133
    const-string v5, "exitAnimation"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 300
    .local v0, tia:Lorg/appcelerator/titanium/TiBaseActivity;
    if-nez v0, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 304
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getLayout()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected getLayoutArrangement()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .locals 5

    .prologue
    .line 539
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 541
    .local v0, arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "layout"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 542
    .local v1, layout:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 543
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, layoutString:Ljava/lang/String;
    const-string v3, "vertical"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 552
    .end local v2           #layoutString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 547
    .restart local v2       #layoutString:Ljava/lang/String;
    :cond_1
    const-string v3, "horizontal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->getLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected handleBooted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lti/modules/titanium/ui/TiUIActivityWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->activityKey:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, layout:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 195
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;->registerForTouch(Landroid/view/View;)V

    .line 197
    new-instance v3, Lti/modules/titanium/ui/TiUIActivityWindow$1;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/TiUIActivityWindow$1;-><init>(Lti/modules/titanium/ui/TiUIActivityWindow;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 203
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 204
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 205
    .local v2, msg:Landroid/os/Message;
    iget v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messageId:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 208
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    iput-object v6, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    .line 218
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    instance-of v3, v3, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 221
    :cond_1
    return-void

    .line 210
    .restart local v2       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "TiUIActivityWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    iput-object v6, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iput-object v6, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    throw v3
.end method

.method protected handleWindowPixelFormat(I)V
    .locals 2
    .parameter "format"

    .prologue
    .line 528
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 530
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    const-string v0, "TiUIActivityWindow"

    const-string v1, "Activity is null. windowPixelFormat not set."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 11
    .parameter "d"

    .prologue
    .line 383
    const-string v0, "backgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    :cond_0
    const/4 v4, 0x0

    .line 385
    .local v4, tile:Z
    const-string v0, "backgroundRepeat"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    const-string v0, "backgroundRepeat"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    .line 388
    :cond_1
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v0, "backgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleActivityBackgroundDrawable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    .line 391
    const-string v0, "backgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v0, "backgroundRepeat"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .end local v4           #tile:Z
    :cond_2
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    const-string v0, "title"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 399
    .local v10, title:Ljava/lang/String;
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 400
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 407
    .end local v10           #title:Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    instance-of v0, v0, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v0, :cond_4

    .line 409
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v0, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiActivity;->getLayout()Landroid/view/View;

    move-result-object v8

    .line 410
    .local v8, layout:Landroid/view/View;
    instance-of v0, v8, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v0, :cond_4

    .line 411
    check-cast v8, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .end local v8           #layout:Landroid/view/View;
    const-string v0, "layout"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 416
    :cond_4
    const-string v0, "keepScreenOn"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 417
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 418
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "keepScreenOn"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 421
    :cond_5
    const-string v0, "keepScreenOn"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_6
    const-string v0, "windowPixelFormat"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 425
    const-string v0, "windowPixelFormat"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleWindowPixelFormat(I)V

    .line 428
    :cond_7
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 429
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 430
    .local v6, activityObject:Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v7

    .line 431
    .local v7, activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    instance-of v0, v6, Ljava/util/HashMap;

    if-eqz v0, :cond_8

    if-eqz v7, :cond_8

    .line 433
    new-instance v9, Lorg/appcelerator/kroll/KrollDict;

    check-cast v6, Ljava/util/HashMap;

    .end local v6           #activityObject:Ljava/lang/Object;
    invoke-direct {v9, v6}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 434
    .local v9, options:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v7, v9}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 438
    .end local v7           #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .end local v9           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_8
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 439
    return-void

    .line 403
    .restart local v10       #title:Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 13
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 444
    const-string v1, "backgroundImage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    const/4 v5, 0x0

    .line 446
    .local v5, tile:Z
    const-string v1, "backgroundRepeat"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 447
    .local v9, prop:Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 448
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 450
    :cond_0
    const-string v1, "backgroundColor"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v1, "opacity"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleActivityBackgroundDrawable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    .line 524
    .end local v5           #tile:Z
    .end local v9           #prop:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    const/4 v5, 0x0

    .line 454
    .restart local v5       #tile:Z
    const-string v1, "backgroundRepeat"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 455
    .restart local v9       #prop:Ljava/lang/Object;
    if-eqz v9, :cond_3

    .line 456
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 458
    :cond_3
    const-string v1, "backgroundImage"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v1, "opacity"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleActivityBackgroundDrawable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 460
    .end local v5           #tile:Z
    .end local v9           #prop:Ljava/lang/Object;
    :cond_4
    const-string v1, "backgroundRepeat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 461
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 462
    .restart local v5       #tile:Z
    const-string v1, "backgroundColor"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v1, "backgroundImage"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v1, "opacity"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleActivityBackgroundDrawable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 464
    .end local v5           #tile:Z
    :cond_5
    const-string v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 465
    :cond_6
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 466
    .local v11, w:Landroid/view/Window;
    iget v12, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastWidth:I

    .line 467
    .local v12, width:I
    iget v7, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastHeight:I

    .line 469
    .local v7, height:I
    const-string v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 470
    if-eqz p3, :cond_9

    .line 471
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v12

    .line 478
    :cond_7
    :goto_1
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 479
    if-eqz p3, :cond_a

    .line 480
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v7

    .line 487
    :cond_8
    :goto_2
    invoke-virtual {v11, v12, v7}, Landroid/view/Window;->setLayout(II)V

    .line 489
    iput v12, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastWidth:I

    .line 490
    iput v7, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->lastHeight:I

    goto/16 :goto_0

    .line 474
    :cond_9
    const/4 v12, -0x1

    goto :goto_1

    .line 483
    :cond_a
    const/4 v7, -0x1

    goto :goto_2

    .line 492
    .end local v7           #height:I
    .end local v11           #w:Landroid/view/Window;
    .end local v12           #width:I
    :cond_b
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 493
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 495
    .local v10, title:Ljava/lang/String;
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 496
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v1, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 499
    :cond_c
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 502
    .end local v10           #title:Ljava/lang/String;
    :cond_d
    const-string v1, "layout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 503
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    instance-of v1, v1, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    check-cast v1, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiActivity;->getLayout()Landroid/view/View;

    move-result-object v8

    .line 505
    .local v8, layout:Landroid/view/View;
    instance-of v1, v8, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v1, :cond_1

    .line 506
    check-cast v8, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .end local v8           #layout:Landroid/view/View;
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    :cond_e
    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 511
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;->setOpacity(F)V

    goto/16 :goto_0

    .line 513
    :cond_f
    const-string v1, "keepScreenOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 514
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    .line 518
    :cond_10
    const-string v1, "windowPixelFormat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 519
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleWindowPixelFormat(I)V

    goto/16 :goto_0

    .line 522
    :cond_11
    invoke-super/range {p0 .. p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 641
    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->messenger:Landroid/os/Messenger;

    .line 642
    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->handler:Landroid/os/Handler;

    .line 643
    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 644
    return-void
.end method

.method protected setActivityBackground(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "drawable"
    .parameter "post"

    .prologue
    .line 309
    if-eqz p2, :cond_0

    .line 310
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/TiUIActivityWindow$2;

    invoke-direct {v1, p0, p1}, Lti/modules/titanium/ui/TiUIActivityWindow$2;-><init>(Lti/modules/titanium/ui/TiUIActivityWindow;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOpacity(F)V
    .locals 2
    .parameter "opacity"

    .prologue
    .line 633
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lti/modules/titanium/ui/TiUIActivityWindow;->setActivityOpacity(Landroid/graphics/drawable/Drawable;FZ)V

    .line 634
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 635
    return-void
.end method

.method public windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 145
    iput-object p1, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 146
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 147
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIActivityWindow;->bindProxies()V

    .line 148
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "windowCreated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 149
    return-void
.end method
