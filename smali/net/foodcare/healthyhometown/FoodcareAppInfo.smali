.class public final Lnet/foodcare/healthyhometown/FoodcareAppInfo;
.super Ljava/lang/Object;
.source "FoodcareAppInfo.java"

# interfaces
.implements Lorg/appcelerator/titanium/ITiAppInfo;


# static fields
.field private static final LCAT:Ljava/lang/String; = "AppInfo"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x1b1290

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v1

    .line 20
    const-string v2, "ti.android.google.map.api.key.production"

    const-string v3, "0D-1ixn5hO7GmcNJ1Yj-S5rdRW6fhCBVj-h39ZA"

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v2, "ti.android.google.map.api.key.production"

    const-string v3, "0D-1ixn5hO7GmcNJ1Yj-S5rdRW6fhCBVj-h39ZA"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v2, "ti.android.threadstacksize"

    invoke-virtual {v0, v2, v4}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 24
    const-string v2, "ti.android.threadstacksize"

    invoke-virtual {v1, v2, v4}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 26
    const-string v2, "ti.ui.defaultunit"

    const-string v3, "system"

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v2, "ti.ui.defaultunit"

    const-string v3, "system"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v2, "ti.android.google.map.api.key.development"

    const-string v3, "0ZnKXkWA2dIAu2EM-OV4ZD2lJY3sEWE5TSgjJNg"

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "ti.android.google.map.api.key.development"

    const-string v3, "0ZnKXkWA2dIAu2EM-OV4ZD2lJY3sEWE5TSgjJNg"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "ti.deploytype"

    const-string v3, "test"

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "ti.deploytype"

    const-string v3, "test"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "ti.android.httpclient.maxbuffersize"

    invoke-virtual {v0, v2, v4}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 36
    const-string v0, "ti.android.httpclient.maxbuffersize"

    invoke-virtual {v1, v0, v4}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "2012-2013 by FoodCare, Inc"

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "FCHealthyHometown"

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "412485bf-bfe0-4187-808f-55d5c118db0b"

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "Icon.png"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "net.foodcare.healthyhometown"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "FoodCare"

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "FoodCare, Inc."

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "http://m.foodcare.me/"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "1.0.0"

    return-object v0
.end method

.method public isAnalyticsEnabled()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isNavBarHidden()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
