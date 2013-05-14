.class public Lti/modules/titanium/app/properties/PropertiesModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "PropertiesModule.java"


# instance fields
.field private appProperties:Lorg/appcelerator/titanium/TiProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 27
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/app/properties/PropertiesModule;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getBool(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .parameter "key"

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 50
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreferenceValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiProperties;->getPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 56
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 62
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiProperties;->listProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeProperty(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lti/modules/titanium/app/properties/PropertiesModule;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiProperties;->removeProperty(Ljava/lang/String;)V

    .line 76
    const-string v0, "change"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/app/properties/PropertiesModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lti/modules/titanium/app/properties/PropertiesModule;->getPreferenceValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, boolValue:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v1, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setBool(Ljava/lang/String;Z)V

    .line 92
    const-string v1, "change"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 96
    :cond_1
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lti/modules/titanium/app/properties/PropertiesModule;->getPreferenceValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, doubleValue:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v1, p1, p2, p3}, Lorg/appcelerator/titanium/TiProperties;->setDouble(Ljava/lang/String;D)V

    .line 106
    const-string v1, "change"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 109
    :cond_1
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lti/modules/titanium/app/properties/PropertiesModule;->getPreferenceValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, intValue:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v1, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 117
    const-string v1, "change"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 120
    :cond_1
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lti/modules/titanium/app/properties/PropertiesModule;->getPreferenceValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, stringValue:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v1, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "change"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 130
    :cond_1
    return-void
.end method
