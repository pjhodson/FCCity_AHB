.class public Lorg/appcelerator/kroll/runtime/v8/V8Function;
.super Lorg/appcelerator/kroll/runtime/v8/V8Object;
.source "V8Function.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollFunction;
.implements Landroid/os/Handler$Callback;


# static fields
.field protected static final MSG_CALL_SYNC:I = 0xc9

.field protected static final MSG_LAST_ID:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "V8Function"


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "pointer"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Object;-><init>(J)V

    .line 32
    return-void
.end method

.method private native nativeInvoke(JJ[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static native nativeRelease(J)V
.end method


# virtual methods
.method public call(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 2
    .parameter "krollObject"
    .parameter "args"

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "krollObject"
    .parameter "args"

    .prologue
    .line 41
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->callSync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Function;->handler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;

    invoke-direct {v1, p1, p2}, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;-><init>(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V
    .locals 2
    .parameter "krollObject"
    .parameter "args"

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V
    .locals 1
    .parameter "krollObject"
    .parameter "args"

    .prologue
    .line 67
    new-instance v0, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Function$1;-><init>(Lorg/appcelerator/kroll/runtime/v8/V8Function;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnRuntime(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public callSync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "krollObject"
    .parameter "args"

    .prologue
    .line 53
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "V8Function"

    const-string v1, "Runtime disposed, cannot call function."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 57
    .end local p1
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lorg/appcelerator/kroll/runtime/v8/V8Object;

    .end local p1
    invoke-virtual {p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->getPointer()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->getPointer()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->nativeInvoke(JJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public doRelease()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->getPointer()J

    move-result-wide v0

    .line 94
    .local v0, functionPointer:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {v0, v1}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->nativeRelease(J)V

    .line 99
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->finalize()V

    .line 105
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 78
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_0
    return v2

    .line 80
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 81
    .local v0, asyncResult:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;

    .line 82
    .local v1, functionArgs:Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;
    iget-object v2, v1, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    iget-object v3, v1, Lorg/appcelerator/kroll/KrollFunction$FunctionArgs;->args:[Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/kroll/runtime/v8/V8Function;->callSync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
