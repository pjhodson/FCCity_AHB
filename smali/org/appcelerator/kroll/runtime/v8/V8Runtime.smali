.class public final Lorg/appcelerator/kroll/runtime/v8/V8Runtime;
.super Lorg/appcelerator/kroll/KrollRuntime;
.source "V8Runtime.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MAX_V8_IDLE_INTERVAL:I = 0x7530

.field private static final MSG_PROCESS_DEBUG_MESSAGES:I = 0x12e

.field private static final NAME:Ljava/lang/String; = "v8"

.field private static final TAG:Ljava/lang/String; = "KrollV8Runtime"

.field private static externalCommonJsModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private externalModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollExternalModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastV8Idle:J

.field private libLoaded:Z

.field private loadedLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shouldGC:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalCommonJsModules:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollRuntime;-><init>()V

    .line 34
    iput-boolean v1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->shouldGC:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->shouldGC:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->lastV8Idle:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->lastV8Idle:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeIdle()Z

    move-result v0

    return v0
.end method

.method public static addExternalCommonJsModule(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, jsSourceProvider:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;

    .line 209
    .local v1, providerInstance:Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;
    sget-object v2, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalCommonJsModules:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1           #providerInstance:Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KrollV8Runtime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load external CommonJS module "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadExternalCommonJsModules()V
    .locals 3

    .prologue
    .line 135
    sget-object v2, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalCommonJsModules:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, moduleName:Ljava/lang/String;
    sget-object v2, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalCommonJsModules:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;

    invoke-direct {p0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeAddExternalCommonJsModule(Ljava/lang/String;Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;)V

    goto :goto_0

    .line 138
    .end local v1           #moduleName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadExternalModules()V
    .locals 8

    .prologue
    .line 110
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, libName:Ljava/lang/String;
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bootstrapping module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadedLibs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 121
    .local v4, moduleClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/kroll/KrollExternalModule;

    .line 122
    .local v3, module:Lorg/appcelerator/kroll/KrollExternalModule;
    invoke-interface {v3}, Lorg/appcelerator/kroll/KrollExternalModule;->bootstrap()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 124
    .end local v3           #module:Lorg/appcelerator/kroll/KrollExternalModule;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error bootstrapping external module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/InstantiationException;
    const-string v5, "KrollV8Runtime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error bootstrapping external module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/InstantiationException;
    .end local v2           #libName:Ljava/lang/String;
    .end local v4           #moduleClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    :cond_1
    return-void
.end method

.method private native nativeAddExternalCommonJsModule(Ljava/lang/String;Lorg/appcelerator/kroll/common/KrollSourceCodeProvider;)V
.end method

.method private native nativeDispose()V
.end method

.method private native nativeEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native nativeIdle()Z
.end method

.method private native nativeInit(ZIZ)V
.end method

.method private native nativeProcessDebugMessages()V
.end method

.method private native nativeRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
.end method


# virtual methods
.method public addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "libName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollExternalModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, moduleClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollExternalModule;>;"
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->externalModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method protected dispatchDebugMessages()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->handler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method public doDispose()V
    .locals 6

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/kroll/KrollApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v1

    .line 144
    .local v1, deployData:Lorg/appcelerator/kroll/common/TiDeployData;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiDeployData;->isProfilerEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    :try_start_0
    const-string v4, "org.appcelerator.titanium.profiler.TiProfiler"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "stopProfiler"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 148
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeDispose()V

    .line 154
    return-void

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "KrollV8Runtime"

    const-string v5, "Unable to stop profiler."

    invoke-static {v4, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "source"
    .parameter "filename"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 0
    .parameter "source"
    .parameter "filename"
    .parameter "activityProxy"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeRunModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 160
    return-void
.end method

.method public getRuntimeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "v8"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollRuntime;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 179
    :pswitch_0
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeProcessDebugMessages()V

    .line 180
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->dispatchDebugMessages()V

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
    .end packed-switch
.end method

.method public initObject(Lorg/appcelerator/kroll/KrollProxySupport;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeInitObject(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public initRuntime()V
    .locals 10

    .prologue
    .line 47
    const/4 v6, 0x1

    .line 48
    .local v6, useGlobalRefs:Z
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v7

    invoke-interface {v7}, Lorg/appcelerator/kroll/KrollApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v2

    .line 50
    .local v2, deployData:Lorg/appcelerator/kroll/common/TiDeployData;
    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v8, "sdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v8, "google_sdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v8, "generic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    :cond_0
    const-string v7, "KrollV8Runtime"

    const-string v8, "Emulator detected, storing global references in a global Map"

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v6, 0x0

    .line 55
    :cond_1
    iget-boolean v7, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    if-nez v7, :cond_2

    .line 56
    const-string v7, "stlport_shared"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    const-string v7, "kroll-v8"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->libLoaded:Z

    .line 61
    :cond_2
    const/4 v0, 0x1

    .line 62
    .local v0, DBG:Z
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v7

    invoke-interface {v7}, Lorg/appcelerator/kroll/KrollApplication;->getDeployType()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, deployType:Ljava/lang/String;
    const-string v7, "production"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 67
    :cond_3
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiDeployData;->getDebuggerPort()I

    move-result v7

    invoke-direct {p0, v6, v7, v0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->nativeInit(ZIZ)V

    .line 69
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiDeployData;->isDebuggerEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 70
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->dispatchDebugMessages()V

    .line 81
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadExternalModules()V

    .line 82
    invoke-direct {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->loadExternalCommonJsModules()V

    .line 84
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;

    invoke-direct {v8, p0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;-><init>(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 106
    return-void

    .line 71
    :cond_5
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiDeployData;->isProfilerEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    :try_start_0
    const-string v7, "org.appcelerator.titanium.profiler.TiProfiler"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 74
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "startProfiler"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 75
    .local v5, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 77
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "KrollV8Runtime"

    const-string v8, "Unable to load profiler."

    invoke-static {v7, v8, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setGCFlag()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->shouldGC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    return-void
.end method
