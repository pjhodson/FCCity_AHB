.class public Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;
.super Ljava/lang/Thread;
.source "KrollRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KrollRuntimeThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KrollRuntimeThread"


# instance fields
.field private runtime:Lorg/appcelerator/kroll/KrollRuntime;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollRuntime;I)V
    .locals 6
    .parameter "runtime"
    .parameter "stackSize"

    .prologue
    const/4 v1, 0x0

    .line 86
    const-string v3, "KrollRuntimeThread"

    int-to-long v4, p2

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 82
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->runtime:Lorg/appcelerator/kroll/KrollRuntime;

    .line 87
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->runtime:Lorg/appcelerator/kroll/KrollRuntime;

    .line 88
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 97
    .local v0, looper:Landroid/os/Looper;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->runtime:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    #setter for: Lorg/appcelerator/kroll/KrollRuntime;->threadId:J
    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/KrollRuntime;->access$002(Lorg/appcelerator/kroll/KrollRuntime;J)J

    .line 102
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->runtime:Lorg/appcelerator/kroll/KrollRuntime;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->runtime:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-direct {v2, v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, v1, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    .line 106
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    .line 109
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->runtime:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->doInit()V

    .line 112
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 113
    return-void

    .line 98
    .end local v0           #looper:Landroid/os/Looper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
