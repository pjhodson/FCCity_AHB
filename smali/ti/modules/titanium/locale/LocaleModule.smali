.class public Lti/modules/titanium/locale/LocaleModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "LocaleModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocaleModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 33
    invoke-direct {p0}, Lti/modules/titanium/locale/LocaleModule;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public formatTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "telephoneNumber"

    .prologue
    .line 83
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "localeString"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 61
    :goto_0
    return-object v1

    .line 60
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 61
    .local v0, locale:Ljava/util/Locale;
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencyCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "currencyCode"

    .prologue
    .line 67
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "localeString"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    .line 76
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 77
    .local v0, locale:Ljava/util/Locale;
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencySymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .end parameter
    .parameter "defaultValue"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 96
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, resid:I
    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiApplication;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    .line 107
    .end local v1           #resid:I
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 102
    .restart local p2
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v2, "LocaleModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource string with key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found.  Returning default value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0           #e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocaleModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to get resource string with key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\':"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 89
    const-string v0, "LocaleModule"

    const-string v1, "Locale.setLanguage not supported for Android."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
