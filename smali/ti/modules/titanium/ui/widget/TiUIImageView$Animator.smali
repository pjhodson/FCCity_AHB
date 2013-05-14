.class Lti/modules/titanium/ui/widget/TiUIImageView$Animator;
.super Ljava/util/TimerTask;
.source "TiUIImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animator"
.end annotation


# instance fields
.field private loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lti/modules/titanium/ui/widget/TiUIImageView$Loader;)V
    .locals 0
    .parameter
    .parameter "loader"

    .prologue
    .line 488
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 489
    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 490
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 494
    const/4 v3, 0x0

    .line 496
    .local v3, waitOnResume:Z
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z
    invoke-static {v4}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :try_start_1
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 499
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const-string v5, "pause"

    invoke-virtual {v4, v5, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 500
    const/4 v3, 0x1

    .line 501
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 502
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    :try_start_2
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getBitmapQueue()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;

    .line 506
    .local v0, b:Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    const-string v4, "TiUIImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget-object v5, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->bitmap:Landroid/graphics/Bitmap;

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V
    invoke-static {v4, v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$600(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V

    .line 508
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget v5, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->index:I

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->fireChange(I)V
    invoke-static {v4, v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;I)V

    .line 514
    if-eqz v3, :cond_1

    .line 515
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I
    invoke-static {v4}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1600(Lti/modules/titanium/ui/widget/TiUIImageView;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 516
    const/4 v3, 0x0

    .line 521
    .end local v0           #b:Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    :cond_1
    :goto_0
    return-void

    .line 502
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 518
    :catch_0
    move-exception v2

    .line 519
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v4, "TiUIImageView"

    const-string v5, "Loader interrupted"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
