.class public Lorg/appcelerator/kroll/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final DEBUG:I = 0x1

.field public static final DEBUG_MODE:Ljava/lang/String; = "DEBUG_MODE"

.field private static final ERROR:I = 0x4

.field private static final INFO:I = 0x2

.field public static final RELEASE_MODE:Ljava/lang/String; = "RELEASE_MODE"

.field private static final VERBOSE:I = 0x5

.field private static final WARN:I = 0x3

.field private static firstLog:J

.field private static lastLog:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/appcelerator/kroll/common/Log;->lastLog:J

    .line 16
    sget-wide v0, Lorg/appcelerator/kroll/common/Log;->lastLog:J

    sput-wide v0, Lorg/appcelerator/kroll/common/Log;->firstLog:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkpoint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 20
    const-class v1, Lorg/appcelerator/kroll/common/Log;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/appcelerator/kroll/common/Log;->lastLog:J

    .line 21
    sget-wide v2, Lorg/appcelerator/kroll/common/Log;->lastLog:J

    sput-wide v2, Lorg/appcelerator/kroll/common/Log;->firstLog:J

    .line 22
    invoke-static {p0, p1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v1

    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 137
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, v0}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "mode"

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lorg/appcelerator/kroll/common/Log;->processLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 176
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, p2, v0}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"
    .parameter "mode"

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lorg/appcelerator/kroll/common/Log;->processLogWithException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 143
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, v0}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 335
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "mode"

    .prologue
    .line 320
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lorg/appcelerator/kroll/common/Log;->processLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 368
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, p2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"
    .parameter "mode"

    .prologue
    .line 352
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2, p3}, Lorg/appcelerator/kroll/common/Log;->processLogWithException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 207
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, v0}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "mode"

    .prologue
    .line 192
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lorg/appcelerator/kroll/common/Log;->processLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 240
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, p2, v0}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"
    .parameter "mode"

    .prologue
    .line 224
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2, p3}, Lorg/appcelerator/kroll/common/Log;->processLogWithException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isDebugModeEnabled()Z
    .locals 1

    .prologue
    .line 373
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    return v0
.end method

.method private static declared-synchronized onThread(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "msg"

    .prologue
    .line 420
    const-class v9, Lorg/appcelerator/kroll/common/Log;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 421
    .local v0, currentMillis:J
    sget-wide v10, Lorg/appcelerator/kroll/common/Log;->lastLog:J

    sub-long v2, v0, v10

    .line 422
    .local v2, elapsed:J
    sget-wide v10, Lorg/appcelerator/kroll/common/Log;->firstLog:J

    sub-long v6, v0, v10

    .line 423
    .local v6, total:J
    sput-wide v0, Lorg/appcelerator/kroll/common/Log;->lastLog:J

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 426
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v8, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ") ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, s:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit v9

    return-object v4

    .line 420
    .end local v0           #currentMillis:J
    .end local v2           #elapsed:J
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #total:J
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static processLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "severity"
    .parameter "tag"
    .parameter "msg"
    .parameter "mode"

    .prologue
    .line 378
    const-string v0, "DEBUG_MODE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 393
    :goto_0
    return v0

    .line 381
    :cond_0
    invoke-static {p2}, Lorg/appcelerator/kroll/common/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 382
    packed-switch p0, :pswitch_data_0

    .line 393
    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 386
    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 388
    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 390
    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static processLogWithException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    .locals 1
    .parameter "severity"
    .parameter "tag"
    .parameter "msg"
    .parameter "t"
    .parameter "mode"

    .prologue
    .line 399
    const-string v0, "DEBUG_MODE"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    .line 402
    :cond_0
    invoke-static {p2}, Lorg/appcelerator/kroll/common/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 403
    packed-switch p0, :pswitch_data_0

    .line 414
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 405
    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 407
    :pswitch_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 409
    :pswitch_3
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 411
    :pswitch_4
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 73
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, v0}, Lorg/appcelerator/kroll/common/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "mode"

    .prologue
    .line 58
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lorg/appcelerator/kroll/common/Log;->processLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 106
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, p2, v0}, Lorg/appcelerator/kroll/common/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"
    .parameter "mode"

    .prologue
    .line 90
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2, p3}, Lorg/appcelerator/kroll/common/Log;->processLogWithException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 271
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "mode"

    .prologue
    .line 256
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lorg/appcelerator/kroll/common/Log;->processLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 304
    const-string v0, "RELEASE_MODE"

    invoke-static {p0, p1, p2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"
    .parameter "mode"

    .prologue
    .line 288
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2, p3}, Lorg/appcelerator/kroll/common/Log;->processLogWithException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
