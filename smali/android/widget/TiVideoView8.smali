.class public Landroid/widget/TiVideoView8;
.super Landroid/view/SurfaceView;
.source "TiVideoView8.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TiVideoView8"


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mScalingMode:I

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateWhenSuspended:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TiVideoView8;->mScalingMode:I

    .line 98
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 99
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 102
    iput-object v2, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 103
    iput-object v2, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 120
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/TiVideoView8;->mVolume:F

    .line 468
    new-instance v0, Landroid/widget/TiVideoView8$1;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$1;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 479
    new-instance v0, Landroid/widget/TiVideoView8$2;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$2;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 549
    new-instance v0, Landroid/widget/TiVideoView8$3;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$3;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 563
    new-instance v0, Landroid/widget/TiVideoView8$4;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$4;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 584
    new-instance v0, Landroid/widget/TiVideoView8$5;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$5;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 629
    new-instance v0, Landroid/widget/TiVideoView8$6;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$6;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 125
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->initVideoView()V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TiVideoView8;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->initVideoView()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TiVideoView8;->mScalingMode:I

    .line 98
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 99
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 102
    iput-object v2, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 103
    iput-object v2, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 120
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/TiVideoView8;->mVolume:F

    .line 468
    new-instance v0, Landroid/widget/TiVideoView8$1;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$1;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 479
    new-instance v0, Landroid/widget/TiVideoView8$2;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$2;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 549
    new-instance v0, Landroid/widget/TiVideoView8$3;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$3;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 563
    new-instance v0, Landroid/widget/TiVideoView8$4;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$4;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 584
    new-instance v0, Landroid/widget/TiVideoView8$5;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$5;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 629
    new-instance v0, Landroid/widget/TiVideoView8$6;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView8$6;-><init>(Landroid/widget/TiVideoView8;)V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 137
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->initVideoView()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TiVideoView8;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/TiVideoView8;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/TiVideoView8;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/TiVideoView8;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/TiVideoView8;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/TiVideoView8;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/TiVideoView8;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1302(Landroid/widget/TiVideoView8;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/widget/TiVideoView8;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->openVideo()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TiVideoView8;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TiVideoView8;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TiVideoView8;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TiVideoView8;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TiVideoView8;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/TiVideoView8;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/TiVideoView8;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/TiVideoView8;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/TiVideoView8;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/TiVideoView8;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/TiVideoView8;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    return v0
.end method

.method static synthetic access$902(Landroid/widget/TiVideoView8;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    return p1
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 462
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 463
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 464
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 466
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 462
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    iput v2, p0, Landroid/widget/TiVideoView8;->mVideoWidth:I

    .line 282
    iput v2, p0, Landroid/widget/TiVideoView8;->mVideoHeight:I

    .line 283
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 284
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 285
    invoke-virtual {p0, v3}, Landroid/widget/TiVideoView8;->setFocusable(Z)V

    .line 286
    invoke-virtual {p0, v3}, Landroid/widget/TiVideoView8;->setFocusableInTouchMode(Z)V

    .line 287
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->requestFocus()Z

    .line 288
    iput v2, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 289
    iput v2, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 290
    return-void
.end method

.method private openVideo()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 385
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.music.musicservicecommand"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v8, i:Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "pause"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    invoke-virtual {p0, v11}, Landroid/widget/TiVideoView8;->release(Z)V

    .line 400
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 401
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 402
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 403
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    .line 404
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 405
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 406
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TiVideoView8;->mCurrentBufferPercentage:I

    .line 410
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    const/4 v6, 0x0

    .line 414
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 415
    .local v9, path:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 416
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    if-eqz v6, :cond_2

    .line 419
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 425
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 426
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 427
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 428
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 429
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/widget/TiVideoView8;->mVolume:F

    iget v2, p0, Landroid/widget/TiVideoView8;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 432
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 433
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->attachMediaController()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 434
    :catch_0
    move-exception v7

    .line 435
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "TiVideoView8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    iput v10, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 437
    iput v10, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 438
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v12, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 418
    .end local v7           #ex:Ljava/io/IOException;
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 419
    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 440
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v7

    .line 441
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "TiVideoView8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    iput v10, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 443
    iput v10, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 444
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v12, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 423
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_4
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->setDataSource()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method private setDataSource()V
    .locals 11

    .prologue
    .line 346
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_1

    const-string v8, "http"

    iget-object v9, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "https"

    iget-object v9, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 352
    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rtsp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 377
    :cond_1
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 381
    :goto_1
    return-void

    .line 355
    :cond_2
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 356
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 357
    .local v1, cn:Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 358
    const-string v8, "Location"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, location:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 360
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, host:Ljava/lang/String;
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v5

    .line 362
    .local v5, port:I
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, scheme:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    .line 364
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 366
    if-nez v6, :cond_3

    .line 367
    const-string v6, "http"

    .line 369
    :cond_3
    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    move-object v0, v3

    .line 370
    .local v0, authority:Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #cn:Ljava/net/HttpURLConnection;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #location:Ljava/lang/String;
    .end local v5           #port:I
    .end local v6           #scheme:Ljava/lang/String;
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 379
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "TiVideoView8"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error setting video data source: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 369
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cn:Ljava/net/HttpURLConnection;
    .restart local v3       #host:Ljava/lang/String;
    .restart local v4       #location:Ljava/lang/String;
    .restart local v5       #port:I
    .restart local v6       #scheme:Ljava/lang/String;
    .restart local v7       #url:Ljava/net/URL;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 743
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 857
    iget v0, p0, Landroid/widget/TiVideoView8;->mCurrentBufferPercentage:I

    .line 859
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 836
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    if-lez v0, :cond_0

    .line 822
    iget v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    .line 828
    :goto_0
    return v0

    .line 824
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    .line 825
    iget v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    goto :goto_0

    .line 827
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    .line 828
    iget v0, p0, Landroid/widget/TiVideoView8;->mDuration:I

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 864
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureVideo(IIII)V
    .locals 15
    .parameter "videoWidth"
    .parameter "videoHeight"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 183
    const-string v12, "TiVideoView8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "******* mVideoWidth: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mVideoHeight: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " width: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " height: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->getDefaultSize(II)I

    move-result v11

    .line 187
    .local v11, width:I
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/widget/TiVideoView8;->getDefaultSize(II)I

    move-result v5

    .line 188
    .local v5, height:I
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 190
    iget v12, p0, Landroid/widget/TiVideoView8;->mScalingMode:I

    packed-switch v12, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, model:Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v12, "SPH-P100"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 221
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 222
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 223
    .local v3, d:Landroid/view/Display;
    if-eqz v3, :cond_2

    .line 224
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 225
    .local v4, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 226
    sget v12, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    iget v13, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v12, v13, :cond_2

    .line 227
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    sget v13, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 228
    .local v7, maxScaledWidth:I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    sget v13, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v6, v12

    .line 230
    .local v6, maxScaledHeight:I
    int-to-float v12, v11

    sget v13, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    mul-float/2addr v12, v13

    int-to-float v13, v7

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 231
    move v10, v11

    .line 232
    .local v10, oldWidth:I
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 233
    const-string v12, "TiVideoView8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOO WIDE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " changed to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v10           #oldWidth:I
    :cond_1
    int-to-float v12, v5

    sget v13, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    mul-float/2addr v12, v13

    int-to-float v13, v6

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 236
    move v9, v5

    .line 237
    .local v9, oldHeight:I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 238
    const-string v12, "TiVideoView8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOO HIGH: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " changed to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #d:Landroid/view/Display;
    .end local v4           #dm:Landroid/util/DisplayMetrics;
    .end local v6           #maxScaledHeight:I
    .end local v7           #maxScaledWidth:I
    .end local v9           #oldHeight:I
    :cond_2
    const-string v12, "TiVideoView8"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setting size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x78

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0, v11, v5}, Landroid/widget/TiVideoView8;->setMeasuredDimension(II)V

    .line 245
    return-void

    .line 192
    .end local v8           #model:Ljava/lang/String;
    :pswitch_0
    move/from16 v11, p1

    .line 193
    move/from16 v5, p2

    .line 194
    goto/16 :goto_0

    .line 197
    :pswitch_1
    mul-int v12, p1, v5

    mul-int v13, v11, p2

    if-le v12, v13, :cond_3

    .line 198
    mul-int v12, v5, p1

    div-int v11, v12, p2

    goto/16 :goto_0

    .line 199
    :cond_3
    mul-int v12, p1, v5

    mul-int v13, v11, p2

    if-ge v12, v13, :cond_0

    .line 200
    mul-int v12, v11, p2

    div-int v5, v12, p1

    goto/16 :goto_0

    .line 205
    :pswitch_2
    mul-int v12, p1, v5

    mul-int v13, v11, p2

    if-le v12, v13, :cond_4

    .line 206
    mul-int v12, v11, p2

    div-int v5, v12, p1

    goto/16 :goto_0

    .line 207
    :cond_4
    mul-int v12, p1, v5

    mul-int v13, v11, p2

    if-ge v12, v13, :cond_0

    .line 208
    mul-int v12, v5, p1

    div-int v11, v12, p2

    goto/16 :goto_0

    .line 213
    :pswitch_3
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 214
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    goto/16 :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 712
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 715
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_4

    .line 716
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_3

    .line 717
    :cond_0
    iget-object v2, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 718
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->pause()V

    .line 719
    iget-object v2, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 733
    :goto_1
    return v1

    .line 712
    .end local v0           #isKeyCodeSupported:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 721
    .restart local v0       #isKeyCodeSupported:Z
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->start()V

    .line 722
    iget-object v2, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 725
    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 726
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->pause()V

    .line 727
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 733
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 729
    :cond_5
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 175
    iget v0, p0, Landroid/widget/TiVideoView8;->mVideoWidth:I

    iget v1, p0, Landroid/widget/TiVideoView8;->mVideoHeight:I

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/widget/TiVideoView8;->measureVideo(IIII)V

    .line 176
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 179
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 694
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->toggleMediaControlsVisiblity()V

    .line 697
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 704
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->toggleMediaControlsVisiblity()V

    .line 706
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 765
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 768
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 770
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    invoke-interface {v0}, Lti/modules/titanium/media/TiPlaybackListener;->onPausePlayback()V

    .line 775
    :cond_0
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 776
    return-void
.end method

.method public release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 680
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 682
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 684
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 685
    if-eqz p1, :cond_0

    .line 686
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 689
    :cond_0
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 249
    move v0, p1

    .line 250
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 251
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 253
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 276
    :goto_0
    return v0

    .line 259
    :sswitch_0
    move v0, p1

    .line 260
    goto :goto_0

    .line 268
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 269
    goto :goto_0

    .line 273
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 841
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    iput p1, p0, Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 451
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 454
    :cond_0
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mMediaController:Landroid/widget/MediaController;

    .line 455
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->attachMediaController()V

    .line 456
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 612
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 613
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 626
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 627
    return-void
.end method

.method public setOnPlaybackListener(Lti/modules/titanium/media/TiPlaybackListener;)V
    .locals 0
    .parameter "tiPlaybackListener"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    .line 144
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 600
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 601
    return-void
.end method

.method public setScalingMode(I)V
    .locals 0
    .parameter "scalingMode"

    .prologue
    .line 885
    iput p1, p0, Landroid/widget/TiVideoView8;->mScalingMode:I

    .line 886
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 294
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;)V

    .line 295
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TiVideoView8;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 300
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/TiVideoView8;->mUri:Landroid/net/Uri;

    .line 308
    iput-object p2, p0, Landroid/widget/TiVideoView8;->mHeaders:Ljava/util/Map;

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TiVideoView8;->mSeekWhenPrepared:I

    .line 310
    invoke-direct {p0}, Landroid/widget/TiVideoView8;->openVideo()V

    .line 311
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->requestLayout()V

    .line 312
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->invalidate()V

    .line 313
    return-void
.end method

.method public setVolume(F)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/TiVideoView8;->mVolume:F

    .line 321
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/widget/TiVideoView8;->mVolume:F

    iget v2, p0, Landroid/widget/TiVideoView8;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 324
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 747
    invoke-virtual {p0}, Landroid/widget/TiVideoView8;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 749
    iget v0, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 750
    .local v0, oldState:I
    iput v2, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 752
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    invoke-interface {v1}, Lti/modules/titanium/media/TiPlaybackListener;->onStartPlayback()V

    .line 755
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 756
    :cond_0
    iget-object v1, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    invoke-interface {v1}, Lti/modules/titanium/media/TiPlaybackListener;->onPlayingPlayback()V

    .line 760
    .end local v0           #oldState:I
    :cond_1
    iput v2, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 761
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 331
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mPlaybackListener:Lti/modules/titanium/media/TiPlaybackListener;

    invoke-interface {v0}, Lti/modules/titanium/media/TiPlaybackListener;->onStopPlayback()V

    .line 334
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TiVideoView8;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 336
    iput v1, p0, Landroid/widget/TiVideoView8;->mCurrentState:I

    .line 337
    iput v1, p0, Landroid/widget/TiVideoView8;->mTargetState:I

    .line 339
    :cond_1
    return-void
.end method
