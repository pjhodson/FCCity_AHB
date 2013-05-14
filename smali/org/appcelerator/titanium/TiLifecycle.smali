.class public Lorg/appcelerator/titanium/TiLifecycle;
.super Ljava/lang/Object;
.source "TiLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    }
.end annotation


# static fields
.field public static final LIFECYCLE_ON_DESTROY:I = 0x4

.field public static final LIFECYCLE_ON_PAUSE:I = 0x2

.field public static final LIFECYCLE_ON_RESUME:I = 0x1

.field public static final LIFECYCLE_ON_START:I = 0x0

.field public static final LIFECYCLE_ON_STOP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    .locals 0
    .parameter "activity"
    .parameter "listener"
    .parameter "which"

    .prologue
    .line 62
    packed-switch p2, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 66
    :pswitch_3
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 67
    :pswitch_4
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
