.class public Lti/modules/titanium/geolocation/android/LocationRuleProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "LocationRuleProxy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .parameter "provider"
    .parameter "accuracy"
    .parameter "minAge"
    .parameter "maxAge"

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 69
    const-string v0, "provider"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v0, "accuracy"

    invoke-virtual {p0, v0, p2}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v0, "minAge"

    invoke-virtual {p0, v0, p3}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v0, "maxAge"

    invoke-virtual {p0, v0, p4}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter "creationArgs"

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method


# virtual methods
.method public check(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .parameter "currentLocation"
    .parameter "newLocation"

    .prologue
    .line 89
    iget-object v10, p0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v11, "provider"

    invoke-virtual {v10, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, provider:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 92
    const/4 v10, 0x0

    .line 120
    :goto_0
    return v10

    .line 96
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v11, "accuracy"

    invoke-virtual {v10, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 97
    .local v7, rawAccuracy:Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 98
    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 99
    .local v0, accuracyValue:D
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    cmpg-double v10, v0, v10

    if-gez v10, :cond_1

    .line 100
    const/4 v10, 0x0

    goto :goto_0

    .line 104
    .end local v0           #accuracyValue:D
    :cond_1
    iget-object v10, p0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v11, "minAge"

    invoke-virtual {v10, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 105
    .local v9, rawMinAge:Ljava/lang/Object;
    if-eqz v9, :cond_2

    if-eqz p1, :cond_2

    .line 106
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v4

    .line 107
    .local v4, minAgeValue:D
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-double v10, v10

    cmpl-double v10, v4, v10

    if-lez v10, :cond_2

    .line 108
    const/4 v10, 0x0

    goto :goto_0

    .line 112
    .end local v4           #minAgeValue:D
    :cond_2
    iget-object v10, p0, Lti/modules/titanium/geolocation/android/LocationRuleProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v11, "maxAge"

    invoke-virtual {v10, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 113
    .local v8, rawMaxAge:Ljava/lang/Object;
    if-eqz v8, :cond_3

    if-eqz p1, :cond_3

    .line 114
    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 115
    .local v2, maxAgeValue:D
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-double v10, v10

    cmpl-double v10, v2, v10

    if-lez v10, :cond_3

    .line 116
    const/4 v10, 0x0

    goto :goto_0

    .line 120
    .end local v2           #maxAgeValue:D
    :cond_3
    const/4 v10, 0x1

    goto :goto_0
.end method
