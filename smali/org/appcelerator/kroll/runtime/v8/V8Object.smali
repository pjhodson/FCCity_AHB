.class public Lorg/appcelerator/kroll/runtime/v8/V8Object;
.super Lorg/appcelerator/kroll/KrollObject;
.source "V8Object.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "V8Object"


# instance fields
.field private volatile ptr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "ptr"

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollObject;-><init>()V

    .line 23
    iput-wide p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    .line 24
    return-void
.end method

.method private static native nativeCallProperty(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private native nativeFireEvent(JLjava/lang/Object;JLjava/lang/String;Ljava/lang/Object;ZZILjava/lang/String;)Z
.end method

.method protected static native nativeInitObject(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method private static native nativeRelease(J)Z
.end method

.method private native nativeSetProperty(JLjava/lang/String;Ljava/lang/Object;)V
.end method

.method private native nativeSetWindow(JLjava/lang/Object;)V
.end method


# virtual methods
.method public callProperty(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyName"
    .parameter "args"

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-static {v0, v1, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeCallProperty(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doRelease()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeRelease(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iput-wide v2, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    .line 81
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    goto :goto_0
.end method

.method public doSetWindow(Ljava/lang/Object;)V
    .locals 2
    .parameter "windowProxyObject"

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeSetWindow(JLjava/lang/Object;)V

    .line 89
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 96
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->release()V

    .line 99
    :cond_0
    return-void
.end method

.method public fireEvent(Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;Ljava/lang/Object;ZZILjava/lang/String;)Z
    .locals 12
    .parameter "source"
    .parameter "type"
    .parameter "data"
    .parameter "bubbles"
    .parameter "reportSuccess"
    .parameter "code"
    .parameter "message"

    .prologue
    .line 55
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "V8Object"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runtime disposed, cannot fire event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 60
    :cond_0
    const-wide/16 v4, 0x0

    .line 61
    .local v4, sourceptr:J
    instance-of v0, p1, Lorg/appcelerator/kroll/runtime/v8/V8Object;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 62
    check-cast v0, Lorg/appcelerator/kroll/runtime/v8/V8Object;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->getPointer()J

    move-result-wide v4

    .line 64
    :cond_1
    iget-wide v1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeFireEvent(JLjava/lang/Object;JLjava/lang/String;Ljava/lang/Object;ZZILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNativeObject()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public getPointer()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    return-wide v0
.end method

.method public setPointer(J)V
    .locals 0
    .parameter "ptr"

    .prologue
    .line 33
    iput-wide p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    .line 34
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 45
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "V8Object"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runtime disposed, cannot set property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeSetProperty(JLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
