.class Landroid/widget/TiVideoView8$4;
.super Ljava/lang/Object;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 563
    iput-object p1, p0, Landroid/widget/TiVideoView8$4;->this$0:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 566
    const-string v0, "TiVideoView8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Landroid/widget/TiVideoView8$4;->this$0:Landroid/widget/TiVideoView8;

    #setter for: Landroid/widget/TiVideoView8;->mCurrentState:I
    invoke-static {v0, v3}, Landroid/widget/TiVideoView8;->access$202(Landroid/widget/TiVideoView8;I)I

    .line 568
    iget-object v0, p0, Landroid/widget/TiVideoView8$4;->this$0:Landroid/widget/TiVideoView8;

    #setter for: Landroid/widget/TiVideoView8;->mTargetState:I
    invoke-static {v0, v3}, Landroid/widget/TiVideoView8;->access$902(Landroid/widget/TiVideoView8;I)I

    .line 569
    iget-object v0, p0, Landroid/widget/TiVideoView8$4;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Landroid/widget/TiVideoView8$4;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8$4;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$1100(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroid/widget/TiVideoView8$4;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Landroid/widget/TiVideoView8;->access$1100(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView8$4;->this$0:Landroid/widget/TiVideoView8;

    #getter for: Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/widget/TiVideoView8;->access$400(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    :cond_1
    return v4
.end method
