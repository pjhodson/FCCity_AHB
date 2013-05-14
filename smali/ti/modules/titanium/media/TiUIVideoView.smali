.class public Lti/modules/titanium/media/TiUIVideoView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lti/modules/titanium/media/TiPlaybackListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIView"


# instance fields
.field private mediaController:Landroid/widget/MediaController;

.field private videoView:Landroid/widget/TiVideoView8;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 40
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    .line 41
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 42
    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 43
    return-void
.end method

.method private getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/media/VideoPlayerProxy;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->nativeView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 66
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 67
    .local v0, layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiUIVideoView;->setNativeView(Landroid/view/View;)V

    .line 70
    .end local v0           #layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, p0}, Landroid/widget/TiVideoView8;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 71
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, p0}, Landroid/widget/TiVideoView8;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 72
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, p0}, Landroid/widget/TiVideoView8;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 73
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, p0}, Landroid/widget/TiVideoView8;->setOnPlaybackListener(Lti/modules/titanium/media/TiPlaybackListener;)V

    .line 74
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    new-instance v2, Lti/modules/titanium/media/TiUIVideoView$1;

    invoke-direct {v2, p0}, Lti/modules/titanium/media/TiUIVideoView$1;-><init>(Lti/modules/titanium/media/TiUIVideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getCurrentPlaybackTime()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public hideMediaController()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 225
    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 316
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackComplete()V

    .line 317
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 322
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackError(I)V

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onPausePlayback()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackPaused()V

    .line 336
    return-void
.end method

.method public onPlayingPlayback()V
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaying()V

    .line 348
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 310
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackReady(I)V

    .line 311
    return-void
.end method

.method public onStartPlayback()V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackStarted()V

    .line 330
    return-void
.end method

.method public onStopPlayback()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/media/VideoPlayerProxy;->onPlaybackStopped()V

    .line 342
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    .line 229
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const-string v1, "TiUIView"

    const-string v2, "play() ignored, already playing"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, urlObj:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 242
    const-string v1, "TiUIView"

    const-string v2, "play() ignored, no url set."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 246
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const/4 v3, 0x0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;)V

    .line 247
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->seekIfNeeded()V

    .line 250
    .end local v0           #urlObj:Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1}, Landroid/widget/TiVideoView8;->start()V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 108
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Landroid/widget/TiVideoView8;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TiVideoView8;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    .line 110
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->initView()V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 114
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_2

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 120
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 122
    const-string v1, "contentURL"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    const-string v1, "TiUIView"

    const-string v2, "contentURL is deprecated, use url instead"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    :cond_3
    if-eqz v0, :cond_4

    .line 129
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;)V

    .line 130
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->seekIfNeeded()V

    .line 134
    :cond_4
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/media/VideoPlayerProxy;->getScalingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setScalingMode(I)V

    .line 137
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/media/VideoPlayerProxy;->getMediaControlStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiUIVideoView;->setMediaControlStyle(I)V

    .line 139
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    const-string v2, "volume"

    const/high16 v3, 0x3f80

    invoke-static {p1, v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setVolume(F)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 147
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "contentURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->getPlayerProxy()Lti/modules/titanium/media/VideoPlayerProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/VideoPlayerProxy;->fireLoadState(I)V

    .line 153
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    const/4 v1, 0x0

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;)V

    .line 154
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->seekIfNeeded()V

    .line 155
    const-string v0, "contentURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "TiUIView"

    const-string v1, "contentURL is deprecated, use url instead"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "url"

    invoke-virtual {p4, v0, p3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_3
    const-string v0, "scalingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TiVideoView8;->setScalingMode(I)V

    goto :goto_0

    .line 162
    :cond_4
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TiVideoView8;->setVolume(F)V

    goto :goto_0

    .line 166
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 302
    invoke-virtual {p0}, Lti/modules/titanium/media/TiUIVideoView;->releaseVideoView()V

    .line 303
    iput-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    .line 304
    iput-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    .line 305
    return-void
.end method

.method public releaseVideoView()V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->release(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TiUIView"

    const-string v2, "Exception while releasing video resources"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 280
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0, p1}, Landroid/widget/TiVideoView8;->seekTo(I)V

    goto :goto_0
.end method

.method public seekIfNeeded()V
    .locals 6

    .prologue
    .line 86
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v1, 0x0

    .line 90
    .local v1, seekTo:I
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "initialPlaybackTime"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, initialPlaybackTime:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 92
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 95
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "__seek_to_on_resume__"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, seekToOnResume:Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 97
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 98
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "__seek_to_on_resume__"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_3
    if-lez v1, :cond_0

    .line 101
    iget-object v3, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v3, v1}, Landroid/widget/TiVideoView8;->seekTo(I)V

    goto :goto_0
.end method

.method public setMediaControlStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 189
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 195
    .local v0, showController:Z
    packed-switch p1, :pswitch_data_0

    .line 207
    :goto_1
    if-eqz v0, :cond_3

    .line 208
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    if-nez v1, :cond_1

    .line 209
    new-instance v1, Landroid/widget/MediaController;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    .line 211
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 212
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 214
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    iget-object v2, p0, Lti/modules/titanium/media/TiUIVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    .line 199
    :pswitch_0
    const/4 v0, 0x1

    .line 200
    goto :goto_1

    .line 203
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    .line 216
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TiVideoView8;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setScalingMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 180
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0, p1}, Landroid/widget/TiVideoView8;->setScalingMode(I)V

    goto :goto_0
.end method

.method public setVideoViewFromActivityLayout(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 3
    .parameter "layout"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lti/modules/titanium/media/TiUIVideoView;->setNativeView(Landroid/view/View;)V

    .line 53
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Landroid/widget/TiVideoView8;

    if-eqz v2, :cond_1

    .line 56
    check-cast v0, Landroid/widget/TiVideoView8;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    .line 60
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/media/TiUIVideoView;->initView()V

    .line 61
    return-void

    .line 53
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiUIVideoView;->videoView:Landroid/widget/TiVideoView8;

    invoke-virtual {v0}, Landroid/widget/TiVideoView8;->stopPlayback()V

    goto :goto_0
.end method
