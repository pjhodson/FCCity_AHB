.class Landroid/widget/TiVideoView8$2;
.super Ljava/lang/Object;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TiVideoView8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TiVideoView8;


# direct methods
.method constructor <init>(Landroid/widget/TiVideoView8;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v4, 0x3

    .line 482
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    const/4 v2, 0x2

    #setter for: Landroid/widget/TiVideoView8;->mCurrentState:I
    invoke-static {v1, v2}, Landroid/widget/TiVideoView8;->access$202(Landroid/widget/TiVideoView8;I)I

    .line 501
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$300(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$300(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$400(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 504
    :cond_0
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 507
    :cond_1
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    #setter for: Landroid/widget/TiVideoView8;->mVideoWidth:I
    invoke-static {v1, v2}, Landroid/widget/TiVideoView8;->access$002(Landroid/widget/TiVideoView8;I)I

    .line 508
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    #setter for: Landroid/widget/TiVideoView8;->mVideoHeight:I
    invoke-static {v1, v2}, Landroid/widget/TiVideoView8;->access$102(Landroid/widget/TiVideoView8;I)I

    .line 510
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$600(Landroid/widget/TiVideoView8;)I

    move-result v0

    .line 513
    .local v0, seekToPosition:I
    if-eqz v0, :cond_2

    .line 514
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, v0}, Landroid/widget/TiVideoView8;->seekTo(I)V

    .line 516
    :cond_2
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mVideoWidth:I
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$000(Landroid/widget/TiVideoView8;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mVideoHeight:I
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$100(Landroid/widget/TiVideoView8;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 519
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mVideoWidth:I
    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$000(Landroid/widget/TiVideoView8;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mVideoHeight:I
    invoke-static {v3}, Landroid/widget/TiVideoView8;->access$100(Landroid/widget/TiVideoView8;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 520
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mSurfaceWidth:I
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$700(Landroid/widget/TiVideoView8;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mVideoWidth:I
    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$000(Landroid/widget/TiVideoView8;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mSurfaceHeight:I
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$800(Landroid/widget/TiVideoView8;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mVideoHeight:I
    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$100(Landroid/widget/TiVideoView8;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 526
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mTargetState:I
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$900(Landroid/widget/TiVideoView8;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 527
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->start()V

    .line 528
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 546
    :cond_3
    :goto_0
    return-void

    .line 531
    :cond_4
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 532
    :cond_5
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 542
    :cond_6
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mTargetState:I
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$900(Landroid/widget/TiVideoView8;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 543
    iget-object v1, p0, Landroid/widget/TiVideoView8$2;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->start()V

    goto :goto_0
.end method
