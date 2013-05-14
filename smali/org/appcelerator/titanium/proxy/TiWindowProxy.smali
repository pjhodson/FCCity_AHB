.class public abstract Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TiWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE:I = 0x138

.field private static final MSG_FIRST_ID:I = 0xd3

.field protected static final MSG_LAST_ID:I = 0x4ba

.field private static final MSG_OPEN:I = 0x137

.field private static final TAG:Ljava/lang/String; = "TiWindowProxy"

.field private static waitingForOpen:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiWindowProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected focused:Z

.field protected fullscreen:Z

.field protected inTab:Z

.field protected modal:Z

.field protected opened:Z

.field protected opening:Z

.field protected orientationModes:[I

.field protected postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

.field protected restoreFullscreen:Z

.field protected tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected windowActivityCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .line 65
    iput-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->windowActivityCreated:Z

    .line 81
    iput-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->inTab:Z

    .line 82
    return-void
.end method

.method public static getWaitingForOpen()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 4
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, options:Lorg/appcelerator/kroll/KrollDict;
    const/4 v0, 0x0

    .line 157
    .local v0, animation:Lorg/appcelerator/titanium/view/TiAnimation;
    if-eqz p1, :cond_2

    .line 158
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 159
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1           #options:Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 170
    .restart local v1       #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    :goto_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleClose(Lorg/appcelerator/kroll/KrollDict;)V

    .line 176
    :goto_1
    return-void

    .line 161
    .restart local p1
    :cond_1
    instance-of v2, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v2, :cond_0

    .line 162
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1           #options:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 163
    .restart local v1       #options:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "_anim"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_2
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1           #options:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .restart local v1       #options:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0

    .line 175
    .end local p1
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x138

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public closeFromActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    .line 185
    const-string v0, "closeFromActivity"

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 186
    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->activity:Ljava/lang/ref/WeakReference;

    .line 189
    const-string v0, "close"

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "activity"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows are created during open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 4

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 433
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiOrientationHelper;->convertConfigToTiOrientationMode(I)I

    move-result v1

    .line 439
    :goto_0
    return v1

    .line 438
    :cond_0
    const-string v1, "TiWindowProxy"

    const-string v2, "Unable to get orientation, activity not found for window"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOrientationModes()[I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    return-object v0
.end method

.method public getTabGroupProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getTabProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method protected abstract getWindowActivity()Landroid/app/Activity;
.end method

.method public getWindowPixelFormat()I
    .locals 2

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, pixelFormat:I
    const-string v1, "windowPixelFormat"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    const-string v1, "windowPixelFormat"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 451
    :cond_0
    return v0
.end method

.method protected abstract handleClose(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 93
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 107
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 95
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 96
    .local v0, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleOpen(Lorg/appcelerator/kroll/KrollDict;)V

    .line 97
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 98
    goto :goto_0

    .line 101
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 102
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleClose(Lorg/appcelerator/kroll/KrollDict;)V

    .line 103
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 104
    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
.end method

.method protected handlePostOpen()V
    .locals 3

    .prologue
    .line 405
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy$1;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 416
    const/4 v1, 0x0

    sput-object v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    .line 419
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, nativeView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 426
    :cond_2
    return-void
.end method

.method public handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method public onWindowActivityCreated()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->windowActivityCreated:Z

    .line 240
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    .line 243
    :cond_0
    return-void
.end method

.method public onWindowFocusChange(Z)V
    .locals 3
    .parameter "focused"

    .prologue
    .line 254
    if-eqz p1, :cond_0

    const-string v0, "focus"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 255
    return-void

    .line 254
    :cond_0
    const-string v0, "blur"

    goto :goto_0
.end method

.method public open(Ljava/lang/Object;)V
    .locals 5
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opened:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    if-eqz v2, :cond_1

    .line 147
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local p1
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->waitingForOpen:Ljava/lang/ref/WeakReference;

    .line 118
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, options:Lorg/appcelerator/kroll/KrollDict;
    const/4 v0, 0x0

    .line 122
    .local v0, animation:Lorg/appcelerator/titanium/view/TiAnimation;
    if-eqz p1, :cond_5

    .line 123
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 124
    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 138
    .end local p1
    :cond_2
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleOpen(Lorg/appcelerator/kroll/KrollDict;)V

    .line 140
    iput-boolean v4, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    goto :goto_0

    .line 126
    .restart local p1
    :cond_3
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 127
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1           #options:Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v1       #options:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 129
    .restart local p1
    :cond_4
    instance-of v2, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v2, :cond_2

    .line 130
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1           #options:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 131
    .restart local v1       #options:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "_anim"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_5
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1           #options:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .restart local v1       #options:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1

    .line 144
    .end local p1
    :cond_6
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x137

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-boolean v4, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->opening:Z

    goto :goto_0
.end method

.method public setLeftNavButton(Ljava/lang/Object;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 260
    const-string v0, "TiWindowProxy"

    const-string v1, "setLeftNavButton not supported in Android"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public setOrientationModes([I)V
    .locals 11
    .parameter "modes"

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x9

    .line 266
    const/4 v1, -0x1

    .line 267
    .local v1, activityOrientationMode:I
    const/4 v4, 0x0

    .line 268
    .local v4, hasPortrait:Z
    const/4 v5, 0x0

    .line 269
    .local v5, hasPortraitReverse:Z
    const/4 v2, 0x0

    .line 270
    .local v2, hasLandscape:Z
    const/4 v3, 0x0

    .line 273
    .local v3, hasLandscapeReverse:Z
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    .line 275
    if-eqz p1, :cond_13

    .line 278
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 280
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 282
    const/4 v4, 0x1

    .line 278
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 284
    :cond_1
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 286
    const/4 v5, 0x1

    goto :goto_1

    .line 288
    :cond_2
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 290
    const/4 v2, 0x1

    goto :goto_1

    .line 292
    :cond_3
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    aget v7, v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 294
    const/4 v3, 0x1

    goto :goto_1

    .line 299
    :cond_4
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->orientationModes:[I

    array-length v7, v7

    if-nez v7, :cond_7

    .line 301
    const/4 v1, 0x4

    .line 354
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getWindowActivity()Landroid/app/Activity;

    move-result-object v0

    .line 357
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_6

    iget-boolean v7, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->windowActivityCreated:Z

    if-eqz v7, :cond_6

    .line 359
    if-eq v1, v10, :cond_12

    .line 361
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 380
    .end local v6           #i:I
    :cond_6
    :goto_3
    return-void

    .line 303
    .end local v0           #activity:Landroid/app/Activity;
    .restart local v6       #i:I
    :cond_7
    if-nez v4, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    .line 305
    :cond_9
    const/4 v1, 0x4

    goto :goto_2

    .line 307
    :cond_a
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    .line 313
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_b

    .line 315
    const/4 v1, 0x7

    goto :goto_2

    .line 319
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 322
    :cond_c
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 328
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_d

    .line 330
    const/4 v1, 0x6

    goto :goto_2

    .line 334
    :cond_d
    const/4 v1, 0x0

    goto :goto_2

    .line 337
    :cond_e
    if-eqz v4, :cond_f

    .line 339
    const/4 v1, 0x1

    goto :goto_2

    .line 341
    :cond_f
    if-eqz v5, :cond_10

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_10

    .line 343
    const/16 v1, 0x9

    goto :goto_2

    .line 345
    :cond_10
    if-eqz v2, :cond_11

    .line 347
    const/4 v1, 0x0

    goto :goto_2

    .line 349
    :cond_11
    if-eqz v3, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_5

    .line 351
    const/16 v1, 0x8

    goto :goto_2

    .line 365
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_12
    invoke-virtual {v0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 371
    .end local v0           #activity:Landroid/app/Activity;
    .end local v6           #i:I
    :cond_13
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 372
    .restart local v0       #activity:Landroid/app/Activity;
    if-eqz v0, :cond_6

    .line 374
    instance-of v7, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v7, :cond_6

    move-object v7, v0

    .line 376
    check-cast v7, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getOriginalOrientationMode()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3
.end method

.method public setPostOpenListener(Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 223
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->postOpenListener:Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;

    .line 224
    return-void
.end method

.method public setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "tabGroupProxy"

    .prologue
    .line 211
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 212
    return-void
.end method

.method public setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "tabProxy"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 197
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 198
    return-void
.end method

.method public setWindowPixelFormat(I)V
    .locals 3
    .parameter "pixelFormat"

    .prologue
    .line 457
    const-string v0, "windowPixelFormat"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 458
    return-void
.end method
