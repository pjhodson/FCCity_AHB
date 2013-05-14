.class public Lti/modules/titanium/media/SoundProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "SoundProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundProxy"


# instance fields
.field protected snd:Lti/modules/titanium/media/TiSound;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 40
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "volume"

    const/high16 v2, 0x3f80

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 46
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;-><init>()V

    .line 47
    return-void
.end method

.method private allowBackground()Z
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, allow:Z
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/SoundProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    :cond_0
    return v0
.end method

.method private parseURL(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, path:Ljava/lang/String;
    instance-of v2, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v2, :cond_1

    .line 59
    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_0
    :goto_0
    return-object v1

    .line 60
    .restart local p1
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 61
    const/4 v2, 0x0

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/media/SoundProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    .restart local p1
    :cond_2
    instance-of v2, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 63
    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    .line 64
    .local v0, blob:Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 65
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->getFile()Lorg/appcelerator/titanium/TiFileProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiFileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 68
    .end local v0           #blob:Lorg/appcelerator/titanium/TiBlob;
    :cond_3
    const-string v2, "SoundProxy"

    const-string v3, "Invalid type for url."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->release()V

    .line 180
    return-void
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 193
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getDuration()I

    move-result v1

    .line 197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSound()Lti/modules/titanium/media/TiSound;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lti/modules/titanium/media/TiSound;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiSound;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 226
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/SoundProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    return-object v0
.end method

.method public getTime()D
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 203
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getTime()I

    move-result v1

    .line 205
    .local v1, time:I
    const-string v2, "time"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    .end local v1           #time:I
    :cond_0
    const-string v2, "time"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 77
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, url:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lti/modules/titanium/media/SoundProxy;->parseURL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "url"

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/Object;
    :cond_0
    const-string v2, "allowBackground"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string v2, "allowBackground"

    const-string v3, "allowBackground"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :cond_1
    const-string v2, "SoundProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating sound proxy for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {p0, v4}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    .line 52
    check-cast p1, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local p1
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 53
    return-void
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 124
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isLooping()Z

    move-result v1

    .line 127
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 115
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    .line 118
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 106
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    .line 109
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
    .line 262
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onDestroy()V

    .line 265
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 266
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 251
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onPause()V

    .line 256
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 243
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 248
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 240
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 259
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 155
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 158
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 147
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 150
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 171
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 175
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 163
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->reset()V

    .line 166
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "looping"

    .prologue
    .line 132
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 133
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Lti/modules/titanium/media/TiSound;->setLooping(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public setTime(Ljava/lang/Object;)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 214
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_1

    .line 215
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    .line 220
    .end local v0           #s:Lti/modules/titanium/media/TiSound;
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local v0       #s:Lti/modules/titanium/media/TiSound;
    :cond_1
    const-string v1, "time"

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/Object;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lti/modules/titanium/media/SoundProxy;->parseURL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 99
    const-string v1, "url"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->play()V

    .line 142
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 185
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 188
    :cond_0
    return-void
.end method
