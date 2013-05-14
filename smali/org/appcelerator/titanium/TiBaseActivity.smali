.class public abstract Lorg/appcelerator/titanium/TiBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TiBaseActivity.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivitySupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;,
        Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;,
        Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiBaseActivity"

.field private static orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

.field protected static previousOrientation:I


# instance fields
.field protected activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

.field protected configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public isResumed:Z

.field protected layout:Landroid/view/View;

.field private lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field public lwWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

.field protected menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

.field protected messenger:Landroid/os/Messenger;

.field protected msgActivityCreatedId:I

.field protected msgId:I

.field private onDestroyFired:Z

.field protected orientationDegrees:I

.field private originalOrientationMode:I

.field protected supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

.field protected view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

.field private windowStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiWindowProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 82
    const/4 v0, -0x1

    sput v0, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 67
    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    .line 68
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    .line 69
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 76
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 80
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    .line 81
    iput v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    .line 88
    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    .line 187
    return-void
.end method

.method public static callOrientationChangedListener(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 815
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    if-eqz v0, :cond_0

    sget v0, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 816
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    .line 817
    sget-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;->onOrientationChanged(I)V

    .line 819
    :cond_0
    return-void
.end method

.method public static deregisterOrientationListener()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 185
    return-void
.end method

.method public static isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 1276
    if-eqz p1, :cond_0

    instance-of v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->activityStackHasLaunchActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    const/4 v0, 0x1

    .line 1292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerOrientationListener(Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 179
    sput-object p0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 180
    return-void
.end method

.method private releaseDialogs(Z)V
    .locals 5
    .parameter "finish"

    .prologue
    .line 865
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 866
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    .line 867
    .local v2, p:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 868
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getPersistent()Z

    move-result v3

    .line 871
    .local v3, persistent:Z
    if-nez p1, :cond_1

    if-nez v3, :cond_0

    .line 872
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 873
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 875
    :cond_2
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 878
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v2           #p:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    .end local v3           #persistent:Z
    :cond_3
    return-void
.end method


# virtual methods
.method public activityOnCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 1263
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1264
    return-void
.end method

.method protected activityOnDestroy()V
    .locals 0

    .prologue
    .line 1258
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 1259
    return-void
.end method

.method protected activityOnPause()V
    .locals 0

    .prologue
    .line 1238
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 1239
    return-void
.end method

.method protected activityOnRestart()V
    .locals 0

    .prologue
    .line 1242
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 1243
    return-void
.end method

.method protected activityOnResume()V
    .locals 0

    .prologue
    .line 1246
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 1247
    return-void
.end method

.method protected activityOnStart()V
    .locals 0

    .prologue
    .line 1254
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 1255
    return-void
.end method

.method protected activityOnStop()V
    .locals 0

    .prologue
    .line 1250
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 1251
    return-void
.end method

.method public addConfigurationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 284
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 285
    return-void
.end method

.method public addDialog(Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 250
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 854
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 855
    return-void
.end method

.method public addWindowToStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 133
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-string v1, "TiBaseActivity"

    const-string v2, "Window already exists in stack"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    .line 138
    .local v0, isEmpty:Z
    if-nez v0, :cond_2

    .line 139
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 141
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 142
    if-nez v0, :cond_0

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    goto :goto_0
.end method

.method protected createLayout()Landroid/view/View;
    .locals 4

    .prologue
    .line 369
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 371
    .local v0, arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v2, "layout"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, layoutFromIntent:Ljava/lang/String;
    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 380
    :cond_0
    :goto_0
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v2

    .line 375
    :cond_1
    const-string v2, "vertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public deregisterOrientationChangedListener()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 300
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 636
    const/4 v1, 0x0

    .line 639
    .local v1, handled:Z
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v4, :cond_0

    .line 640
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 645
    .local v3, window:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    if-nez v3, :cond_1

    .line 646
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 763
    :goto_1
    return v4

    .line 642
    .end local v3           #window:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .restart local v3       #window:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 759
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 760
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_3
    move v4, v1

    .line 763
    goto :goto_1

    .line 652
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 653
    const-string v0, "android:back"

    .line 654
    .local v0, backEvent:Ljava/lang/String;
    const/4 v2, 0x0

    .line 658
    .local v2, proxy:Lorg/appcelerator/kroll/KrollProxy;
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v4, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 659
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 664
    :cond_4
    :goto_3
    if-eqz v2, :cond_2

    .line 665
    invoke-virtual {v2, v0, v6}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 666
    const/4 v1, 0x1

    goto :goto_2

    .line 660
    :cond_5
    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 661
    move-object v2, v3

    goto :goto_3

    .line 673
    .end local v0           #backEvent:Ljava/lang/String;
    .end local v2           #proxy:Lorg/appcelerator/kroll/KrollProxy;
    :sswitch_1
    const-string v4, "androidcamera"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 674
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 675
    const-string v4, "androidcamera"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 677
    :cond_6
    const/4 v1, 0x1

    .line 680
    :cond_7
    const-string v4, "android:camera"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_8

    .line 682
    const-string v4, "android:camera"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 684
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 690
    :sswitch_2
    const-string v4, "androidfocus"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 691
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_9

    .line 692
    const-string v4, "androidfocus"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 694
    :cond_9
    const/4 v1, 0x1

    .line 697
    :cond_a
    const-string v4, "android:focus"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 698
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_b

    .line 699
    const-string v4, "android:focus"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 701
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 707
    :sswitch_3
    const-string v4, "androidsearch"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 708
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_c

    .line 709
    const-string v4, "androidsearch"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 711
    :cond_c
    const/4 v1, 0x1

    .line 714
    :cond_d
    const-string v4, "android:search"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 715
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_e

    .line 716
    const-string v4, "android:search"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 718
    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 724
    :sswitch_4
    const-string v4, "androidvolup"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 725
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_f

    .line 726
    const-string v4, "androidvolup"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 728
    :cond_f
    const/4 v1, 0x1

    .line 731
    :cond_10
    const-string v4, "android:volup"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 732
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_11

    .line 733
    const-string v4, "android:volup"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 735
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 741
    :sswitch_5
    const-string v4, "androidvoldown"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 742
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_12

    .line 743
    const-string v4, "androidvoldown"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 745
    :cond_12
    const/4 v1, 0x1

    .line 748
    :cond_13
    const-string v4, "android:voldown"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 749
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_14

    .line 750
    const-string v4, "android:voldown"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 752
    :cond_14
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 649
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1b -> :sswitch_1
        0x50 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1208
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1210
    const-string v3, "animate"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1212
    .local v0, animate:Z
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->shouldFinishRootActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1213
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 1214
    .local v1, app:Lorg/appcelerator/titanium/TiApplication;
    if-eqz v1, :cond_0

    .line 1215
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v2

    .line 1216
    .local v2, rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1217
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiRootActivity;->finish()V

    .line 1222
    .end local v1           #app:Lorg/appcelerator/titanium/TiApplication;
    .end local v2           #rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    :cond_0
    if-nez v0, :cond_1

    .line 1223
    invoke-virtual {p0, v5, v5}, Lorg/appcelerator/titanium/TiBaseActivity;->overridePendingTransition(II)V

    .line 1225
    :cond_1
    return-void
.end method

.method protected fireOnDestroy()V
    .locals 3

    .prologue
    .line 1192
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    if-nez v0, :cond_1

    .line 1193
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v1, "destroy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1196
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroyFired:Z

    .line 1198
    :cond_1
    return-void
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    return-object v0
.end method

.method protected getIntentBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 305
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 311
    .end local p2
    :cond_0
    return p2
.end method

.method protected getIntentInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 316
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 323
    .end local p2
    :cond_0
    return p2
.end method

.method protected getIntentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 329
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 335
    .end local p2
    :cond_0
    return-object p2
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    return-object v0
.end method

.method public getOriginalOrientationMode()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    return v0
.end method

.method protected getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->supportHelper:Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    return-object v0
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    return-object v0
.end method

.method public getUniqueResultCode()I
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->getUniqueResultCode()I

    move-result v0

    return v0
.end method

.method public getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    return-object v0
.end method

.method protected handleSendMessage(I)V
    .locals 4
    .parameter "messageId"

    .prologue
    .line 574
    :try_start_0
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiMessenger;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 575
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    .end local v1           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TiBaseActivity"

    const-string v3, "Unable to message creator. finishing."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 581
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "TiBaseActivity"

    const-string v3, "Unable to message creator. finishing."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0
.end method

.method public launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V
    .locals 1
    .parameter "intent"
    .parameter "code"
    .parameter "resultHandler"

    .prologue
    .line 607
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 608
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 613
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 614
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportHelper()Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 615
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 620
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->topWindowOnStack()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v0

    .line 624
    .local v0, topWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    if-eqz v0, :cond_0

    const-string v1, "androidback"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    const-string v1, "androidback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 824
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 826
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 827
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 828
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;

    invoke-interface {v2, p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;->onConfigurationChanged(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 832
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;>;"
    :cond_1
    invoke-static {p1}, Lorg/appcelerator/titanium/TiBaseActivity;->callOrientationChangedListener(Landroid/content/res/Configuration;)V

    .line 833
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x1

    .line 446
    const-string v6, "TiBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onCreate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    .line 450
    .local v5, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 452
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 453
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 459
    const-string v6, "TiBaseActivity"

    const-string v7, "Unsupported, out-of-order activity creation. Finishing."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 461
    const/16 v6, 0xfa

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    .line 462
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 466
    :cond_2
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->addToActivityStack(Landroid/app/Activity;)V

    .line 469
    new-instance v6, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-direct {v6, p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 473
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->incrementActivityRefCount()V

    .line 475
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 476
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_8

    .line 479
    const/4 v0, -0x1

    .line 480
    .local v0, NO_VAL:I
    const-string v6, "enterAnimation"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 481
    .local v1, enterAnim:I
    const-string v6, "exitAnimation"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 483
    .local v2, exitAnim:I
    if-ne v1, v9, :cond_3

    if-eq v2, v9, :cond_6

    .line 486
    :cond_3
    if-ne v1, v9, :cond_4

    .line 487
    const/4 v1, 0x0

    .line 490
    :cond_4
    if-ne v2, v9, :cond_5

    .line 491
    const/4 v2, 0x0

    .line 494
    :cond_5
    invoke-virtual {p0, v1, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->overridePendingTransition(II)V

    .line 497
    :cond_6
    const-string v6, "messenger"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 498
    const-string v6, "messenger"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    iput-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    .line 499
    const-string v6, "msgActivityCreatedId"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    .line 500
    const-string v6, "messageId"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    .line 503
    :cond_7
    const-string v6, "windowPixelFormat"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 504
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const-string v7, "windowPixelFormat"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setFormat(I)V

    .line 509
    .end local v0           #NO_VAL:I
    .end local v1           #enterAnim:I
    .end local v2           #exitAnim:I
    :cond_8
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->intializeDisplayMetrics(Landroid/app/Activity;)V

    .line 511
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    if-nez v6, :cond_9

    .line 512
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->createLayout()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    .line 514
    :cond_9
    if-eqz v3, :cond_a

    const-string v6, "keepScreenOn"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 515
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    const-string v7, "keepScreenOn"

    iget-object v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 518
    :cond_a
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 523
    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    .line 524
    .local v4, tempCurrentActivity:Landroid/app/Activity;
    invoke-virtual {v5, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 526
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->windowCreated()V

    .line 528
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v6, :cond_b

    .line 529
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v7, "create"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 533
    :cond_b
    invoke-virtual {v5, p0, v4}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 535
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->setContentView(Landroid/view/View;)V

    .line 537
    iget v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgActivityCreatedId:I

    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V

    .line 539
    iget v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->msgId:I

    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->sendMessage(I)V

    .line 543
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getRequestedOrientation()I

    move-result v6

    iput v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->originalOrientationMode:I

    .line 545
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v6, :cond_0

    .line 546
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowActivityCreated()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 773
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-nez v0, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 781
    :goto_0
    return v0

    .line 777
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    if-nez v0, :cond_1

    .line 778
    new-instance v0, Lorg/appcelerator/titanium/util/TiMenuSupport;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiMenuSupport;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    .line 781
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onCreateOptionsMenu(ZLandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1113
    const-string v4, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onDestroy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 1117
    .local v3, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-direct {p0, v9}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs(Z)V

    .line 1119
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1120
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 1121
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1122
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 1128
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    .local v1, listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v4, 0x4

    :try_start_1
    invoke-static {p0, v1, v4}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1132
    :catch_0
    move-exception v2

    .line 1133
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching lifecycle event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1136
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1138
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 1142
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1144
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->shouldFinishRootActivity()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1146
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "finishRoot"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1149
    :cond_3
    const/16 v4, 0xfa

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    .line 1150
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 1155
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->fireOnDestroy()V

    .line 1157
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    instance-of v4, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v4, :cond_5

    .line 1158
    const-string v4, "TiBaseActivity"

    const-string v5, "Layout cleanup."

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 1161
    :cond_5
    iput-object v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    .line 1164
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_6

    .line 1165
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 1166
    iput-object v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 1169
    :cond_6
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v4, :cond_7

    .line 1170
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->closeFromActivity()V

    .line 1171
    iput-object v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 1174
    :cond_7
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    if-eqz v4, :cond_8

    .line 1175
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiMenuSupport;->destroy()V

    .line 1176
    iput-object v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    .line 1179
    :cond_8
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_9

    .line 1180
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->release()V

    .line 1181
    iput-object v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 1184
    :cond_9
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->decrementActivityRefCount()V

    .line 1185
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 838
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 840
    const-string v2, "TiBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onNewIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v2, :cond_0

    .line 843
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-direct {v1, p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    .line 844
    .local v1, ip:Lorg/appcelerator/titanium/proxy/IntentProxy;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 845
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "newintent"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 848
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "newIntent"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 850
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #ip:Lorg/appcelerator/titanium/proxy/IntentProxy;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 787
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 803
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 789
    :pswitch_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_0

    .line 790
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActionBar()Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    move-result-object v0

    .line 791
    .local v0, actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;
    if-eqz v0, :cond_0

    .line 792
    const-string v4, "onHomeIconItemSelected"

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .line 794
    .local v2, onHomeIconItemSelected:Lorg/appcelerator/kroll/KrollFunction;
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 795
    .local v1, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "source"

    invoke-virtual {v1, v4, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    if-eqz v2, :cond_0

    .line 797
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v2, v4, v5}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 887
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 888
    iput-boolean v7, p0, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    .line 890
    const-string v4, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onPause"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 893
    .local v3, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 894
    invoke-direct {p0, v8}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs(Z)V

    .line 895
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 896
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 902
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v4, v7}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 905
    :cond_2
    invoke-static {v8}, Lorg/appcelerator/titanium/TiApplication;->updateActivityTransitionState(Z)V

    .line 906
    invoke-virtual {v3, p0, v9}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 907
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 909
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 910
    invoke-direct {p0, v8}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs(Z)V

    .line 916
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_3

    .line 917
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v5, "pause"

    invoke-virtual {v4, v5, v9}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 920
    :cond_3
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 921
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    .local v1, listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v4, 0x2

    :try_start_1
    invoke-static {p0, v1, v4}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 925
    :catch_0
    move-exception v2

    .line 926
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching lifecycle event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 929
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 913
    :cond_4
    invoke-direct {p0, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->releaseDialogs(Z)V

    goto :goto_1

    .line 929
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 810
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->menuHelper:Lorg/appcelerator/titanium/util/TiMenuSupport;

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiMenuSupport;->onPrepareOptionsMenu(ZLandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    .line 1079
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 1081
    const-string v2, "TiBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onRestart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 1084
    .local v1, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1086
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v2, :cond_0

    .line 1096
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1097
    .local v0, tempCurrentActivity:Landroid/app/Activity;
    invoke-virtual {v1, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 1099
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v3, "restart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1102
    invoke-virtual {v1, p0, v0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 939
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 940
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    const-string v4, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onResume"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 947
    .local v3, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 948
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 949
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 954
    :cond_2
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 955
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 958
    :cond_3
    invoke-virtual {v3, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 959
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/appcelerator/titanium/TiApplication;->updateActivityTransitionState(Z)V

    .line 961
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v4, :cond_4

    .line 962
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v5, "resume"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 965
    :cond_4
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 966
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    .local v1, listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v4, 0x1

    :try_start_1
    invoke-static {p0, v1, v4}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 970
    :catch_0
    move-exception v2

    .line 971
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dispatching lifecycle event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 974
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 976
    iput-boolean v8, p0, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 987
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 988
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 996
    const-string v5, "TiBaseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onStart"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    .line 1000
    .local v4, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1001
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1002
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    goto :goto_0

    .line 1007
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V

    .line 1009
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v5, :cond_3

    .line 1013
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1014
    .local v3, tempCurrentActivity:Landroid/app/Activity;
    invoke-virtual {v4, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 1016
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v6, "start"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1019
    invoke-virtual {v4, p0, v3}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 1022
    .end local v3           #tempCurrentActivity:Landroid/app/Activity;
    :cond_3
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    .line 1023
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    .local v1, listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p0, v1, v5}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1027
    :catch_0
    move-exception v2

    .line 1028
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "TiBaseActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error dispatching lifecycle event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1031
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1034
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    sput v5, Lorg/appcelerator/titanium/TiBaseActivity;->previousOrientation:I

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    .line 1044
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 1046
    const-string v3, "TiBaseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onStop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1049
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1050
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->finish()V

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    if-eqz v3, :cond_2

    .line 1056
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    const-string v4, "stop"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1059
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 1060
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    .local v1, listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    const/4 v3, 0x3

    :try_start_1
    invoke-static {p0, v1, v3}, Lorg/appcelerator/titanium/TiLifecycle;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1064
    :catch_0
    move-exception v2

    .line 1065
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching lifecycle event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1068
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1069
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    goto :goto_0
.end method

.method public registerOrientationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 294
    sput-object p1, Lorg/appcelerator/titanium/TiBaseActivity;->orientationChangedListener:Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;

    .line 295
    return-void
.end method

.method public removeConfigurationChangedListener(Lorg/appcelerator/titanium/TiBaseActivity$ConfigurationChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 289
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->configChangedListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public removeDialog(Landroid/app/Dialog;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 256
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    .line 257
    .local v1, p:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getDialog()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->release()V

    .line 259
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseActivity;->dialogs:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    .end local v1           #p:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    :cond_0
    return-void

    .line 255
    .restart local v1       #p:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 860
    return-void
.end method

.method public removeWindowFromStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 151
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move v0, v2

    .line 152
    .local v0, isTopWindow:Z
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 156
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 157
    .local v1, nextWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    .line 159
    .end local v1           #nextWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_1
    return-void
.end method

.method protected sendMessage(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 557
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    new-instance v0, Lorg/appcelerator/titanium/TiBaseActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity$2;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;I)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setActivityProxy(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 266
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 267
    return-void
.end method

.method protected setFullscreen(Z)V
    .locals 2
    .parameter "fullscreen"

    .prologue
    const/16 v1, 0x400

    .line 385
    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 390
    :cond_0
    return-void
.end method

.method public setLayout(Landroid/view/View;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 279
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    .line 280
    return-void
.end method

.method protected setLayoutProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 226
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    instance-of v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->layout:Landroid/view/View;

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 229
    :cond_0
    return-void
.end method

.method protected setNavBarHidden(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 394
    if-nez p1, :cond_1

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 397
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 398
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 401
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 402
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method public setViewProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 237
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->view:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 238
    return-void
.end method

.method public setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 214
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 215
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->setLayoutProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 216
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->updateTitle()V

    .line 217
    return-void
.end method

.method protected shouldFinishRootActivity()Z
    .locals 2

    .prologue
    .line 1202
    const-string v0, "finishRoot"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public topWindowOnStack()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity;->windowStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    goto :goto_0
.end method

.method protected updateTitle()V
    .locals 5

    .prologue
    .line 341
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v3, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    .local v2, oldTitle:Ljava/lang/String;
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, newTitle:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 348
    const-string v2, ""

    .line 351
    :cond_2
    if-nez v1, :cond_3

    .line 352
    const-string v1, ""

    .line 355
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    move-object v0, v1

    .line 357
    .local v0, fnewTitle:Ljava/lang/String;
    new-instance v3, Lorg/appcelerator/titanium/TiBaseActivity$1;

    invoke-direct {v3, p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity$1;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected windowCreated()V
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 412
    const-string v8, "fullscreen"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 413
    .local v0, fullscreen:Z
    const-string v8, "navBarHidden"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 414
    .local v3, navBarHidden:Z
    const-string v8, "modal"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 415
    .local v2, modal:Z
    const-string v8, "windowSoftInputMode"

    invoke-virtual {p0, v8, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v4

    .line 416
    .local v4, softInputMode:I
    if-eq v4, v11, :cond_3

    const/4 v1, 0x1

    .line 418
    .local v1, hasSoftInputMode:Z
    :goto_0
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->setFullscreen(Z)V

    .line 419
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->setNavBarHidden(Z)V

    .line 421
    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 426
    :cond_0
    if-eqz v1, :cond_1

    .line 427
    const-string v8, "TiBaseActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "windowSoftInputMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 431
    :cond_1
    const-string v8, "useActivityWindow"

    invoke-virtual {p0, v8, v7}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 432
    .local v5, useActivityWindow:Z
    if-eqz v5, :cond_2

    .line 433
    const-string v7, "windowId"

    invoke-virtual {p0, v7, v11}, Lorg/appcelerator/titanium/TiBaseActivity;->getIntentInt(Ljava/lang/String;I)I

    move-result v6

    .line 434
    .local v6, windowId:I
    invoke-static {p0, v6}, Lorg/appcelerator/titanium/TiActivityWindows;->windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;I)V

    .line 436
    .end local v6           #windowId:I
    :cond_2
    return-void

    .end local v1           #hasSoftInputMode:Z
    .end local v5           #useActivityWindow:Z
    :cond_3
    move v1, v7

    .line 416
    goto :goto_0
.end method
