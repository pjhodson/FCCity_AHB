.class public Lti/modules/titanium/app/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "App.AndroidModule"


# instance fields
.field protected r:Lorg/appcelerator/titanium/proxy/RProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Lti/modules/titanium/app/AndroidModule;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getR()Lorg/appcelerator/titanium/proxy/RProxy;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lorg/appcelerator/titanium/proxy/RProxy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/proxy/RProxy;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    .line 43
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    return-object v0
.end method

.method public getTopActivity()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getActivityRefCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v3

    .line 55
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 56
    .local v2, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    instance-of v4, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v4, :cond_3

    .line 59
    :cond_2
    :try_start_0
    iget-object v4, v2, Lorg/appcelerator/titanium/TiApplication;->rootActivityLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 60
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :cond_3
    :goto_1
    instance-of v4, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v4, :cond_0

    .line 67
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v3

    goto :goto_0

    .line 61
    .restart local v0       #activity:Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v4, "App.AndroidModule"

    const-string v5, "Interrupted awaiting rootActivityLatch"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
