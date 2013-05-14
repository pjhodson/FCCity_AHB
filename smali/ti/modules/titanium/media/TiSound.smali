.class public Lti/modules/titanium/media/TiSound;
.super Ljava/lang/Object;
.source "TiSound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# static fields
.field public static final EVENT_CHANGE:Ljava/lang/String; = "change"

.field public static final EVENT_COMPLETE:Ljava/lang/String; = "complete"

.field public static final EVENT_COMPLETE_JSON:Ljava/lang/String; = "{ type : \'complete\' }"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_PROGRESS:Ljava/lang/String; = "progress"

.field public static final STATE_BUFFERING:I = 0x0

.field public static final STATE_BUFFERING_DESC:Ljava/lang/String; = "buffering"

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_INITIALIZED_DESC:Ljava/lang/String; = "initialized"

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PAUSED_DESC:Ljava/lang/String; = "paused"

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PLAYING_DESC:Ljava/lang/String; = "playing"

.field public static final STATE_STARTING:I = 0x4

.field public static final STATE_STARTING_DESC:Ljava/lang/String; = "starting"

.field public static final STATE_STOPPED:I = 0x5

.field public static final STATE_STOPPED_DESC:Ljava/lang/String; = "stopped"

.field public static final STATE_STOPPING:I = 0x6

.field public static final STATE_STOPPING_DESC:Ljava/lang/String; = "stopping"

.field public static final STATE_WAITING_FOR_DATA:I = 0x7

.field public static final STATE_WAITING_FOR_DATA_DESC:Ljava/lang/String; = "waiting for data"

.field public static final STATE_WAITING_FOR_QUEUE:I = 0x8

.field public static final STATE_WAITING_FOR_QUEUE_DESC:Ljava/lang/String; = "waiting for queue"

.field private static final TAG:Ljava/lang/String; = "TiSound"


# instance fields
.field private looping:Z

.field protected mp:Landroid/media/MediaPlayer;

.field private paused:Z

.field protected playOnResume:Z

.field protected progressTimer:Ljava/util/Timer;

.field protected proxy:Lorg/appcelerator/kroll/KrollProxy;

.field protected remote:Z

.field protected volume:F


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 64
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    .line 75
    iput-object p1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 76
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 77
    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    .line 78
    return-void
.end method

.method private setState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 324
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    const-string v1, ""

    .line 327
    .local v1, stateDescription:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 357
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "stateDescription"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string v2, "TiSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 361
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "change"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 365
    return-void

    .line 329
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :pswitch_0
    const-string v1, "buffering"

    .line 330
    goto :goto_0

    .line 332
    :pswitch_1
    const-string v1, "initialized"

    .line 333
    goto :goto_0

    .line 335
    :pswitch_2
    const-string v1, "paused"

    .line 336
    goto :goto_0

    .line 338
    :pswitch_3
    const-string v1, "playing"

    .line 339
    goto :goto_0

    .line 341
    :pswitch_4
    const-string v1, "starting"

    .line 342
    goto :goto_0

    .line 344
    :pswitch_5
    const-string v1, "stopped"

    .line 345
    goto :goto_0

    .line 347
    :pswitch_6
    const-string v1, "stopping"

    .line 348
    goto :goto_0

    .line 350
    :pswitch_7
    const-string v1, "waiting for data"

    .line 351
    goto :goto_0

    .line 353
    :pswitch_8
    const-string v1, "waiting for queue"

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private startProgressTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    .line 463
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    .line 470
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lti/modules/titanium/media/TiSound$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/TiSound$1;-><init>(Lti/modules/titanium/media/TiSound;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 482
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 467
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private stopProgressTimer()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->progressTimer:Ljava/util/Timer;

    .line 490
    :cond_0
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, duration:I
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 284
    :cond_0
    return v0
.end method

.method public getTime()I
    .locals 3

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, time:I
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 297
    :goto_0
    return v0

    .line 294
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "time"

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected initialize()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, url:Ljava/lang/String;
    invoke-static {v13}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v9

    .line 87
    .local v9, isAsset:Z
    if-nez v9, :cond_0

    const-string v0, "android.resource"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 89
    .local v7, context:Landroid/content/Context;
    const/4 v6, 0x0

    .line 91
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v9, :cond_3

    .line 92
    :try_start_1
    const-string v0, "file:///android_asset/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, path:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 100
    .end local v10           #path:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    if-eqz v6, :cond_1

    .line 105
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 118
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v7           #context:Landroid/content/Context;
    :cond_1
    :goto_1
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 119
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 120
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 121
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 122
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 124
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 127
    iget v0, p0, Lti/modules/titanium/media/TiSound;->volume:F

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 128
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setTime(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    .end local v9           #isAsset:Z
    .end local v13           #url:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 95
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v7       #context:Landroid/content/Context;
    .restart local v9       #isAsset:Z
    .restart local v13       #url:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 96
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_0

    .line 101
    .end local v12           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 102
    .local v8, e:Ljava/io/IOException;
    :try_start_4
    const-string v0, "TiSound"

    const-string v1, "Error setting file descriptor: "

    invoke-static {v0, v1, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    if-eqz v6, :cond_1

    .line 105
    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 131
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v7           #context:Landroid/content/Context;
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #isAsset:Z
    .end local v13           #url:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 132
    .local v11, t:Ljava/lang/Throwable;
    const-string v0, "TiSound"

    const-string v1, "Issue while initializing : "

    invoke-static {v0, v1, v11}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 134
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lti/modules/titanium/media/TiSound;->setState(I)V

    goto :goto_2

    .line 104
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v7       #context:Landroid/content/Context;
    .restart local v9       #isAsset:Z
    .restart local v13       #url:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 105
    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v0

    .line 109
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v7           #context:Landroid/content/Context;
    :cond_5
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 110
    .restart local v12       #uri:Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    .line 114
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v13}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, result:Z
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 154
    :cond_0
    return v0
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 522
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 525
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 458
    const-string v0, "TiSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 401
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 402
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 403
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v2, "complete"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 405
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 499
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 437
    move v0, p2

    .line 438
    .local v0, code:I
    if-nez p2, :cond_0

    .line 439
    const/4 v0, -0x1

    .line 441
    :cond_0
    const-string v2, "Unknown media error."

    .line 442
    .local v2, msg:Ljava/lang/String;
    const/16 v3, 0x64

    if-ne p2, v3, :cond_1

    .line 443
    const-string v2, "Media server died"

    .line 445
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 447
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 448
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v0, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 449
    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v3, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v4, "error"

    invoke-virtual {v3, v4, v1}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 452
    const/4 v3, 0x1

    return v3
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 410
    const-string v1, "Unknown media issue."

    .line 412
    .local v1, msg:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 427
    :goto_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 428
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 429
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "error"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 431
    const/4 v2, 0x1

    return v2

    .line 414
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :sswitch_0
    const-string v1, "Stream not interleaved or interleaved improperly."

    .line 415
    goto :goto_0

    .line 417
    :sswitch_1
    const-string v1, "Stream does not support seeking"

    .line 418
    goto :goto_0

    .line 420
    :sswitch_2
    const-string v1, "Unknown media issue"

    .line 421
    goto :goto_0

    .line 423
    :sswitch_3
    const-string v1, "Video is too complex for decoder, video lagging."

    goto :goto_0

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2bc -> :sswitch_3
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 509
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 514
    iget-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiSound;->playOnResume:Z

    .line 519
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const-string v1, "TiSound"

    const-string v2, "audio is playing, pause"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v1, :cond_0

    .line 164
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 166
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 168
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while pausing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 180
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 181
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->initialize()V

    .line 184
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    const-string v1, "TiSound"

    const-string v2, "audio is not playing, starting."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v1, "TiSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play: Volume set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lti/modules/titanium/media/TiSound;->volume:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 189
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 191
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v1, :cond_1

    .line 192
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->startProgressTimer()V

    .line 195
    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_2
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while playing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->reset()V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 530
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "volume"

    const/high16 v1, 0x3f80

    invoke-static {p1, v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 533
    :cond_0
    return-void
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, changes:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 549
    .local v0, change:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lti/modules/titanium/media/TiSound;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 551
    .end local v0           #change:Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 538
    const-string v0, "volume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    const/high16 v0, 0x3f80

    invoke-static {p3, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setVolume(F)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    const-string v0, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 228
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 229
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 230
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 232
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    .line 234
    const-string v1, "TiSound"

    const-string v2, "Native resources released."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while releasing : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 207
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v1, :cond_0

    .line 208
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V

    .line 211
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 212
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 215
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lti/modules/titanium/media/TiSound;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while resetting : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 3
    .parameter "loop"

    .prologue
    .line 245
    :try_start_0
    iget-boolean v1, p0, Lti/modules/titanium/media/TiSound;->looping:Z

    if-eq p1, v1, :cond_1

    .line 246
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 249
    :cond_0
    iput-boolean p1, p0, Lti/modules/titanium/media/TiSound;->looping:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "TiSound"

    const-string v2, "Issue while configuring looping : "

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTime(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 302
    if-gez p1, :cond_0

    .line 303
    const/4 p1, 0x0

    .line 306
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 307
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 308
    .local v0, duration:I
    if-le p1, v0, :cond_1

    .line 309
    move p1, v0

    .line 313
    :cond_1
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0           #duration:I
    :cond_2
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    return-void

    .line 314
    .restart local v0       #duration:I
    :catch_0
    move-exception v1

    .line 315
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "TiSound"

    const-string v3, "Error calling seekTo() in an incorrect state. Ignoring."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 6
    .parameter "volume"

    .prologue
    const/4 v2, 0x0

    .line 259
    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 260
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 261
    const-string v2, "TiSound"

    const-string v3, "Attempt to set volume less than 0.0. Volume set to 0.0"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 270
    iget v0, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 271
    .local v0, scaledVolume:F
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 276
    .end local v0           #scaledVolume:F
    :cond_0
    :goto_1
    return-void

    .line 262
    :cond_1
    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 263
    const/high16 v2, 0x3f80

    iput v2, p0, Lti/modules/titanium/media/TiSound;->volume:F

    .line 264
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v3, "volume"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v2, "TiSound"

    const-string v3, "Attempt to set volume greater than 1.0. Volume set to 1.0"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "TiSound"

    const-string v3, "Issue while setting volume : "

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 267
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iput p1, p0, Lti/modules/titanium/media/TiSound;->volume:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 370
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3

    .line 372
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    :cond_0
    const-string v2, "TiSound"

    const-string v3, "audio is playing, stop()"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 375
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 376
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lti/modules/titanium/media/TiSound;->setState(I)V

    .line 377
    iget-boolean v2, p0, Lti/modules/titanium/media/TiSound;->remote:Z

    if-eqz v2, :cond_1

    .line 378
    invoke-direct {p0}, Lti/modules/titanium/media/TiSound;->stopProgressTimer()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    :cond_1
    :try_start_1
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 382
    iget-object v2, p0, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/media/TiSound;->paused:Z

    .line 397
    :cond_3
    :goto_1
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TiSound"

    const-string v3, "Error while preparing audio after stop(). Ignoring."

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 394
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 395
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "TiSound"

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 385
    .end local v1           #t:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 386
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TiSound"

    const-string v3, "Error while preparing audio after stop(). Ignoring."

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
