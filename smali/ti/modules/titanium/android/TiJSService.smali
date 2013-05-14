.class public Lti/modules/titanium/android/TiJSService;
.super Lorg/appcelerator/titanium/TiBaseService;
.source "TiJSService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiJSService"


# instance fields
.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseService;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private finalizeUrl(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 33
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 39
    :cond_0
    return-void

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service url required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .locals 6
    .parameter "intent"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lti/modules/titanium/android/TiJSService;->finalizeUrl(Landroid/content/Intent;)V

    .line 84
    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 85
    .local v1, lastSlash:I
    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, baseUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :cond_0
    new-instance v2, Lorg/appcelerator/titanium/proxy/ServiceProxy;

    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-direct {v2, p0, p1, v3}, Lorg/appcelerator/titanium/proxy/ServiceProxy;-><init>(Landroid/app/Service;Landroid/content/Intent;I)V

    .line 90
    .local v2, proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    return-object v2
.end method

.method protected executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 54
    iget-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 55
    .local v0, fullUrl:Ljava/lang/String;
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    if-eq v1, v0, :cond_3

    .line 60
    const-string v1, "TiJSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval JS Service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    :goto_0
    const-string v1, "app://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    const-string v1, "app:/"

    const-string v2, "Resources"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_2
    :goto_1
    const-string v1, "resume"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 74
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-static {v0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lorg/appcelerator/kroll/KrollRuntime;->runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 75
    const-string v1, "pause"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 76
    const-string v1, "stop"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 78
    return-void

    .line 62
    :cond_3
    const-string v1, "TiJSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval JS Service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_4
    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    const-string v1, "file:///android_asset/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 44
    const-string v1, "TiJSService"

    const-string v2, "onStartCommand"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0, p1}, Lti/modules/titanium/android/TiJSService;->finalizeUrl(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/TiJSService;->createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;

    move-result-object v0

    .line 47
    .local v0, proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    invoke-virtual {p0, v0}, Lti/modules/titanium/android/TiJSService;->start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 49
    const-string v1, "startMode"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 96
    const-string v0, "start"

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/TiJSService;->executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 98
    return-void
.end method
