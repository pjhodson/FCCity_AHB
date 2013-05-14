.class public Lorg/appcelerator/titanium/util/TiLocationHelper;
.super Ljava/lang/Object;
.source "TiLocationHelper.java"


# static fields
.field public static final ACCURACY_BEST:I = 0x0

.field public static final ACCURACY_HUNDRED_METERS:I = 0x2

.field public static final ACCURACY_KILOMETER:I = 0x3

.field public static final ACCURACY_NEAREST_TEN_METERS:I = 0x1

.field public static final ACCURACY_THREE_KILOMETERS:I = 0x4

.field public static final DEFAULT_UPDATE_DISTANCE:F = 10.0f

.field public static final DEFAULT_UPDATE_FREQUENCY:I = 0x1388

.field public static final ERR_PERMISSION_DENIED:I = 0x1

.field public static final ERR_POSITION_UNAVAILABLE:I = 0x2

.field public static final ERR_TIMEOUT:I = 0x3

.field public static final ERR_UNKNOWN_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TiLocationHelper"

.field private static listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static locationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildUpdateDistance(Ljava/lang/Integer;)F
    .locals 4
    .parameter "accuracy"

    .prologue
    .line 59
    const/high16 v0, 0x4120

    .line 61
    .local v0, updateDistance:F
    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 69
    const-string v1, "TiLocationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown accuracy value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 63
    :pswitch_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 64
    :pswitch_1
    const/high16 v0, 0x4120

    goto :goto_0

    .line 65
    :pswitch_2
    const/high16 v0, 0x42c8

    goto :goto_0

    .line 66
    :pswitch_3
    const/high16 v0, 0x447a

    goto :goto_0

    .line 67
    :pswitch_4
    const v0, 0x453b8000

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static buildUpdateFrequency(Ljava/lang/Integer;)I
    .locals 1
    .parameter "frequency"

    .prologue
    .line 50
    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 53
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1388

    goto :goto_0
.end method

.method protected static createCriteria(Ljava/lang/Integer;)Landroid/location/Criteria;
    .locals 5
    .parameter "accuracy"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 177
    .local v0, criteria:Landroid/location/Criteria;
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 179
    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    .local v1, value:I
    packed-switch v1, :pswitch_data_0

    .line 199
    const-string v2, "TiLocationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown accuracy value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1           #value:I
    :cond_0
    :goto_0
    return-object v0

    .line 186
    .restart local v1       #value:I
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 189
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    goto :goto_0

    .line 193
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 194
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 195
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 196
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    goto :goto_0

    .line 182
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

.method public static fetchProvider(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .parameter "preferredProvider"
    .parameter "accuracy"

    .prologue
    .line 164
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiLocationHelper;->isValidProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    move-object v1, p0

    .line 171
    .local v1, provider:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 167
    .end local v1           #provider:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->createCriteria(Ljava/lang/Integer;)Landroid/location/Criteria;

    move-result-object v0

    .line 168
    .local v0, criteria:Landroid/location/Criteria;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #provider:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLocationManager()Landroid/location/LocationManager;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    .line 45
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static isLocationEnabled()Z
    .locals 7

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, enabled:Z
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 211
    .local v3, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 212
    const-string v4, "TiLocationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enabled location provider count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, name:Ljava/lang/String;
    const-string v4, "TiLocationHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Location ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] service available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 221
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return v0

    .line 218
    :cond_1
    const-string v4, "TiLocationHelper"

    const-string v5, "No available providers"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static isLocationProviderEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 136
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static isValidProvider(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    .line 141
    const-string v2, "gps"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "network"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 143
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiLocationHelper;->isLocationProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 151
    if-nez v0, :cond_1

    .line 152
    const-string v2, "TiLocationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred provider ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] isn\'t enabled on this device. Will default to auto-select of GPS provider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_1
    return v0

    .line 141
    .end local v0           #enabled:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    .restart local v0       #enabled:Z
    :catch_0
    move-exception v1

    .line 151
    .local v1, ex:Ljava/lang/Exception;
    if-nez v0, :cond_1

    .line 152
    const-string v2, "TiLocationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred provider ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] isn\'t enabled on this device. Will default to auto-select of GPS provider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_3

    .line 152
    const-string v3, "TiLocationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred provider ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] isn\'t enabled on this device. Will default to auto-select of GPS provider."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v2
.end method

.method public static registerListener(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/location/LocationListener;)V
    .locals 7
    .parameter "preferredProvider"
    .parameter "accuracy"
    .parameter "frequency"
    .parameter "listener"

    .prologue
    .line 78
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLocationHelper;->getLocationManager()Landroid/location/LocationManager;

    .line 80
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->fetchProvider(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, provider:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiLocationHelper;->buildUpdateFrequency(Ljava/lang/Integer;)I

    move-result v6

    .line 83
    .local v6, updateFrequency:I
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->buildUpdateDistance(Ljava/lang/Integer;)F

    move-result v4

    .line 85
    .local v4, updateDistance:F
    const-string v0, "TiLocationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registering listener with provider ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], frequency ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], distance ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v0, v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    int-to-long v2, v6

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 89
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 93
    .end local v4           #updateDistance:F
    .end local v6           #updateFrequency:I
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "TiLocationHelper"

    const-string v2, "Unable to register listener, provider is null"

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unregisterListener(Landroid/location/LocationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 97
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 100
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v0, "TiLocationHelper"

    const-string v1, "Unable to unregister listener, locationManager is null"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateProvider(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Landroid/location/LocationListener;)V
    .locals 7
    .parameter "preferredProvider"
    .parameter "accuracy"
    .parameter "provider"
    .parameter "frequency"
    .parameter "listener"

    .prologue
    .line 110
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 111
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->fetchProvider(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, currentProvider:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiLocationHelper;->buildUpdateFrequency(Ljava/lang/Integer;)I

    move-result v6

    .line 115
    .local v6, updateFrequency:I
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiLocationHelper;->buildUpdateDistance(Ljava/lang/Integer;)F

    move-result v4

    .line 117
    .local v4, updateDistance:F
    const-string v0, "TiLocationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating listener with provider ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], frequency ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], distance ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v0, v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 121
    sget-object v0, Lorg/appcelerator/titanium/util/TiLocationHelper;->locationManager:Landroid/location/LocationManager;

    int-to-long v2, v6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 126
    .end local v1           #currentProvider:Ljava/lang/String;
    .end local v4           #updateDistance:F
    .end local v6           #updateFrequency:I
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v0, "TiLocationHelper"

    const-string v2, "Unable to update provider, locationManager is null"

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
