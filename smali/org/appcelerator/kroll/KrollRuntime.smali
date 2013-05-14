.class public abstract Lorg/appcelerator/kroll/KrollRuntime;
.super Ljava/lang/Object;
.source "KrollRuntime.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;,
        Lorg/appcelerator/kroll/KrollRuntime$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_THREAD_STACK_SIZE:I = 0x4000

.field public static final DONT_INTERCEPT:I = -0x7fffffff

.field private static final MSG_DISPOSE:I = 0x65

.field private static final MSG_EVAL_STRING:I = 0x67

.field private static final MSG_INIT:I = 0x64

.field public static final MSG_LAST_ID:I = 0xca

.field private static final MSG_RUN_MODULE:I = 0x66

.field private static final PROPERTY_FILENAME:Ljava/lang/String; = "filename"

.field private static final PROPERTY_SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_ANONYMOUS:Ljava/lang/String; = "<anonymous>"

.field private static final TAG:Ljava/lang/String; = "KrollRuntime"

.field public static final UNDEFINED:Ljava/lang/Object;

.field private static activityRefCount:I

.field private static instance:Lorg/appcelerator/kroll/KrollRuntime;

.field private static runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

.field private static serviceReceiverRefCount:I


# instance fields
.field private evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

.field private exceptionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private krollApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/kroll/KrollApplication;",
            ">;"
        }
    .end annotation
.end field

.field private primaryExceptionHandler:Lorg/appcelerator/kroll/KrollExceptionHandler;

.field private thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 48
    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    .line 61
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 67
    new-instance v0, Lorg/appcelerator/kroll/KrollRuntime$1;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollRuntime$1;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 78
    return-void
.end method

.method static synthetic access$002(Lorg/appcelerator/kroll/KrollRuntime;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    return-wide p1
.end method

.method public static addAdditionalExceptionHandler(Lorg/appcelerator/kroll/KrollExceptionHandler;Ljava/lang/String;)V
    .locals 1
    .parameter "handler"
    .parameter "key"

    .prologue
    .line 474
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 475
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollRuntime;->exceptionHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_0
    return-void
.end method

.method public static decrementActivityRefCount()V
    .locals 2

    .prologue
    .line 348
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 349
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    sget v1, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->dispose()V

    goto :goto_0
.end method

.method public static decrementServiceReceiverRefCount()V
    .locals 2

    .prologue
    .line 372
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    .line 373
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    sget v1, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->dispose()V

    goto :goto_0
.end method

.method public static decrementServiceRefCount()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    const-string v0, "KrollRuntime"

    const-string v1, "decrementServiceRefCount() is deprecated.  Please use decrementServiceReceiverRefCount() instead."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->decrementServiceReceiverRefCount()V

    .line 400
    return-void
.end method

.method public static dispatchException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 12
    .parameter "title"
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 494
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_2

    .line 495
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v8, v0, Lorg/appcelerator/kroll/KrollRuntime;->exceptionHandlers:Ljava/util/HashMap;

    .line 498
    .local v8, handlers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollExceptionHandler;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 500
    .local v10, key:Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/kroll/KrollExceptionHandler;

    .line 501
    .local v7, currentHandler:Lorg/appcelerator/kroll/KrollExceptionHandler;
    if-eqz v7, :cond_0

    .line 502
    new-instance v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v7, v0}, Lorg/appcelerator/kroll/KrollExceptionHandler;->handleException(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    goto :goto_0

    .line 509
    .end local v7           #currentHandler:Lorg/appcelerator/kroll/KrollExceptionHandler;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v11, v0, Lorg/appcelerator/kroll/KrollRuntime;->primaryExceptionHandler:Lorg/appcelerator/kroll/KrollExceptionHandler;

    new-instance v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v11, v0}, Lorg/appcelerator/kroll/KrollExceptionHandler;->handleException(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    .line 512
    .end local v8           #handlers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollExceptionHandler;>;"
    :cond_2
    return-void
.end method

.method public static getActivityRefCount()I
    .locals 1

    .prologue
    .line 358
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    return v0
.end method

.method public static getInstance()Lorg/appcelerator/kroll/KrollRuntime;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    return-object v0
.end method

.method public static getServiceReceiverRefCount()I
    .locals 1

    .prologue
    .line 382
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    return v0
.end method

.method public static getServiceRefCount()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    const-string v0, "KrollRuntime"

    const-string v1, "getServiceRefCount() is deprecated.  Please use getServiceReceiverRefCount() instead."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getServiceReceiverRefCount()I

    move-result v0

    return v0
.end method

.method public static incrementActivityRefCount()V
    .locals 2

    .prologue
    .line 340
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    .line 341
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    sget v1, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->syncInit()V

    .line 344
    :cond_0
    return-void
.end method

.method public static incrementServiceReceiverRefCount()V
    .locals 2

    .prologue
    .line 364
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    .line 365
    sget v0, Lorg/appcelerator/kroll/KrollRuntime;->activityRefCount:I

    sget v1, Lorg/appcelerator/kroll/KrollRuntime;->serviceReceiverRefCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 366
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->syncInit()V

    .line 368
    :cond_0
    return-void
.end method

.method public static incrementServiceRefCount()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    const-string v0, "KrollRuntime"

    const-string v1, "incrementServiceRefCount() is deprecated.  Please use incrementServiceReceiverRefCount() instead."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->incrementServiceReceiverRefCount()V

    .line 392
    return-void
.end method

.method public static init(Landroid/content/Context;Lorg/appcelerator/kroll/KrollRuntime;)V
    .locals 3
    .parameter "context"
    .parameter "runtime"

    .prologue
    .line 119
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-eq v1, v2, :cond_0

    .line 120
    invoke-virtual {p1, p0}, Lorg/appcelerator/kroll/KrollRuntime;->getThreadStackSize(Landroid/content/Context;)I

    move-result v0

    .line 121
    .local v0, stackSize:I
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v1, p0

    check-cast v1, Lorg/appcelerator/kroll/KrollApplication;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    .line 122
    new-instance v1, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    invoke-direct {v1, p1, v0}, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;-><init>(Lorg/appcelerator/kroll/KrollRuntime;I)V

    iput-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->exceptionHandlers:Ljava/util/HashMap;

    .line 125
    sput-object p1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    .line 126
    iget-object v1, p1, Lorg/appcelerator/kroll/KrollRuntime;->thread:Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime$KrollRuntimeThread;->start()V

    .line 129
    .end local v0           #stackSize:I
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->init(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method private internalDispose()V
    .locals 4

    .prologue
    .line 411
    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v2

    .line 412
    :try_start_0
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v3, Lorg/appcelerator/kroll/KrollRuntime$State;->RELAUNCHED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v1, v3, :cond_1

    .line 415
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 416
    monitor-exit v2

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 420
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->doDispose()V

    .line 424
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 425
    .local v0, app:Lorg/appcelerator/kroll/KrollApplication;
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v0}, Lorg/appcelerator/kroll/KrollApplication;->dispose()V

    goto :goto_0

    .line 420
    .end local v0           #app:Lorg/appcelerator/kroll/KrollApplication;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v1, :cond_1

    .line 147
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v3, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    .line 151
    :cond_1
    return v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeExceptionHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 486
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 487
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollRuntime;->exceptionHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_0
    return-void
.end method

.method public static setPrimaryExceptionHandler(Lorg/appcelerator/kroll/KrollExceptionHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 459
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 460
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iput-object p0, v0, Lorg/appcelerator/kroll/KrollRuntime;->primaryExceptionHandler:Lorg/appcelerator/kroll/KrollExceptionHandler;

    .line 462
    :cond_0
    return-void
.end method

.method public static suggestGC()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->setGCFlag()V

    .line 142
    :cond_0
    return-void
.end method

.method private static syncInit()V
    .locals 4

    .prologue
    .line 316
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->waitForInit()V

    .line 321
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v1

    .line 322
    :try_start_0
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v0, v2, :cond_1

    .line 323
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 324
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->waitForInit()V

    .line 332
    return-void

    .line 326
    :cond_1
    :try_start_1
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime$State;->RELEASED:Lorg/appcelerator/kroll/KrollRuntime$State;

    if-ne v0, v2, :cond_0

    .line 327
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->RELAUNCHED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static waitForInit()V
    .locals 3

    .prologue
    .line 308
    :try_start_0
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->instance:Lorg/appcelerator/kroll/KrollRuntime;

    iget-object v1, v1, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 309
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 310
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v1, "KrollRuntime"

    const-string v2, "Interrupted while waiting for runtime to initialize"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 187
    const-string v1, "KrollRuntime"

    const-string v2, "Disposing runtime."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v2, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v2

    .line 191
    :try_start_0
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->RELEASED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 192
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 196
    .local v0, app:Lorg/appcelerator/kroll/KrollApplication;
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lorg/appcelerator/kroll/KrollApplication;->cancelTimers()V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;->internalDispose()V

    .line 206
    :goto_0
    return-void

    .line 192
    .end local v0           #app:Lorg/appcelerator/kroll/KrollApplication;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 204
    .restart local v0       #app:Lorg/appcelerator/kroll/KrollApplication;
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public abstract doDispose()V
.end method

.method public abstract doEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected doInit()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->initRuntime()V

    .line 178
    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    monitor-enter v1

    .line 179
    :try_start_0
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method

.method public evalString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "source"

    .prologue
    .line 229
    const-string v0, "<anonymous>"

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/kroll/KrollRuntime;->evalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "source"
    .parameter "filename"

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollRuntime;->doEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 258
    :goto_0
    return-object v1

    .line 254
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 258
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEvaluator()Lorg/appcelerator/kroll/KrollEvaluator;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

    return-object v0
.end method

.method public getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->krollApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getRuntimeName()Ljava/lang/String;
.end method

.method public getRuntimeState()Lorg/appcelerator/kroll/KrollRuntime$State;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->runtimeState:Lorg/appcelerator/kroll/KrollRuntime$State;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    return-wide v0
.end method

.method public getThreadStackSize(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 264
    instance-of v1, p1, Lorg/appcelerator/kroll/KrollApplication;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 265
    check-cast v0, Lorg/appcelerator/kroll/KrollApplication;

    .line 266
    .local v0, app:Lorg/appcelerator/kroll/KrollApplication;
    invoke-interface {v0}, Lorg/appcelerator/kroll/KrollApplication;->getThreadStackSize()I

    move-result v1

    .line 268
    .end local v0           #app:Lorg/appcelerator/kroll/KrollApplication;
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x4000

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 273
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 302
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->doInit()V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;->internalDispose()V

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, source:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, filename:Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/KrollProxySupport;

    .line 289
    .local v0, activityProxy:Lorg/appcelerator/kroll/KrollProxySupport;
    invoke-virtual {p0, v2, v1, v0}, Lorg/appcelerator/kroll/KrollRuntime;->doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    goto :goto_0

    .line 294
    .end local v0           #activityProxy:Lorg/appcelerator/kroll/KrollProxySupport;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #source:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "source"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2       #source:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .restart local v1       #filename:Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lorg/appcelerator/kroll/KrollRuntime;->doEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract initObject(Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method

.method public abstract initRuntime()V
.end method

.method public isRuntimeThread()Z
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/appcelerator/kroll/KrollRuntime;->threadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 3
    .parameter "source"
    .parameter "filename"
    .parameter "activityProxy"

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollRuntime;->doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollRuntime;->handler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setEvaluator(Lorg/appcelerator/kroll/KrollEvaluator;)V
    .locals 0
    .parameter "eval"

    .prologue
    .line 437
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollRuntime;->evaluator:Lorg/appcelerator/kroll/KrollEvaluator;

    .line 438
    return-void
.end method

.method public setGCFlag()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method
