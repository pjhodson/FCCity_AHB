.class Lti/modules/titanium/media/VideoPlayerProxy$1;
.super Ljava/lang/Object;
.source "VideoPlayerProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/VideoPlayerProxy;->createControlHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/VideoPlayerProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/VideoPlayerProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, handled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 218
    :goto_0
    return v0

    .line 189
    :pswitch_0
    const-string v2, "VideoPlayerProxy"

    const-string v3, "TiVideoActivity sending configuration changed message to proxy"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    #getter for: Lti/modules/titanium/media/VideoPlayerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-static {v2}, Lti/modules/titanium/media/VideoPlayerProxy;->access$000(Lti/modules/titanium/media/VideoPlayerProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 193
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    #calls: Lti/modules/titanium/media/VideoPlayerProxy;->getVideoView()Lti/modules/titanium/media/TiUIVideoView;
    invoke-static {v2}, Lti/modules/titanium/media/VideoPlayerProxy;->access$100(Lti/modules/titanium/media/VideoPlayerProxy;)Lti/modules/titanium/media/TiUIVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/media/TiUIVideoView;->hideMediaController()V

    .line 199
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 200
    goto :goto_0

    .line 196
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-virtual {v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x529

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 202
    :pswitch_1
    const-string v2, "VideoPlayerProxy"

    const-string v3, "TiVideoActivity sending activity started message to proxy"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lti/modules/titanium/media/TiVideoActivity;

    .line 209
    .local v1, videoActivity:Lti/modules/titanium/media/TiVideoActivity;
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-virtual {v2, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->setActivity(Landroid/app/Activity;)V

    .line 210
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    iget-object v3, v1, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    #calls: Lti/modules/titanium/media/VideoPlayerProxy;->setVideoViewFromActivity(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    invoke-static {v2, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->access$200(Lti/modules/titanium/media/VideoPlayerProxy;Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    .line 215
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-virtual {v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-virtual {v3}, Lti/modules/titanium/media/VideoPlayerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x52a

    iget-object v5, v1, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 187
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
