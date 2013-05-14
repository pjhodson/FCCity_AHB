.class public Lorg/appcelerator/titanium/proxy/ServiceProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ServiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiServiceProxy"


# instance fields
.field private forBoundServices:Z

.field private intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field private service:Landroid/app/Service;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceInstanceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Landroid/content/Intent;I)V
    .locals 1
    .parameter "service"
    .parameter "intent"
    .parameter "serviceInstanceId"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 55
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    .line 56
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Landroid/content/Intent;)V

    .line 57
    iput p3, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 1
    .parameter "intentProxy"

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 46
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    .line 48
    return-void
.end method

.method static synthetic access$002(Lorg/appcelerator/titanium/proxy/ServiceProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    return p1
.end method

.method private bindAndInvokeService()V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 128
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/TiApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    return-void
.end method

.method private unbindService()V
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 134
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 135
    const-string v1, "TiServiceProxy"

    const-string v2, "Cannot unbind service.  tiContext.getTiApp() returned null"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    instance-of v1, v1, Lorg/appcelerator/titanium/TiBaseService;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    check-cast v1, Lorg/appcelerator/titanium/TiBaseService;

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiBaseService;->unbindProxy(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 143
    :cond_1
    const-string v1, "TiServiceProxy"

    const-string v2, "Unbinding service"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    return-object v0
.end method

.method public getServiceInstanceId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    return v0
.end method

.method protected invokeBoundService(Landroid/app/Service;)V
    .locals 4
    .parameter "boundService"

    .prologue
    .line 150
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    .line 151
    instance-of v1, p1, Lorg/appcelerator/titanium/TiBaseService;

    if-nez v1, :cond_0

    .line 152
    const-string v1, "TiServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a Ti Service.  Cannot start directly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 156
    check-cast v0, Lorg/appcelerator/titanium/TiBaseService;

    .line 157
    .local v0, tiService:Lorg/appcelerator/titanium/TiBaseService;
    const-string v1, "TiServiceProxy"

    const-string v2, "Calling tiService.start for this proxy instance"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseService;->start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Lorg/appcelerator/kroll/KrollProxy;->release()V

    .line 166
    const-string v0, "TiServiceProxy"

    const-string v1, "Nullifying wrapped service"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    .line 168
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 74
    new-instance v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V

    .line 75
    return-void
.end method

.method public setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 0
    .parameter "intentProxy"

    .prologue
    .line 83
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 84
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    if-nez v0, :cond_0

    .line 90
    const-string v0, "TiServiceProxy"

    const-string v1, "Only services created via Ti.Android.createService can be started via the start() command. Ignoring start() request."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->bindAndInvokeService()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "TiServiceProxy"

    const-string v1, "Stopping service"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    if-nez v0, :cond_0

    .line 101
    const-string v0, "TiServiceProxy"

    const-string v1, "stop via stopService"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->unbindService()V

    goto :goto_0
.end method
