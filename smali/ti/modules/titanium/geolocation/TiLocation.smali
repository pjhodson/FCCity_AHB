.class public Lti/modules/titanium/geolocation/TiLocation;
.super Ljava/lang/Object;
.source "TiLocation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;
    }
.end annotation


# static fields
.field private static final BASE_GEO_URL:Ljava/lang/String; = "http://api.appcelerator.net/p/v1/geo?"

.field public static final ERR_POSITION_UNAVAILABLE:I = 0x6

.field public static final MSG_FIRST_ID:I = 0x64

.field public static final MSG_LAST_ID:I = 0x66

.field public static final MSG_LOOKUP:I = 0x65

.field private static final TAG:Ljava/lang/String; = "TiLocation"


# instance fields
.field private appGuid:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private knownProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastAnalyticsTimestamp:J

.field public locationManager:Landroid/location/LocationManager;

.field private mobileId:Ljava/lang/String;

.field private runtimeHandler:Landroid/os/Handler;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lti/modules/titanium/geolocation/TiLocation;->lastAnalyticsTimestamp:J

    .line 70
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->knownProviders:Ljava/util/List;

    .line 72
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->mobileId:Ljava/lang/String;

    .line 73
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->appGuid:Ljava/lang/String;

    .line 74
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->sessionId:Ljava/lang/String;

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->countryCode:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getRuntimeMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->runtimeHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/geolocation/TiLocation;Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/TiLocation;->buildForwardGeocodeResponse(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/geolocation/TiLocation;Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lti/modules/titanium/geolocation/TiLocation;->buildReverseGeocodeResponse(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method private buildAddress(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .parameter "place"

    .prologue
    .line 320
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 321
    .local v0, address:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "street1"

    const-string v2, "street"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "street"

    const-string v2, "street"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "city"

    const-string v2, "city"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "region1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "region2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "postalCode"

    const-string v2, "zipcode"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "country"

    const-string v2, "country"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "countryCode"

    const-string v2, "country_code"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "country_code"

    const-string v2, "country_code"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "longitude"

    const-string v2, "longitude"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "latitude"

    const-string v2, "latitude"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "displayAddress"

    const-string v2, "address"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v1, "address"

    const-string v2, "address"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-object v0
.end method

.method private buildForwardGeocodeResponse(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .parameter "jsonResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 293
    .local v0, address:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "places"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 294
    .local v1, places:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lti/modules/titanium/geolocation/TiLocation;->buildAddress(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 297
    :cond_0
    return-object v0
.end method

.method private buildGeocoderURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "direction"
    .parameter "mid"
    .parameter "aguid"
    .parameter "sid"
    .parameter "query"
    .parameter "countryCode"

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 200
    .local v2, url:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, "http://api.appcelerator.net/p/v1/geo?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d=r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&aguid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {p5, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 218
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "TiLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to encode query to utf-8: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildReverseGeocodeResponse(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;
    .locals 7
    .parameter "jsonResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 303
    const-string v5, "places"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 304
    .local v3, places:Lorg/json/JSONArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v0, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/kroll/KrollDict;>;"
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 307
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 308
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/geolocation/TiLocation;->buildAddress(Lorg/json/JSONObject;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_0
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 312
    .local v4, response:Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "success"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v5, "places"

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object v4
.end method

.method private getLookUpTask()Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lti/modules/titanium/geolocation/TiLocation$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/geolocation/TiLocation$1;-><init>(Lti/modules/titanium/geolocation/TiLocation;)V

    .line 285
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Integer;>;"
    return-object v0
.end method


# virtual methods
.method public doAnalytics(Landroid/location/Location;)V
    .locals 7
    .parameter "location"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    .line 152
    .local v1, locationTime:J
    iget-wide v3, p0, Lti/modules/titanium/geolocation/TiLocation;->lastAnalyticsTimestamp:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 153
    invoke-static {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createAppGeoEvent(Landroid/location/Location;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v0

    .line 154
    .local v0, event:Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 156
    iput-wide v1, p0, Lti/modules/titanium/geolocation/TiLocation;->lastAnalyticsTimestamp:J

    .line 159
    .end local v0           #event:Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
    :cond_0
    return-void
.end method

.method public forwardGeocode(Ljava/lang/String;Lti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;)V
    .locals 9
    .parameter "address"
    .parameter "responseHandler"

    .prologue
    .line 163
    if-eqz p1, :cond_1

    .line 164
    const-string v1, "forward"

    iget-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->mobileId:Ljava/lang/String;

    iget-object v3, p0, Lti/modules/titanium/geolocation/TiLocation;->appGuid:Ljava/lang/String;

    iget-object v4, p0, Lti/modules/titanium/geolocation/TiLocation;->sessionId:Ljava/lang/String;

    iget-object v6, p0, Lti/modules/titanium/geolocation/TiLocation;->countryCode:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/TiLocation;->buildGeocoderURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, geocoderUrl:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 166
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->runtimeHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 167
    .local v8, message:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "direction"

    const-string v2, "forward"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object p2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 177
    .end local v7           #geocoderUrl:Ljava/lang/String;
    .end local v8           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v0, "TiLocation"

    const-string v1, "Unable to forward geocode, address is null"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 9

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 125
    .local v3, latestKnownLocation:Landroid/location/Location;
    iget-object v5, p0, Lti/modules/titanium/geolocation/TiLocation;->knownProviders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    .local v4, provider:Ljava/lang/String;
    const/4 v2, 0x0

    .line 128
    .local v2, lastKnownLocation:Landroid/location/Location;
    :try_start_0
    iget-object v5, p0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 137
    :goto_1
    if-eqz v2, :cond_0

    .line 141
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 142
    :cond_1
    move-object v3, v2

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "TiLocation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get last know location for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], provider is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/SecurityException;
    const-string v5, "TiLocation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get last know location for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], permission denied"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v0           #e:Ljava/lang/SecurityException;
    .end local v2           #lastKnownLocation:Landroid/location/Location;
    .end local v4           #provider:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public getLocationServicesEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 101
    iget-object v5, p0, Lti/modules/titanium/geolocation/TiLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, providerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const-string v5, "TiLocation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabled location provider count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, providerName:Ljava/lang/String;
    const-string v5, "TiLocation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " service available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #providerName:Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, name:Ljava/lang/String;
    const-string v5, "network"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "gps"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, urlValue:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "direction"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, directionValue:Ljava/lang/String;
    invoke-direct {p0}, Lti/modules/titanium/geolocation/TiLocation;->getLookUpTask()Landroid/os/AsyncTask;

    move-result-object v1

    .line 86
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Integer;>;"
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    aput-object v0, v5, v3

    const/4 v4, 0x2

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    .end local v0           #directionValue:Ljava/lang/String;
    .end local v1           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Integer;>;"
    .end local v2           #urlValue:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public isProvider(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 96
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->knownProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reverseGeocode(DDLti/modules/titanium/geolocation/TiLocation$GeocodeResponseHandler;)V
    .locals 9
    .parameter "latitude"
    .parameter "longitude"
    .parameter "responseHandler"

    .prologue
    .line 181
    const-string v1, "reverse"

    iget-object v2, p0, Lti/modules/titanium/geolocation/TiLocation;->mobileId:Ljava/lang/String;

    iget-object v3, p0, Lti/modules/titanium/geolocation/TiLocation;->appGuid:Ljava/lang/String;

    iget-object v4, p0, Lti/modules/titanium/geolocation/TiLocation;->sessionId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/geolocation/TiLocation;->countryCode:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/geolocation/TiLocation;->buildGeocoderURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, geocoderUrl:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 183
    iget-object v0, p0, Lti/modules/titanium/geolocation/TiLocation;->runtimeHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 184
    .local v8, message:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "direction"

    const-string v2, "reverse"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object p5, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 193
    .end local v8           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, "TiLocation"

    const-string v1, "Unable to reverse geocode, geocoder url is null"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
