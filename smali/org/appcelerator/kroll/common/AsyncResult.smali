.class public Lorg/appcelerator/kroll/common/AsyncResult;
.super Ljava/util/concurrent/Semaphore;
.source "AsyncResult.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected arg:Ljava/lang/Object;

.field protected exception:Ljava/lang/Throwable;

.field protected result:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/common/AsyncResult;-><init>(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 38
    iput-object p1, p0, Lorg/appcelerator/kroll/common/AsyncResult;->arg:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public getArg()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/appcelerator/kroll/common/AsyncResult;->arg:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/AsyncResult;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/kroll/common/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lorg/appcelerator/kroll/common/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/common/AsyncResult;->result:Ljava/lang/Object;

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getResultUnsafe()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/appcelerator/kroll/common/AsyncResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/kroll/common/AsyncResult;->result:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lorg/appcelerator/kroll/common/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 67
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/AsyncResult;->release()V

    .line 68
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 55
    iput-object p1, p0, Lorg/appcelerator/kroll/common/AsyncResult;->result:Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/AsyncResult;->release()V

    .line 57
    return-void
.end method
