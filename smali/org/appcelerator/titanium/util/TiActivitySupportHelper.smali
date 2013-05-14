.class public Lorg/appcelerator/titanium/util/TiActivitySupportHelper;
.super Ljava/lang/Object;
.source "TiActivitySupportHelper.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivitySupport;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiActivitySupportHelper"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected resultHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/titanium/util/TiActivityResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected uniqueResultCodeAllocator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->activity:Landroid/app/Activity;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->resultHandlers:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->uniqueResultCodeAllocator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    return-void
.end method


# virtual methods
.method public getUniqueResultCode()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->uniqueResultCodeAllocator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V
    .locals 3
    .parameter "intent"
    .parameter "code"
    .parameter "resultHandler"

    .prologue
    .line 46
    new-instance v1, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;

    invoke-direct {v1, p0, p3, p2}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper$1;-><init>(Lorg/appcelerator/titanium/util/TiActivitySupportHelper;Lorg/appcelerator/titanium/util/TiActivityResultHandler;I)V

    .line 60
    .local v1, wrapper:Lorg/appcelerator/titanium/util/TiActivityResultHandler;
    invoke-virtual {p0, p2, v1}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->registerResultHandler(ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 62
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2, p2, v0}, Lorg/appcelerator/titanium/util/TiActivityResultHandler;->onError(Landroid/app/Activity;ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 75
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->resultHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/util/TiActivityResultHandler;

    .line 76
    .local v0, handler:Lorg/appcelerator/titanium/util/TiActivityResultHandler;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/appcelerator/titanium/util/TiActivityResultHandler;->onResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 79
    :cond_0
    return-void
.end method

.method public registerResultHandler(ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V
    .locals 2
    .parameter "code"
    .parameter "resultHandler"

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    const-string v0, "TiActivitySupportHelper"

    const-string v1, "Received a null result handler"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->resultHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public removeResultHandler(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 86
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->resultHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method
