.class public Lti/modules/titanium/media/AudioPlayerProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AudioPlayerProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field public static final STATE_BUFFERING:I = 0x0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_STARTING:I = 0x4

.field public static final STATE_STOPPED:I = 0x5

.field public static final STATE_STOPPING:I = 0x6

.field public static final STATE_WAITING_FOR_DATA:I = 0x7

.field public static final STATE_WAITING_FOR_QUEUE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "AudioPlayerProxy"


# instance fields
.field protected snd:Lti/modules/titanium/media/TiSound;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 50
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "volume"

    const/high16 v2, 0x3f80

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 55
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;-><init>()V

    .line 56
    return-void
.end method

.method private allowBackground()Z
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, allow:Z
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->release()V

    .line 148
    return-void
.end method

.method protected getSound()Lti/modules/titanium/media/TiSound;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lti/modules/titanium/media/TiSound;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiSound;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 162
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/AudioPlayerProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string v2, "url"

    const/4 v3, 0x0

    const-string v4, "url"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/media/AudioPlayerProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_0
    :goto_0
    const-string v2, "allowBackground"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-string v2, "allowBackground"

    const-string v3, "allowBackground"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_1
    const-string v2, "AudioPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating audio player proxy for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {p0, v4}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 69
    :cond_2
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/filesystem/FileProxy;

    .line 71
    .local v0, fp:Lti/modules/titanium/filesystem/FileProxy;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, url:Ljava/lang/String;
    const-string v2, "url"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    .line 61
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 62
    return-void
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 108
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    .line 111
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 99
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    .line 102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 198
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onDestroy()V

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 202
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 187
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onPause()V

    .line 192
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 179
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 184
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 176
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 195
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 131
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 134
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 123
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 126
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 139
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 143
    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    const-string v0, "url"

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->play()V

    .line 118
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 153
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 156
    :cond_0
    return-void
.end method
