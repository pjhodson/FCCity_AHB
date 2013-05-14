.class public Lorg/appcelerator/titanium/util/TiSensorHelper;
.super Ljava/lang/Object;
.source "TiSensorHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiSensorHelper"

.field private static sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSensorManager()Landroid/hardware/SensorManager;
    .locals 3

    .prologue
    .line 102
    const-class v1, Lorg/appcelerator/titanium/util/TiSensorHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 105
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasDefaultSensor(Landroid/app/Activity;I)Z
    .locals 3
    .parameter "activity"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {}, Lorg/appcelerator/titanium/util/TiSensorHelper;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 94
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static registerListener(ILandroid/hardware/SensorEventListener;I)V
    .locals 5
    .parameter "type"
    .parameter "listener"
    .parameter "rate"

    .prologue
    .line 43
    invoke-static {}, Lorg/appcelerator/titanium/util/TiSensorHelper;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    .line 44
    .local v1, sensorManager:Landroid/hardware/SensorManager;
    if-nez v1, :cond_0

    .line 45
    const-string v2, "TiSensorHelper"

    const-string v3, "registerListener failed, no sensor manager found."

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 50
    .local v0, sensor:Landroid/hardware/Sensor;
    if-eqz v0, :cond_1

    .line 51
    const-string v2, "TiSensorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling Listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v1, p1, v0, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 54
    :cond_1
    const-string v2, "TiSensorHelper"

    const-string v3, "Unable to register, sensor is null"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static registerListener([ILandroid/hardware/SensorEventListener;I)V
    .locals 4
    .parameter "types"
    .parameter "listener"
    .parameter "rate"

    .prologue
    .line 36
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 37
    .local v3, type:I
    invoke-static {v3, p1, p2}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3           #type:I
    :cond_0
    return-void
.end method

.method public static unregisterListener(ILandroid/hardware/SensorEventListener;)V
    .locals 5
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 72
    invoke-static {}, Lorg/appcelerator/titanium/util/TiSensorHelper;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    .line 73
    .local v1, sensorManager:Landroid/hardware/SensorManager;
    if-nez v1, :cond_0

    .line 74
    const-string v2, "TiSensorHelper"

    const-string v3, "UnregisterListener failed, no sensor manager found."

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 78
    .local v0, sensor:Landroid/hardware/Sensor;
    if-eqz v0, :cond_1

    .line 79
    const-string v2, "TiSensorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling Listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v1, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v2, "TiSensorHelper"

    const-string v3, "Unable to unregister, sensor is null"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unregisterListener([ILandroid/hardware/SensorEventListener;)V
    .locals 4
    .parameter "types"
    .parameter "listener"

    .prologue
    .line 60
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 61
    .local v3, type:I
    invoke-static {v3, p1}, Lorg/appcelerator/titanium/util/TiSensorHelper;->unregisterListener(ILandroid/hardware/SensorEventListener;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v3           #type:I
    :cond_0
    return-void
.end method
