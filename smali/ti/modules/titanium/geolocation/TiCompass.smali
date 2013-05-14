.class public Lti/modules/titanium/geolocation/TiCompass;
.super Ljava/lang/Object;
.source "TiCompass.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DECLINATION_CHECK_INTERVAL:I = 0xea60

.field private static final STALE_LOCATION_THRESHOLD:I = 0x927c0

.field private static final TAG:Ljava/lang/String; = "TiCompass"


# instance fields
.field private baseTime:Ljava/util/Calendar;

.field private geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

.field private geomagneticField:Landroid/hardware/GeomagneticField;

.field private geomagneticFieldLocation:Landroid/location/Location;

.field private lastDeclinationCheck:J

.field private lastEventInUpdate:J

.field private lastHeading:F

.field private locationCriteria:Landroid/location/Criteria;

.field private sensorTimerStart:J

.field private tiLocation:Lti/modules/titanium/geolocation/TiLocation;


# direct methods
.method public constructor <init>(Lti/modules/titanium/geolocation/GeolocationModule;Lti/modules/titanium/geolocation/TiLocation;)V
    .locals 2
    .parameter "geolocationModule"
    .parameter "tiLocation"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->baseTime:Ljava/util/Calendar;

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lti/modules/titanium/geolocation/TiCompass;->sensorTimerStart:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/geolocation/TiCompass;->lastHeading:F

    .line 42
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->locationCriteria:Landroid/location/Criteria;

    .line 49
    iput-object p1, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    .line 50
    iput-object p2, p0, Lti/modules/titanium/geolocation/TiCompass;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/geolocation/TiCompass;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->baseTime:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/geolocation/TiCompass;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lti/modules/titanium/geolocation/TiCompass;->sensorTimerStart:J

    return-wide v0
.end method

.method static synthetic access$200(Lti/modules/titanium/geolocation/TiCompass;)Lti/modules/titanium/geolocation/GeolocationModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/geolocation/TiCompass;Landroid/hardware/SensorEvent;J)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/geolocation/TiCompass;->eventToHashMap(Landroid/hardware/SensorEvent;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private eventToHashMap(Landroid/hardware/SensorEvent;J)Ljava/lang/Object;
    .locals 11
    .parameter "event"
    .parameter "timestamp"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x43b4

    .line 96
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v6, v10

    .line 97
    .local v3, x:F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 98
    .local v4, y:F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v5, v6, v7

    .line 100
    .local v5, z:F
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 101
    .local v1, heading:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "type"

    const-string v7, "heading"

    invoke-virtual {v1, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v6, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v6, "x"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v6, "y"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v6, "z"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v6, "magneticHeading"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v6, "accuracy"

    iget v7, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    iget v6, p1, Landroid/hardware/SensorEvent;->accuracy:I

    packed-switch v6, :pswitch_data_0

    .line 124
    const-string v6, "TiCompass"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown compass accuracy value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    invoke-direct {p0}, Lti/modules/titanium/geolocation/TiCompass;->updateDeclination()V

    .line 129
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticField:Landroid/hardware/GeomagneticField;

    if-eqz v6, :cond_1

    .line 130
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticField:Landroid/hardware/GeomagneticField;

    invoke-virtual {v6}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v6

    add-float/2addr v6, v3

    add-float/2addr v6, v9

    rem-float v2, v6, v9

    .line 132
    .local v2, trueHeading:F
    const-string v6, "trueHeading"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v2           #trueHeading:F
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 136
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const/4 v6, 0x0

    invoke-virtual {v0, v10, v6}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 137
    const-string v6, "heading"

    invoke-virtual {v0, v6, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-object v0

    .line 112
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :pswitch_0
    const-string v6, "TiCompass"

    const-string v7, "Compass accuracy unreliable"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :pswitch_1
    const-string v6, "TiCompass"

    const-string v7, "Compass accuracy low"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v6, "TiCompass"

    const-string v7, "Compass accuracy medium"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :pswitch_3
    const-string v6, "TiCompass"

    const-string v7, "Compass accuracy high"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateDeclination()V
    .locals 10

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 150
    .local v4, currentTime:J
    iget-wide v0, p0, Lti/modules/titanium/geolocation/TiCompass;->lastDeclinationCheck:J

    sub-long v0, v4, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 151
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lti/modules/titanium/geolocation/TiCompass;->locationCriteria:Landroid/location/Criteria;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, provider:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 153
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 154
    .local v6, location:Landroid/location/Location;
    if-eqz v6, :cond_1

    .line 155
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticFieldLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticFieldLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 156
    :cond_0
    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    double-to-float v3, v8

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticField:Landroid/hardware/GeomagneticField;

    .line 157
    iput-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticFieldLocation:Landroid/location/Location;

    .line 161
    .end local v6           #location:Landroid/location/Location;
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticFieldLocation:Landroid/location/Location;

    if-nez v0, :cond_4

    .line 162
    const-string v0, "TiCompass"

    const-string v1, "No location fix available, can\'t determine compass trueHeading."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    :goto_0
    iput-wide v4, p0, Lti/modules/titanium/geolocation/TiCompass;->lastDeclinationCheck:J

    .line 168
    .end local v7           #provider:Ljava/lang/String;
    :cond_3
    return-void

    .line 163
    .restart local v7       #provider:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiCompass;->geomagneticFieldLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 164
    const-string v0, "TiCompass"

    const-string v1, "Location fix is stale, compass trueHeading may be incorrect."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    new-instance v0, Lti/modules/titanium/geolocation/TiCompass$1;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/geolocation/TiCompass$1;-><init>(Lti/modules/titanium/geolocation/TiCompass;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 204
    .local v0, oneShotHeadingListener:Landroid/hardware/SensorEventListener;
    invoke-direct {p0}, Lti/modules/titanium/geolocation/TiCompass;->updateDeclination()V

    .line 205
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 207
    .end local v0           #oneShotHeadingListener:Landroid/hardware/SensorEventListener;
    :cond_0
    return-void
.end method

.method public getHasCompass()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, compass:Z
    invoke-static {}, Lorg/appcelerator/titanium/util/TiSensorHelper;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    .line 175
    .local v1, sensorManager:Landroid/hardware/SensorManager;
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    invoke-virtual {v2}, Lti/modules/titanium/geolocation/GeolocationModule;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiSensorHelper;->hasDefaultSensor(Landroid/app/Activity;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 66
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    .line 70
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 71
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v8, 0xf4240

    div-long v2, v6, v8

    .line 73
    .local v2, eventTimestamp:J
    iget-wide v6, p0, Lti/modules/titanium/geolocation/TiCompass;->lastEventInUpdate:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 74
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->baseTime:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lti/modules/titanium/geolocation/TiCompass;->sensorTimerStart:J

    sub-long v8, v2, v8

    add-long v0, v6, v8

    .line 76
    .local v0, actualTimestamp:J
    iput-wide v2, p0, Lti/modules/titanium/geolocation/TiCompass;->lastEventInUpdate:J

    .line 78
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v7, "headingFilter"

    invoke-virtual {v6, v7}, Lti/modules/titanium/geolocation/GeolocationModule;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    .local v4, filter:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 80
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v5

    .line 82
    .local v5, headingFilter:F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    iget v7, p0, Lti/modules/titanium/geolocation/TiCompass;->lastHeading:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gez v6, :cond_1

    .line 92
    .end local v0           #actualTimestamp:J
    .end local v2           #eventTimestamp:J
    .end local v4           #filter:Ljava/lang/Object;
    .end local v5           #headingFilter:F
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v0       #actualTimestamp:J
    .restart local v2       #eventTimestamp:J
    .restart local v4       #filter:Ljava/lang/Object;
    .restart local v5       #headingFilter:F
    :cond_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    iput v6, p0, Lti/modules/titanium/geolocation/TiCompass;->lastHeading:F

    .line 89
    .end local v5           #headingFilter:F
    :cond_2
    iget-object v6, p0, Lti/modules/titanium/geolocation/TiCompass;->geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;

    const-string v7, "heading"

    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/geolocation/TiCompass;->eventToHashMap(Landroid/hardware/SensorEvent;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerListener()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lti/modules/titanium/geolocation/TiCompass;->updateDeclination()V

    .line 56
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 57
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiSensorHelper;->unregisterListener(ILandroid/hardware/SensorEventListener;)V

    .line 62
    return-void
.end method
