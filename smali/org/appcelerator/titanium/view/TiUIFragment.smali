.class public abstract Lorg/appcelerator/titanium/view/TiUIFragment;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static viewId:I


# instance fields
.field private fragment:Landroid/support/v4/app/Fragment;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x3e8

    sput v0, Lorg/appcelerator/titanium/view/TiUIFragment;->viewId:I

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 5
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 27
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIFragment$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/appcelerator/titanium/view/TiUIFragment$1;-><init>(Lorg/appcelerator/titanium/view/TiUIFragment;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 35
    .local v0, container:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    sget v3, Lorg/appcelerator/titanium/view/TiUIFragment;->viewId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lorg/appcelerator/titanium/view/TiUIFragment;->viewId:I

    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setId(I)V

    .line 36
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIFragment;->setNativeView(Landroid/view/View;)V

    .line 38
    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    .end local p2
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 39
    .local v1, manager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 40
    .local v2, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIFragment;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    .line 41
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 45
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->handler:Landroid/os/Handler;

    .line 47
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 48
    return-void
.end method


# virtual methods
.method protected abstract createFragment()Landroid/support/v4/app/Fragment;
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIFragment;->onViewCreated()V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onViewCreated()V
.end method
