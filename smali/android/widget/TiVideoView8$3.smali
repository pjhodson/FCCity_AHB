.class Landroid/widget/TiVideoView8$3;
.super Ljava/lang/Object;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 549
    iput-object p1, p0, Landroid/widget/TiVideoView8$3;->this$0:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x5

    .line 552
    iget-object v0, p0, Landroid/widget/TiVideoView8$3;->this$0:Landroid/widget/TiVideoView8;

    #setter for: Landroid/widget/TiVideoView8;->mCurrentState:I
    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->access$202(Landroid/widget/TiVideoView8;I)I

    .line 553
    iget-object v0, p0, Landroid/widget/TiVideoView8$3;->this$0:Landroid/widget/TiVideoView8;

    #setter for: Landroid/widget/TiVideoView8;->mTargetState:I
    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->access$902(Landroid/widget/TiVideoView8;I)I

    .line 554
    iget-object v0, p0, Landroid/widget/TiVideoView8$3;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Landroid/widget/TiVideoView8$3;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8$3;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$1000(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Landroid/widget/TiVideoView8$3;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$1000(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView8$3;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$400(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 560
    :cond_1
    return-void
.end method
