.class Lti/modules/titanium/ui/TiUIActivityWindow$MessageHandler;
.super Ljava/lang/Object;
.source "TiUIActivityWindow.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/TiUIActivityWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private activityWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/ui/TiUIActivityWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TiUIActivityWindow;)V
    .locals 1
    .parameter "activityWindow"

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIActivityWindow$MessageHandler;->activityWindow:Ljava/lang/ref/WeakReference;

    .line 263
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIActivityWindow$MessageHandler;->activityWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TiUIActivityWindow;

    .line 269
    .local v0, activityWindow:Lti/modules/titanium/ui/TiUIActivityWindow;
    if-nez v0, :cond_0

    .line 287
    :goto_0
    return v1

    .line 273
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    const-string v1, "TiUIActivityWindow"

    const-string v2, "Received Activity creation message"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 278
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iput-object v1, v0, Lti/modules/titanium/ui/TiUIActivityWindow;->windowActivity:Landroid/app/Activity;

    .line 281
    :cond_1
    #getter for: Lti/modules/titanium/ui/TiUIActivityWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v0}, Lti/modules/titanium/ui/TiUIActivityWindow;->access$100(Lti/modules/titanium/ui/TiUIActivityWindow;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 282
    invoke-virtual {v0}, Lti/modules/titanium/ui/TiUIActivityWindow;->handleBooted()V

    .line 284
    const/4 v1, 0x1

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
