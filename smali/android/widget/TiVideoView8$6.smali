.class Landroid/widget/TiVideoView8$6;
.super Ljava/lang/Object;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 629
    iput-object p1, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 632
    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #setter for: Landroid/widget/TiVideoView8;->mSurfaceWidth:I
    invoke-static {v4, p3}, Landroid/widget/TiVideoView8;->access$702(Landroid/widget/TiVideoView8;I)I

    .line 633
    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #setter for: Landroid/widget/TiVideoView8;->mSurfaceHeight:I
    invoke-static {v4, p4}, Landroid/widget/TiVideoView8;->access$802(Landroid/widget/TiVideoView8;I)I

    .line 634
    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mTargetState:I
    invoke-static {v4}, Landroid/widget/TiVideoView8;->access$900(Landroid/widget/TiVideoView8;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 635
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/TiVideoView8;->access$000(Landroid/widget/TiVideoView8;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/TiVideoView8;->access$100(Landroid/widget/TiVideoView8;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 636
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$400(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 637
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$600(Landroid/widget/TiVideoView8;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    iget-object v3, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I
    invoke-static {v3}, Landroid/widget/TiVideoView8;->access$600(Landroid/widget/TiVideoView8;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TiVideoView8;->seekTo(I)V

    .line 640
    :cond_0
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    invoke-virtual {v2}, Landroid/widget/TiVideoView8;->start()V

    .line 641
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 642
    iget-object v2, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 645
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 634
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 635
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 649
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #setter for: Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/widget/TiVideoView8;->access$1302(Landroid/widget/TiVideoView8;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 658
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #calls: Landroid/widget/TiVideoView8;->openVideo()V
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$1400(Landroid/widget/TiVideoView8;)V

    .line 661
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 666
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->access$1302(Landroid/widget/TiVideoView8;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 667
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 669
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mCurrentState:I
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$200(Landroid/widget/TiVideoView8;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 670
    iget-object v0, p0, Landroid/widget/TiVideoView8$6;->this$0:Landroid/widget/TiVideoView8;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TiVideoView8;->release(Z)V

    .line 672
    :cond_1
    return-void
.end method
