.class public Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
.super Ljava/lang/Object;
.source "TiAnalyticsEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TitaniumAnalyticsEvent"

.field private static isoDateFormatter:Ljava/text/SimpleDateFormat;

.field private static utc:Ljava/util/TimeZone;


# instance fields
.field private eventAppGuid:Ljava/lang/String;

.field private eventEvent:Ljava/lang/String;

.field private eventMid:Ljava/lang/String;

.field private eventPayload:Ljava/lang/String;

.field private eventSid:Ljava/lang/String;

.field private eventTimestamp:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private expandPayload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->utc:Ljava/util/TimeZone;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    .line 45
    sget-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->utc:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "eventType"
    .parameter "eventEvent"
    .parameter "eventPayload"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v1, o:Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-direct {p0, p1, p2, v1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #o:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "TitaniumAnalyticsEvent"

    const-string v3, "Error packaging string."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, p2, v2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "eventType"
    .parameter "eventEvent"
    .parameter "eventPayload"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 77
    return-void
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "eventType"
    .parameter "eventEvent"
    .parameter "eventPayload"

    .prologue
    .line 80
    iput-object p1, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventType:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventEvent:Ljava/lang/String;

    .line 82
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventTimestamp:Ljava/lang/String;

    .line 83
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventMid:Ljava/lang/String;

    .line 84
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventSid:Ljava/lang/String;

    .line 85
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventAppGuid:Ljava/lang/String;

    .line 86
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventPayload:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->expandPayload:Z

    .line 88
    return-void
.end method


# virtual methods
.method public getEventAppGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventAppGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getEventMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventMid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventSid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public mustExpandPayload()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->expandPayload:Z

    return v0
.end method
