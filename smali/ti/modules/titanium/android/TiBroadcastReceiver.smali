.class public Lti/modules/titanium/android/TiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TiBroadcastReceiver.java"


# instance fields
.field private callback:Lorg/appcelerator/kroll/KrollFunction;

.field proxy:Lorg/appcelerator/kroll/KrollProxy;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    new-instance v0, Lti/modules/titanium/android/BroadcastReceiverProxy;

    invoke-direct {v0, p0}, Lti/modules/titanium/android/BroadcastReceiverProxy;-><init>(Lti/modules/titanium/android/TiBroadcastReceiver;)V

    iput-object v0, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 38
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/TiBroadcastReceiver;->setUrl(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    iput-object p1, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    iget-object v1, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->isInitialized()Z

    .line 46
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->url:Ljava/lang/String;

    invoke-static {v2}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->url:Ljava/lang/String;

    iget-object v4, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v1, v2, v3, v4}, Lorg/appcelerator/kroll/KrollRuntime;->runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->callback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 48
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 49
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "intent"

    new-instance v2, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-direct {v2, p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCallback(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0
    .parameter "func"

    .prologue
    .line 72
    iput-object p1, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->callback:Lorg/appcelerator/kroll/KrollFunction;

    .line 73
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "fullUrl"

    .prologue
    .line 56
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    :cond_0
    const-string v0, "app://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "app:/"

    const-string v1, "Resources"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    :cond_1
    :goto_0
    iput-object p1, p0, Lti/modules/titanium/android/TiBroadcastReceiver;->url:Ljava/lang/String;

    .line 68
    return-void

    .line 63
    :cond_2
    const-string v0, "file:///android_asset/Resources/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "file:///android_asset/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
