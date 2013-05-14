.class public Lti/modules/titanium/android/BroadcastReceiverProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "BroadcastReceiverProxy.java"


# instance fields
.field private receiver:Lti/modules/titanium/android/TiBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 26
    new-instance v0, Lti/modules/titanium/android/TiBroadcastReceiver;

    invoke-direct {v0, p0}, Lti/modules/titanium/android/TiBroadcastReceiver;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/android/BroadcastReceiverProxy;->receiver:Lti/modules/titanium/android/TiBroadcastReceiver;

    .line 27
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/android/TiBroadcastReceiver;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 32
    iput-object p1, p0, Lti/modules/titanium/android/BroadcastReceiverProxy;->receiver:Lti/modules/titanium/android/TiBroadcastReceiver;

    .line 33
    return-void
.end method


# virtual methods
.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lti/modules/titanium/android/BroadcastReceiverProxy;->receiver:Lti/modules/titanium/android/TiBroadcastReceiver;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "dict"

    .prologue
    .line 38
    if-eqz p1, :cond_2

    .line 39
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/BroadcastReceiverProxy;->setUrl(Ljava/lang/String;)V

    .line 42
    :cond_0
    const-string v0, "onReceived"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "onReceived"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/BroadcastReceiverProxy;->setOnReceived(Ljava/lang/Object;)V

    .line 45
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 47
    :cond_2
    return-void
.end method

.method public setOnReceived(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 58
    instance-of v0, p1, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lti/modules/titanium/android/BroadcastReceiverProxy;->receiver:Lti/modules/titanium/android/TiBroadcastReceiver;

    check-cast p1, Lorg/appcelerator/kroll/KrollFunction;

    .end local p1
    invoke-virtual {v0, p1}, Lti/modules/titanium/android/TiBroadcastReceiver;->setCallback(Lorg/appcelerator/kroll/KrollFunction;)V

    .line 61
    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/android/BroadcastReceiverProxy;->receiver:Lti/modules/titanium/android/TiBroadcastReceiver;

    invoke-virtual {v0, p1}, Lti/modules/titanium/android/TiBroadcastReceiver;->setUrl(Ljava/lang/String;)V

    .line 53
    return-void
.end method
