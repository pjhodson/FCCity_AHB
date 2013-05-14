.class Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loader"
.end annotation


# instance fields
.field private bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;",
            ">;"
        }
    .end annotation
.end field

.field private repeatIndex:I

.field private sleepTime:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

.field private waitTime:I


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 270
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I

    .line 266
    const/16 v0, 0x32

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->sleepTime:I

    .line 267
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 271
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 272
    return-void
.end method

.method private getCounter()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, -0x1

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getStart()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private isNotFinalFrame(I)Z
    .locals 4
    .parameter "frame"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 297
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 298
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 299
    monitor-exit v2

    .line 304
    :goto_0
    return v0

    .line 301
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z
    invoke-static {v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    if-ltz p1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 304
    :cond_2
    :try_start_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    move v0, v1

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isRepeating()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 276
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->getRepeatCount()I

    move-result v0

    .line 277
    .local v0, repeatCount:I
    if-gtz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    if-lt v2, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBitmapQueue()Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 318
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    if-nez v6, :cond_0

    .line 319
    const-string v6, "TiUIImageView"

    const-string v7, "Multi-image loader exiting early because proxy has been gc\'d"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return-void

    .line 322
    :cond_0
    const/4 v6, 0x0

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 323
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const/4 v7, 0x0

    #setter for: Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z
    invoke-static {v6, v7}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$702(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    .line 325
    :goto_1
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->isRepeating()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 327
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_2

    .line 395
    :cond_1
    :goto_2
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 330
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 331
    .local v4, time:J
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getStart()I

    move-result v3

    .local v3, j:I
    :goto_3
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->isNotFinalFrame(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 332
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 333
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const-string v7, "images"

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$800(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V

    .line 334
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const/4 v7, 0x1

    #setter for: Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z
    invoke-static {v6, v7}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$702(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    .line 336
    :cond_3
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_6

    .line 338
    :try_start_0
    const-string v6, "TiUIImageView"

    const-string v7, "Pausing"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1300(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-nez v6, :cond_5

    .line 392
    :cond_4
    const-string v6, "TiUIImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TIME TO LOAD FRAMES: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 344
    :cond_5
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 346
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    :try_start_3
    const-string v6, "TiUIImageView"

    const-string v7, "Waking from pause."

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    if-eqz v6, :cond_1

    .line 359
    :cond_6
    :goto_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    .line 363
    const/4 v6, 0x0

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I

    .line 364
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 365
    :try_start_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_8

    .line 366
    :cond_7
    monitor-exit v7

    goto/16 :goto_2

    .line 388
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 346
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "TiUIImageView"

    const-string v7, "Interrupted from paused state."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 368
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_8
    :try_start_7
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiDrawableReference;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {v1, v6, v0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;I)V

    .line 370
    .local v1, bIndex:Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    :goto_5
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I

    int-to-double v8, v6

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->getDuration()D

    move-result-wide v10

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v6

    int-to-double v12, v6

    mul-double/2addr v10, v12

    cmpg-double v6, v8, v10

    if-gez v6, :cond_9

    .line 372
    :try_start_8
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 373
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v6

    if-eqz v6, :cond_a

    .line 388
    :cond_9
    :goto_6
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 389
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 331
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getCounter()I

    move-result v6

    add-int/2addr v3, v6

    goto/16 :goto_3

    .line 376
    :cond_a
    :try_start_a
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->sleepTime:I

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 377
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I

    iget v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->sleepTime:I

    add-int/2addr v6, v8

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    .line 383
    :catch_1
    move-exception v2

    .line 384
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_b
    const-string v6, "TiUIImageView"

    const-string v8, "Interrupted while adding Bitmap into bitmapQueue"

    invoke-static {v6, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6
.end method
