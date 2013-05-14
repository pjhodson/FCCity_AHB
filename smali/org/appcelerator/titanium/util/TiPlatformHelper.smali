.class public Lorg/appcelerator/titanium/util/TiPlatformHelper;
.super Ljava/lang/Object;
.source "TiPlatformHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TiPlatformHelper"

.field private static applicationDisplayInfoInitialized:Z

.field public static applicationLogicalDensity:I

.field public static applicationScaleFactor:F

.field private static final currencyCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currencySymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currencySymbolsByCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final locales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static platformId:Ljava/lang/String;

.field public static sb:Ljava/lang/StringBuilder;

.field public static sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    .line 50
    const/high16 v0, 0x3f80

    sput v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    .line 51
    const/16 v0, 0xa0

    sput v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEventId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, s:Ljava/lang/String;
    sget-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    monitor-enter v2

    .line 288
    :try_start_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 291
    monitor-exit v2

    .line 292
    return-object v0

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getArchitecture()Ljava/lang/String;
    .locals 7

    .prologue
    .line 296
    const-string v0, "Unknown"

    .line 298
    .local v0, arch:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 301
    .local v2, l:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 302
    const-string v5, "Processor"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, values:[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 309
    .end local v4           #values:[Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 316
    .end local v2           #l:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :goto_0
    return-object v0

    .line 309
    .restart local v2       #l:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    .end local v2           #l:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 313
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TiPlatformHelper"

    const-string v6, "Error while trying to access processor info in /proc/cpuinfo"

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAvailableMemory()D
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static getCurrencyCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "locale"

    .prologue
    .line 252
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, code:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 255
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 256
    .restart local v0       #code:Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "currencyCode"

    .prologue
    .line 276
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, symbol:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 279
    .end local v0           #symbol:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0       #symbol:Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCurrencySymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "locale"

    .prologue
    .line 264
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    .local v0, symbol:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 267
    .end local v0           #symbol:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0       #symbol:Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, ipAddress:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 365
    .local v1, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 366
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 367
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    .line 368
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 369
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found IP address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v0

    .line 373
    .restart local v2       #wifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v3       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access WifiInfo, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access the WifiManager, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v5, "Must have android.permission.ACCESS_WIFI_STATE, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .parameter "localeCode"

    .prologue
    .line 200
    if-nez p0, :cond_0

    const/4 v6, 0x0

    .line 246
    :goto_0
    return-object v6

    .line 201
    :cond_0
    const/16 v6, 0x2d

    const/16 v7, 0x5f

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, code:Ljava/lang/String;
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    goto :goto_0

    .line 206
    :cond_1
    const-string v3, ""

    .local v3, language:Ljava/lang/String;
    const-string v1, ""

    .local v1, country:Ljava/lang/String;
    const-string v5, ""

    .line 207
    .local v5, variant:Ljava/lang/String;
    const-string v6, "__"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 209
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v4, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 211
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 244
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3, v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v2, l:Ljava/util/Locale;
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    .line 246
    goto :goto_0

    .line 213
    .end local v2           #l:Ljava/util/Locale;
    .end local v4           #tokens:Ljava/util/StringTokenizer;
    :cond_3
    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 215
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "_"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .restart local v4       #tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 217
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 219
    :cond_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 222
    .end local v4           #tokens:Ljava/util/StringTokenizer;
    :cond_5
    const-string v6, "__"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 224
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .restart local v4       #tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 226
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 228
    :cond_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 232
    .end local v4           #tokens:Ljava/util/StringTokenizer;
    :cond_7
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .restart local v4       #tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 234
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 236
    :cond_8
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 237
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_9
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 240
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getMacaddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, macaddr:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 324
    .local v1, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 325
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 326
    .local v3, wm:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 328
    .local v2, wi:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_2

    .line 329
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found mac address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v2           #wi:Landroid/net/wifi/WifiInfo;
    .end local v3           #wm:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 355
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_1
    return-object v0

    .line 332
    .restart local v2       #wi:Landroid/net/wifi/WifiInfo;
    .restart local v3       #wm:Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v5, "Mo WifiInfo, enabling Wifi to get mac address"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 334
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 335
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 336
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_1
    const-string v4, "TiPlatformHelper"

    const-string v5, "Disabling wifi because we enabled it."

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 338
    :cond_3
    const-string v4, "TiPlatformHelper"

    const-string v5, "Still no WifiInfo, assuming no mac address"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    :cond_4
    const-string v4, "TiPlatformHelper"

    const-string v5, "Enabling wifi failed, assuming no mac address"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_5
    const-string v4, "TiPlatformHelper"

    const-string v5, "Wifi already enabled, assuming no mac address"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    .end local v2           #wi:Landroid/net/wifi/WifiInfo;
    .end local v3           #wm:Landroid/net/wifi/WifiManager;
    :cond_6
    const-string v4, "TiPlatformHelper"

    const-string v5, "Must have android.permission.ACCESS_WIFI_STATE to get mac address."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getMobileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "android"

    return-object v0
.end method

.method public static getNetmask()Ljava/lang/String;
    .locals 7

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, netmask:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 389
    .local v2, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 390
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 391
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    .line 392
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 393
    .local v0, dhcpInfo:Landroid/net/DhcpInfo;
    if-eqz v0, :cond_0

    .line 394
    iget v4, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found netmask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v0           #dhcpInfo:Landroid/net/DhcpInfo;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 397
    .restart local v0       #dhcpInfo:Landroid/net/DhcpInfo;
    .restart local v3       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access DhcpInfo, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v0           #dhcpInfo:Landroid/net/DhcpInfo;
    :cond_1
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access the WifiManager, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v5, "Must have android.permission.ACCESS_WIFI_STATE, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getNetworkType()I
    .locals 7

    .prologue
    .line 414
    const/4 v3, -0x1

    .line 416
    .local v3, type:I
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 418
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 420
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 421
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 431
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 424
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 426
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 427
    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission has been removed. Cannot determine network type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->networkTypeToTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "Android"

    return-object v0
.end method

.method public static getOstype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "32bit"

    return-object v0
.end method

.method public static getProcessorCount()I
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize()V
    .locals 10

    .prologue
    .line 55
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 57
    .local v0, app:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 61
    sget-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 62
    const-string v7, "TiPlatformHelper"

    const-string v8, "platformId is null, setting to empty string"

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v7, ""

    sput-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 66
    :cond_0
    new-instance v3, Lorg/appcelerator/titanium/util/TiDatabaseHelper;

    invoke-direct {v3, v0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 67
    .local v3, db:Lorg/appcelerator/titanium/util/TiDatabaseHelper;
    const-string v7, "unique_machine_id"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, storedMachineId:Ljava/lang/String;
    const-string v7, "hardware_machine_id"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, hardwareMachineId:Ljava/lang/String;
    sget-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 73
    sget-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 79
    .local v2, currentMachineId:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "9774d56d682e549c"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "1234567890ABCDEF"

    aput-object v8, v1, v7

    .line 83
    .local v1, badIds:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_1

    .line 84
    aget-object v7, v1, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    const-string v7, "TiPlatformHelper"

    const-string v8, "renaming ID"

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v2

    .line 92
    :cond_1
    if-eq v2, v6, :cond_2

    .line 93
    const-string v7, "unique_machine_id"

    invoke-virtual {v3, v7, v2}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v7, "hardware_machine_id"

    sget-object v8, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v7, "previous_machine_id"

    invoke-virtual {v3, v7, v6}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    sput-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 99
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sessionId:Ljava/lang/String;

    .line 100
    return-void

    .line 75
    .end local v1           #badIds:[Ljava/lang/String;
    .end local v2           #currentMachineId:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3
    move-object v2, v6

    .restart local v2       #currentMachineId:Ljava/lang/String;
    goto :goto_0

    .line 83
    .restart local v1       #badIds:[Ljava/lang/String;
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized intializeDisplayMetrics(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/high16 v8, 0x3f80

    .line 109
    const-class v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z

    if-nez v4, :cond_0

    .line 110
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    const-class v4, Landroid/content/res/Resources;

    const-string v6, "getCompatibilityInfo"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 116
    .local v3, gciMethod:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, compatInfo:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "applicationScale"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    .end local v0           #compatInfo:Ljava/lang/Object;
    .end local v3           #gciMethod:Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    sget v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_1

    .line 123
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 130
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    :cond_0
    monitor-exit v5

    return-void

    .line 118
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "TiPlatformHelper"

    const-string v6, "Unable to get application scale factor, using reported density and its factor"

    const-string v7, "DEBUG_MODE"

    invoke-static {v4, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 109
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 124
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    :cond_1
    :try_start_4
    sget v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    .line 125
    const/16 v4, 0xa0

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    goto :goto_1

    .line 127
    :cond_2
    const/16 v4, 0x78

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static networkTypeToTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 436
    packed-switch p0, :pswitch_data_0

    .line 442
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 438
    :pswitch_1
    const-string v0, "NONE"

    goto :goto_0

    .line 439
    :pswitch_2
    const-string v0, "WIFI"

    goto :goto_0

    .line 440
    :pswitch_3
    const-string v0, "MOBILE"

    goto :goto_0

    .line 441
    :pswitch_4
    const-string v0, "LAN"

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static resetSid()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sessionId:Ljava/lang/String;

    .line 105
    return-void
.end method
