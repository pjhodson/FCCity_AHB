.class public Lorg/appcelerator/titanium/kroll/KrollContext;
.super Ljava/lang/Object;
.source "KrollContext.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CONTEXT_KEY:Ljava/lang/String; = "krollContext"

.field private static final MSG_EVAL_FILE:I = 0x3e9

.field private static final MSG_EVAL_STRING:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "KrollContext"

.field private static _instance:Lorg/appcelerator/titanium/kroll/KrollContext;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->initContext()V

    .line 49
    return-void
.end method

.method public static getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->_instance:Lorg/appcelerator/titanium/kroll/KrollContext;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-direct {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->_instance:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 43
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->_instance:Lorg/appcelerator/titanium/kroll/KrollContext;

    return-object v0
.end method


# virtual methods
.method public evalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "filename"

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollContext;->evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;
    .locals 7
    .parameter "filename"
    .parameter "messenger"
    .parameter "messageId"

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 97
    .local v3, result:Ljava/lang/Object;
    const-string v4, "app://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const-string v4, "app:/"

    const-string v5, "Resources"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_0
    :goto_0
    const-string v4, "KrollContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "evalFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->isOurThread()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 125
    .end local v3           #result:Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v3

    .line 99
    .restart local v3       #result:Ljava/lang/Object;
    :cond_2
    const-string v4, "file:///android_asset/Resources/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const-string v4, "file:///android_asset/"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_3
    iget-object v4, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->handler:Landroid/os/Handler;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 110
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;)Ljava/lang/Object;

    .line 114
    if-eqz p2, :cond_1

    .line 116
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 117
    .local v2, responseMsg:Landroid/os/Message;
    iput p3, v2, Landroid/os/Message;->what:I

    .line 118
    invoke-virtual {p2, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 119
    const-string v4, "KrollContext"

    const-string v5, "Notifying caller that evalFile has completed"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    .end local v2           #responseMsg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "KrollContext"

    const-string v5, "Failed to notify caller that eval completed"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "filename"

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 64
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 75
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 69
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 70
    .local v1, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, filename:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 72
    const/4 v2, 0x1

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected initContext()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "KrollContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->handler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method protected isOurThread()Z
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 80
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected threadEnded()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
