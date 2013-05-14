.class public Lti/modules/titanium/geolocation/android/LocationProviderProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "LocationProviderProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;
    }
.end annotation


# static fields
.field public static final STATE_AVAILABLE:I = 0x4

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_OUT_OF_SERVICE:I = 0x2

.field public static final STATE_UNAVAILABLE:I = 0x3

.field public static final STATE_UNKNOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final defaultMinUpdateDistance:D

.field private final defaultMinUpdateTime:D

.field private providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V
    .locals 2
    .parameter "name"
    .parameter "minUpdateDistance"
    .parameter "minUpdateTime"
    .parameter "providerListener"

    .prologue
    const-wide/16 v0, 0x0

    .line 97
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 50
    iput-wide v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->defaultMinUpdateDistance:D

    .line 51
    iput-wide v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->defaultMinUpdateTime:D

    .line 99
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v0, "minUpdateDistance"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v0, "minUpdateTime"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    iput-object p6, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    .line 104
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V
    .locals 5
    .parameter "creationArgs"
    .parameter "providerListener"

    .prologue
    const-wide/16 v3, 0x0

    .line 74
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 50
    iput-wide v3, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->defaultMinUpdateDistance:D

    .line 51
    iput-wide v3, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->defaultMinUpdateTime:D

    .line 76
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "minUpdateDistance"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "minUpdateTime"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 80
    iput-object p2, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    .line 81
    return-void
.end method


# virtual methods
.method public getMinUpdateDistance()D
    .locals 5

    .prologue
    .line 199
    const-string v2, "minUpdateDistance"

    invoke-virtual {p0, v2}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, property:Ljava/lang/Object;
    :try_start_0
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 205
    :goto_0
    return-wide v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] found for minUpdateDistance, returning default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getMinUpdateTime()D
    .locals 5

    .prologue
    .line 229
    const-string v2, "minUpdateTime"

    invoke-virtual {p0, v2}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, property:Ljava/lang/Object;
    :try_start_0
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 235
    :goto_0
    return-wide v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] found for minUpdateTime, returning default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, property:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 172
    const-string v1, "LocationProviderProxy"

    const-string v2, "No name found for location provider"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, ""

    .line 177
    .end local v0           #property:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #property:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 112
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    invoke-interface {v0, p1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onLocationChanged(Landroid/location/Location;)V

    .line 113
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 121
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onProviderStateChanged(Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 130
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onProviderStateChanged(Ljava/lang/String;I)V

    .line 131
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 139
    packed-switch p2, :pswitch_data_0

    .line 156
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    const/4 v1, 0x5

    invoke-interface {v0, p1, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onProviderStateChanged(Ljava/lang/String;I)V

    .line 160
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onProviderStateChanged(Ljava/lang/String;I)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onProviderStateChanged(Ljava/lang/String;I)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    const/4 v1, 0x4

    invoke-interface {v0, p1, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onProviderStateChanged(Ljava/lang/String;I)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMinUpdateDistance(D)V
    .locals 2
    .parameter "value"

    .prologue
    .line 217
    const-string v0, "minUpdateDistance"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    invoke-interface {v0, p0}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onProviderUpdated(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 219
    return-void
.end method

.method public setMinUpdateTime(D)V
    .locals 2
    .parameter "value"

    .prologue
    .line 247
    const-string v0, "minUpdateTime"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->providerListener:Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;

    invoke-interface {v0, p0}, Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;->onProviderUpdated(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 249
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 188
    const-string v0, "LocationProviderProxy"

    const-string v1, "Not allowed to set the name of a provider after creation"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method
