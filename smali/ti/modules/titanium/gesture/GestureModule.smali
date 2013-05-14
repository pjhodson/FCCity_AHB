.class public Lti/modules/titanium/gesture/GestureModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "GestureModule.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lorg/appcelerator/titanium/ContextSpecific;
.end annotation


# static fields
.field private static final EVENT_ORIENTATION_CHANGE:Ljava/lang/String; = "orientationchange"

.field private static final EVENT_SHAKE:Ljava/lang/String; = "shake"

.field private static final TAG:Ljava/lang/String; = "GestureModule"


# instance fields
.field private firstEventInShake:J

.field private inShake:Z

.field private inShakePeriod:I

.field private lastEventInShake:J

.field private orientationConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private postShakePeriod:I

.field private shakeFactor:D

.field private shakeInitialized:Z

.field private shakeRegistered:Z

.field private threshold:D


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide v5, 0x40239d0140000000L

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 38
    iput-boolean v1, p0, Lti/modules/titanium/gesture/GestureModule;->shakeRegistered:Z

    .line 41
    iput-boolean v1, p0, Lti/modules/titanium/gesture/GestureModule;->shakeInitialized:Z

    .line 42
    iput-boolean v1, p0, Lti/modules/titanium/gesture/GestureModule;->inShake:Z

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/gesture/GestureModule;->orientationConfigListeners:Ljava/util/List;

    .line 54
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    .line 55
    .local v0, props:Lorg/appcelerator/titanium/TiProperties;
    const-string v1, "ti.android.shake.factor"

    const-wide v2, 0x3ff4cccccccccccdL

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lti/modules/titanium/gesture/GestureModule;->shakeFactor:D

    .line 56
    const-string v1, "ti.android.shake.quiet.milliseconds"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/gesture/GestureModule;->postShakePeriod:I

    .line 57
    const-string v1, "ti.android.shake.active.milliseconds"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/gesture/GestureModule;->inShakePeriod:I

    .line 58
    iget-wide v1, p0, Lti/modules/titanium/gesture/GestureModule;->shakeFactor:D

    iget-wide v3, p0, Lti/modules/titanium/gesture/GestureModule;->shakeFactor:D

    mul-double/2addr v1, v3

    mul-double/2addr v1, v5

    mul-double/2addr v1, v5

    iput-wide v1, p0, Lti/modules/titanium/gesture/GestureModule;->threshold:D

    .line 59
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "GestureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shake Factor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lti/modules/titanium/gesture/GestureModule;->shakeFactor:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "GestureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post Shake Period (ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lti/modules/titanium/gesture/GestureModule;->postShakePeriod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "GestureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In Shake Period(ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lti/modules/titanium/gesture/GestureModule;->inShakePeriod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v1, "GestureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Threshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lti/modules/titanium/gesture/GestureModule;->threshold:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method protected eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "event"
    .parameter "count"
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    .line 69
    const-string v0, "orientationchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lti/modules/titanium/gesture/GestureModule;->orientationConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lti/modules/titanium/gesture/GestureModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/gesture/GestureModule$1;-><init>(Lti/modules/titanium/gesture/GestureModule;)V

    invoke-static {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->registerOrientationListener(Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/gesture/GestureModule;->orientationConfigListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 96
    return-void

    .line 87
    :cond_2
    const-string v0, "shake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-boolean v0, p0, Lti/modules/titanium/gesture/GestureModule;->shakeRegistered:Z

    if-nez v0, :cond_1

    .line 90
    const/4 v0, 0x2

    invoke-static {v1, p0, v0}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 91
    iput-boolean v1, p0, Lti/modules/titanium/gesture/GestureModule;->shakeRegistered:Z

    goto :goto_0
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "event"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 100
    const-string v0, "orientationchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lti/modules/titanium/gesture/GestureModule;->orientationConfigListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lti/modules/titanium/gesture/GestureModule;->orientationConfigListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lti/modules/titanium/gesture/GestureModule;->orientationConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lorg/appcelerator/titanium/TiBaseActivity;->deregisterOrientationListener()V

    .line 123
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 124
    return-void

    .line 112
    :cond_1
    const-string v0, "GestureModule"

    const-string v1, "Unable to remove orientation config listener, does not exist"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "shake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-boolean v0, p0, Lti/modules/titanium/gesture/GestureModule;->shakeRegistered:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiSensorHelper;->unregisterListener(ILandroid/hardware/SensorEventListener;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/gesture/GestureModule;->shakeRegistered:Z

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiOrientationHelper;->convertConfigToTiOrientationMode(I)I

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 129
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 134
    .local v1, currentEventInShake:J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lti/modules/titanium/gesture/GestureModule;->lastEventInShake:J

    sub-long v4, v1, v11

    .line 136
    .local v4, difftime:J
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v8, v11, v12

    .line 137
    .local v8, x:F
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v9, v11, v12

    .line 138
    .local v9, y:F
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v10, v11, v12

    .line 140
    .local v10, z:F
    float-to-double v11, v8

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    float-to-double v13, v9

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    float-to-double v13, v10

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double v6, v11, v13

    .line 141
    .local v6, force:D
    move-object/from16 v0, p0

    iget-wide v11, v0, Lti/modules/titanium/gesture/GestureModule;->threshold:D

    cmpg-double v11, v11, v6

    if-gez v11, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lti/modules/titanium/gesture/GestureModule;->inShake:Z

    if-nez v11, :cond_0

    .line 144
    move-object/from16 v0, p0

    iput-wide v1, v0, Lti/modules/titanium/gesture/GestureModule;->firstEventInShake:J

    .line 145
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lti/modules/titanium/gesture/GestureModule;->inShake:Z

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iput-wide v1, v0, Lti/modules/titanium/gesture/GestureModule;->lastEventInShake:J

    .line 149
    const-string v11, "GestureModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ACC-Shake : threshold: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Lti/modules/titanium/gesture/GestureModule;->threshold:D

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " force: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " delta : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " x: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " y: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " z: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lti/modules/titanium/gesture/GestureModule;->shakeInitialized:Z

    if-nez v11, :cond_2

    .line 171
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lti/modules/titanium/gesture/GestureModule;->shakeInitialized:Z

    .line 173
    :cond_2
    return-void

    .line 152
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lti/modules/titanium/gesture/GestureModule;->shakeInitialized:Z

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lti/modules/titanium/gesture/GestureModule;->inShake:Z

    if-eqz v11, :cond_1

    .line 153
    move-object/from16 v0, p0

    iget v11, v0, Lti/modules/titanium/gesture/GestureModule;->postShakePeriod:I

    int-to-long v11, v11

    cmp-long v11, v4, v11

    if-lez v11, :cond_1

    .line 154
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lti/modules/titanium/gesture/GestureModule;->inShake:Z

    .line 155
    move-object/from16 v0, p0

    iget-wide v11, v0, Lti/modules/titanium/gesture/GestureModule;->lastEventInShake:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lti/modules/titanium/gesture/GestureModule;->firstEventInShake:J

    sub-long/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/gesture/GestureModule;->inShakePeriod:I

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    .line 156
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 157
    .local v3, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v11, "type"

    const-string v12, "shake"

    invoke-virtual {v3, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v11, "timestamp"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lti/modules/titanium/gesture/GestureModule;->lastEventInShake:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v11, "x"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v11, "y"

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v11, "z"

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v11, "shake"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lti/modules/titanium/gesture/GestureModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 164
    const-string v11, "GestureModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Firing shake event (x:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " y:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " z:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
