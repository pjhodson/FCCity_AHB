.class public Lti/modules/titanium/geolocation/GeolocationModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "GeolocationModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;


# static fields
.field public static final ACCURACY_BEST:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_HIGH:I = 0x1

.field public static final ACCURACY_HUNDRED_METERS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_KILOMETER:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_LOW:I = 0x0

.field public static final ACCURACY_NEAREST_TEN_METERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_THREE_KILOMETERS:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final MSG_ENABLE_LOCATION_PROVIDERS:I = 0x136

.field protected static final MSG_LAST_ID:I = 0x136

.field public static final PROVIDER_GPS:Ljava/lang/String; = "gps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROVIDER_NETWORK:Ljava/lang/String; = "network"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROVIDER_PASSIVE:Ljava/lang/String; = "passive"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SIMPLE_LOCATION_GPS_DISTANCE:D = 3.0

.field private static final SIMPLE_LOCATION_GPS_TIME:D = 3000.0

.field private static final SIMPLE_LOCATION_NETWORK_DISTANCE:D = 10.0

.field private static final SIMPLE_LOCATION_NETWORK_DISTANCE_RULE:D = 200.0

.field private static final SIMPLE_LOCATION_NETWORK_MIN_AGE_RULE:D = 60000.0

.field private static final SIMPLE_LOCATION_NETWORK_TIME:D = 10000.0

.field private static final SIMPLE_LOCATION_PASSIVE_DISTANCE:D = 0.0

.field private static final SIMPLE_LOCATION_PASSIVE_TIME:D = 0.0

.field private static final TAG:Ljava/lang/String; = "GeolocationModule"


# instance fields
.field public androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

.field private compassListenersRegistered:Z

.field private currentLocation:Landroid/location/Location;

.field private legacyLocationAccuracyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private legacyLocationAccuracyProperty:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private legacyLocationFrequency:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private legacyLocationPreferredProvider:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public legacyLocationProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public legacyModeActive:Z

.field public numLocationListeners:I

.field private sentAnalytics:Z

.field private simpleLocationAccuracyProperty:I

.field private simpleLocationGpsRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

.field private simpleLocationNetworkRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

.field public simpleLocationProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private simpleLocationRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/geolocation/android/LocationRuleProxy;",
            ">;"
        }
    .end annotation
.end field

.field private tiCompass:Lti/modules/titanium/geolocation/TiCompass;

.field public tiLocation:Lti/modules/titanium/geolocation/TiLocation;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v5, 0x3

    const-wide/high16 v2, 0x4024

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 173
    const-string v0, "geolocation"

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollModule;-><init>(Ljava/lang/String;)V

    .line 136
    iput v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    .line 155
    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    .line 156
    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->sentAnalytics:Z

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    .line 160
    iput v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationAccuracyProperty:I

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    .line 163
    iput v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyProperty:I

    .line 164
    const-wide v0, 0x40b3880000000000L

    iput-wide v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    .line 165
    const-string v0, "network"

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    .line 175
    new-instance v0, Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {v0}, Lti/modules/titanium/geolocation/TiLocation;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    .line 176
    new-instance v0, Lti/modules/titanium/geolocation/TiCompass;

    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/geolocation/TiCompass;-><init>(Lti/modules/titanium/geolocation/GeolocationModule;Lti/modules/titanium/geolocation/TiLocation;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    .line 179
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/high16 v4, 0x4059

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v4, 0x408f400000000000L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v4, 0x40a7700000000000L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v7, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    const-string v8, "network"

    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    const-string v1, "network"

    iget-wide v4, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v7, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v8, "network"

    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    const-string v1, "network"

    const-wide v4, 0x40c3880000000000L

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v7, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v8, "passive"

    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    const-string v1, "passive"

    move-wide v2, v10

    move-wide v4, v10

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    const-string v1, "gps"

    invoke-direct {v0, v1, v9, v9, v9}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationGpsRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .line 192
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    const-string v1, "network"

    const-wide/high16 v2, 0x4069

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide v3, 0x40ed4c0000000000L

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v9}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationNetworkRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .line 193
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 202
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;-><init>()V

    .line 203
    return-void
.end method

.method private buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 873
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    .line 874
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 875
    return-object v0
.end method

.method private buildLocationEvent(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;
    .locals 7
    .parameter "location"
    .parameter "locationProvider"

    .prologue
    const/4 v6, 0x0

    .line 835
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 836
    .local v0, coordinates:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v3, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const-string v3, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-string v3, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string v3, "altitudeAccuracy"

    invoke-virtual {v0, v3, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string v3, "heading"

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v3, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v3, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 846
    .local v1, event:Lorg/appcelerator/kroll/KrollDict;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v6}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 847
    const-string v3, "coords"

    invoke-virtual {v1, v3, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    if-eqz p2, :cond_0

    .line 850
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 851
    .local v2, provider:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "name"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    const-string v3, "accuracy"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string v3, "power"

    invoke-virtual {p2}, Landroid/location/LocationProvider;->getPowerRequirement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string v3, "provider"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    .end local v2           #provider:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-object v1
.end method

.method private createGeocodeResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;
    .locals 2
    .parameter "callback"

    .prologue
    .line 765
    move-object v0, p0

    .line 767
    .local v0, geolocationModule:Lti/modules/titanium/geolocation/GeolocationModule;
    new-instance v1, Lti/modules/titanium/geolocation/GeolocationModule$1;

    invoke-direct {v1, p0, v0, p1}, Lti/modules/titanium/geolocation/GeolocationModule$1;-><init>(Lti/modules/titanium/geolocation/GeolocationModule;Lti/modules/titanium/geolocation/GeolocationModule;Lorg/appcelerator/kroll/KrollFunction;)V

    return-object v1
.end method

.method private disableLocationProviders()V
    .locals 3

    .prologue
    .line 673
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 674
    .local v1, locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 677
    .end local v1           #locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 678
    .restart local v1       #locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_1

    .line 681
    .end local v1           #locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-object v2, v2, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 683
    .restart local v1       #locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2

    .line 686
    .end local v1           #locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_2
    return-void
.end method

.method private doAnalytics(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 225
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->sentAnalytics:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0, p1}, Lti/modules/titanium/geolocation/TiLocation;->doAnalytics(Landroid/location/Location;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->sentAnalytics:Z

    .line 229
    :cond_0
    return-void
.end method

.method private doEnableLocationProviders(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, locationProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/geolocation/android/LocationProviderProxy;>;"
    iget v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v2, :cond_0

    .line 656
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->disableLocationProviders()V

    .line 658
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 659
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 661
    .local v1, locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    goto :goto_0

    .line 664
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_0
    return-void
.end method

.method private getManualMode()Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x0

    .line 594
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-boolean v0, v0, Lti/modules/titanium/geolocation/android/AndroidModule;->manualMode:Z

    goto :goto_0
.end method

.method private propertyChangedAccuracy(Ljava/lang/Object;)V
    .locals 14
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 356
    const/4 v10, 0x0

    .line 357
    .local v10, legacyModeEnabled:Z
    iget-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v1, :cond_0

    .line 358
    const/4 v10, 0x1

    .line 362
    :cond_0
    const/4 v13, 0x0

    .line 363
    .local v13, simpleModeEnabled:Z
    iget-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v1, :cond_1

    .line 364
    const/4 v13, 0x1

    .line 367
    :cond_1
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v8

    .line 370
    .local v8, accuracyProperty:I
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    .line 371
    .local v7, accuracyLookupResult:Ljava/lang/Double;
    if-eqz v7, :cond_6

    .line 373
    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyProperty:I

    if-eq v8, v1, :cond_3

    .line 374
    iput v8, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyProperty:I

    .line 376
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 377
    .local v12, providerKey:Ljava/lang/String;
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 378
    .local v11, locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    const-string v1, "minUpdateDistance"

    invoke-virtual {v11, v1, v7}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    .end local v11           #locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    .end local v12           #providerKey:Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 382
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 386
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v13, :cond_4

    .line 387
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 390
    :cond_4
    iput-boolean v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    .line 426
    :cond_5
    :goto_1
    return-void

    .line 393
    :cond_6
    if-eq v8, v3, :cond_7

    if-nez v8, :cond_5

    .line 395
    :cond_7
    iget v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationAccuracyProperty:I

    if-eq v8, v1, :cond_8

    .line 396
    iput v8, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationAccuracyProperty:I

    .line 397
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 399
    .local v0, gpsProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    if-ne v8, v3, :cond_a

    if-nez v0, :cond_a

    .line 400
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .end local v0           #gpsProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    const-string v1, "gps"

    const-wide/high16 v2, 0x4008

    const-wide v4, 0x40a7700000000000L

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    .line 401
    .restart local v0       #gpsProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationNetworkRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationGpsRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    if-eqz v13, :cond_8

    .line 406
    invoke-virtual {p0, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 420
    .end local v0           #gpsProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_8
    :goto_2
    if-eqz v10, :cond_9

    .line 421
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 424
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    goto :goto_1

    .line 409
    .restart local v0       #gpsProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_a
    if-nez v8, :cond_8

    if-eqz v0, :cond_8

    .line 410
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationNetworkRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationGpsRule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 414
    if-eqz v13, :cond_8

    .line 415
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v1, v1, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2
.end method

.method private propertyChangedFrequency(Ljava/lang/Object;)V
    .locals 9
    .parameter "newValue"

    .prologue
    .line 436
    const/4 v3, 0x0

    .line 437
    .local v3, legacyModeEnabled:Z
    iget-boolean v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v5, :cond_0

    .line 438
    const/4 v3, 0x1

    .line 441
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L

    mul-double v0, v5, v7

    .line 442
    .local v0, frequencyProperty:D
    iget-wide v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    cmpl-double v5, v0, v5

    if-eqz v5, :cond_2

    .line 443
    iput-wide v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    .line 445
    iget-object v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 446
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    iget-object v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 448
    .local v4, locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    const-string v5, "minUpdateTime"

    iget-wide v6, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    .end local v4           #locationProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    :cond_1
    if-eqz v3, :cond_2

    .line 452
    iget-object v5, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 455
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private propertyChangedPreferredProvider(Ljava/lang/Object;)V
    .locals 9
    .parameter "newValue"

    .prologue
    .line 465
    const/4 v7, 0x0

    .line 466
    .local v7, legacyModeEnabled:Z
    iget-boolean v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v2, :cond_0

    .line 467
    const/4 v7, 0x1

    .line 470
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, preferredProviderProperty:Ljava/lang/String;
    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 477
    .local v8, oldProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .line 479
    .local v0, newProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    if-eqz v8, :cond_3

    .line 480
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    if-eqz v7, :cond_3

    .line 483
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v2, v2, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v8}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 487
    :cond_3
    if-nez v0, :cond_4

    .line 488
    new-instance v0, Lti/modules/titanium/geolocation/android/LocationProviderProxy;

    .end local v0           #newProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyMap:Ljava/util/HashMap;

    iget v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationAccuracyProperty:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationFrequency:D

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;-><init>(Ljava/lang/String;DDLti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;)V

    .line 489
    .restart local v0       #newProvider:Lti/modules/titanium/geolocation/android/LocationProviderProxy;
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    if-eqz v7, :cond_4

    .line 492
    invoke-virtual {p0, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 496
    :cond_4
    iput-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationPreferredProvider:Ljava/lang/String;

    goto :goto_0
.end method

.method private shouldUseUpdate(Landroid/location/Location;)Z
    .locals 4
    .parameter "newLocation"

    .prologue
    .line 790
    const/4 v1, 0x0

    .line 792
    .local v1, passed:Z
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 793
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-object v3, v3, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 794
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-object v3, v3, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .line 795
    .local v2, rule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->currentLocation:Landroid/location/Location;

    invoke-virtual {v2, v3, p1}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->check(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    const/4 v1, 0x1

    .line 821
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #rule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    :cond_1
    :goto_0
    return v1

    .line 803
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 806
    :cond_3
    iget-boolean v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-nez v3, :cond_5

    .line 807
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/geolocation/android/LocationRuleProxy;

    .line 808
    .restart local v2       #rule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->currentLocation:Landroid/location/Location;

    invoke-virtual {v2, v3, p1}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->check(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 809
    const/4 v1, 0x1

    .line 811
    goto :goto_0

    .line 818
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #rule:Lti/modules/titanium/geolocation/android/LocationRuleProxy;
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enableLocationProviders(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/geolocation/android/LocationProviderProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, locationProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/geolocation/android/LocationProviderProxy;>;"
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->doEnableLocationProviders(Ljava/util/HashMap;)V

    .line 638
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x136

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 636
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter "event"
    .parameter "count"
    .parameter "proxy"

    .prologue
    const/4 v3, 0x1

    .line 506
    const-string v2, "heading"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    iget-boolean v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    if-nez v2, :cond_0

    .line 508
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v2}, Lti/modules/titanium/geolocation/TiCompass;->registerListener()V

    .line 509
    iput-boolean v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    .line 534
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 535
    return-void

    .line 512
    :cond_1
    const-string v2, "location"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    iget v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    .line 514
    iget v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-ne v2, v3, :cond_0

    .line 515
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyLocationProviders:Ljava/util/HashMap;

    .line 517
    .local v1, locationProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/geolocation/android/LocationProviderProxy;>;"
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 518
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->androidModule:Lti/modules/titanium/geolocation/android/AndroidModule;

    iget-object v1, v2, Lti/modules/titanium/geolocation/android/AndroidModule;->manualLocationProviders:Ljava/util/HashMap;

    .line 523
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->enableLocationProviders(Ljava/util/HashMap;)V

    .line 526
    iget-object v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v2}, Lti/modules/titanium/geolocation/TiLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 527
    .local v0, lastKnownLocation:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 528
    const-string v2, "location"

    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v3, v3, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationEvent(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 529
    invoke-direct {p0, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->doAnalytics(Landroid/location/Location;)V

    goto :goto_0

    .line 520
    .end local v0           #lastKnownLocation:Landroid/location/Location;
    :cond_3
    iget-boolean v2, p0, Lti/modules/titanium/geolocation/GeolocationModule;->legacyModeActive:Z

    if-nez v2, :cond_2

    .line 521
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->simpleLocationProviders:Ljava/util/HashMap;

    goto :goto_1
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "event"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 543
    const-string v0, "heading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiCompass;->unregisterListener()V

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->compassListenersRegistered:Z

    .line 556
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 557
    return-void

    .line 549
    :cond_1
    const-string v0, "location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    .line 551
    iget v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-nez v0, :cond_0

    .line 552
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->disableLocationProviders()V

    goto :goto_0
.end method

.method public forwardGeocoder(Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 2
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 737
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {p0, p2}, Lti/modules/titanium/geolocation/GeolocationModule;->createGeocodeResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lti/modules/titanium/geolocation/TiLocation;->forwardGeocode(Ljava/lang/String;Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;)V

    .line 738
    return-void
.end method

.method public getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 578
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0, p1}, Lti/modules/titanium/geolocation/TiCompass;->getCurrentHeading(Lorg/appcelerator/kroll/KrollFunction;)V

    .line 579
    return-void
.end method

.method public getCurrentPosition(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 6
    .parameter "callback"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 709
    if-eqz p1, :cond_0

    .line 710
    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v1}, Lti/modules/titanium/geolocation/TiLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 712
    .local v0, latestKnownLocation:Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v3, v3, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationEvent(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {p1, v1, v2}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .end local v0           #latestKnownLocation:Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 718
    .restart local v0       #latestKnownLocation:Landroid/location/Location;
    :cond_1
    const-string v1, "GeolocationModule"

    const-string v2, "Unable to get current position, location is null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x6

    const-string v4, "location is currently unavailable."

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {p1, v1, v2}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getHasCompass()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiCompass:Lti/modules/titanium/geolocation/TiCompass;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiCompass;->getHasCompass()Z

    move-result v0

    return v0
.end method

.method public getLocationServicesEnabled()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-virtual {v0}, Lti/modules/titanium/geolocation/TiLocation;->getLocationServicesEnabled()Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 211
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 213
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    .local v0, locationProviders:Ljava/lang/Object;
    check-cast v0, Ljava/util/HashMap;

    .end local v0           #locationProviders:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->doEnableLocationProviders(Ljava/util/HashMap;)V

    .line 216
    const/4 v1, 0x1

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_0
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->shouldUseUpdate(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "location"

    iget-object v1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v1, v1, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationEvent(Landroid/location/Location;Landroid/location/LocationProvider;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 242
    iput-object p1, p0, Lti/modules/titanium/geolocation/GeolocationModule;->currentLocation:Landroid/location/Location;

    .line 243
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->doAnalytics(Landroid/location/Location;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onProviderStateChanged(Ljava/lang/String;I)V
    .locals 3
    .parameter "providerName"
    .parameter "state"

    .prologue
    .line 257
    move-object v0, p1

    .line 262
    .local v0, message:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in a unknown state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 310
    :goto_0
    return-void

    .line 264
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 291
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 297
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in a unknown state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "GeolocationModule"

    const-string v2, "DEBUG_MODE"

    invoke-static {v1, v0, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "location"

    invoke-direct {p0, p2, v0}, Lti/modules/titanium/geolocation/GeolocationModule;->buildLocationErrorEvent(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/geolocation/GeolocationModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onProviderUpdated(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
    .locals 1
    .parameter "locationProvider"

    .prologue
    .line 321
    invoke-direct {p0}, Lti/modules/titanium/geolocation/GeolocationModule;->getManualMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->numLocationListeners:I

    if-lez v0, :cond_0

    .line 322
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 323
    invoke-virtual {p0, p1}, Lti/modules/titanium/geolocation/GeolocationModule;->registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V

    .line 325
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
    .line 333
    const-string v0, "accuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-direct {p0, p3}, Lti/modules/titanium/geolocation/GeolocationModule;->propertyChangedAccuracy(Ljava/lang/Object;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    const-string v0, "frequency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-direct {p0, p3}, Lti/modules/titanium/geolocation/GeolocationModule;->propertyChangedFrequency(Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_2
    const-string v0, "preferredProvider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0, p3}, Lti/modules/titanium/geolocation/GeolocationModule;->propertyChangedPreferredProvider(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerLocationProvider(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
    .locals 7
    .parameter "locationProvider"

    .prologue
    .line 606
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, provider:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    iget-object v0, v0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getMinUpdateTime()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {p1}, Lti/modules/titanium/geolocation/android/LocationProviderProxy;->getMinUpdateDistance()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 621
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v6

    .line 616
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "GeolocationModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], provider is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 619
    .local v6, e:Ljava/lang/SecurityException;
    const-string v0, "GeolocationModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reverseGeocoder(DDLorg/appcelerator/kroll/KrollFunction;)V
    .locals 6
    .parameter "latitude"
    .parameter "longitude"
    .parameter "callback"

    .prologue
    .line 752
    iget-object v0, p0, Lti/modules/titanium/geolocation/GeolocationModule;->tiLocation:Lti/modules/titanium/geolocation/TiLocation;

    invoke-direct {p0, p5}, Lti/modules/titanium/geolocation/GeolocationModule;->createGeocodeResponseHandler(Lorg/appcelerator/kroll/KrollFunction;)Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lti/modules/titanium/geolocation/TiLocation;->reverseGeocode(DDLti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;)V

    .line 753
    return-void
.end method
