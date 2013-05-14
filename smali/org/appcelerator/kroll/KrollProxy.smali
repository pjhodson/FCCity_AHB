.class public Lorg/appcelerator/kroll/KrollProxy;
.super Ljava/lang/Object;
.source "KrollProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/kroll/KrollProxySupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;
    }
.end annotation


# static fields
.field private static final ERROR_CREATING_PROXY:Ljava/lang/String; = "Error creating proxy"

.field private static final INDEX_NAME:I = 0x0

.field private static final INDEX_OLD_VALUE:I = 0x1

.field private static final INDEX_VALUE:I = 0x2

.field protected static final MSG_CALL_PROPERTY:I = 0xd2

.field protected static final MSG_FIRE_EVENT:I = 0xd0

.field protected static final MSG_FIRE_SYNC_EVENT:I = 0xd1

.field protected static final MSG_INIT_KROLL_OBJECT:I = 0xce

.field protected static final MSG_LAST_ID:I = 0xd2

.field protected static final MSG_LISTENER_ADDED:I = 0xca

.field protected static final MSG_LISTENER_REMOVED:I = 0xcb

.field protected static final MSG_MODEL_PROCESS_PROPERTIES:I = 0xcc

.field protected static final MSG_MODEL_PROPERTIES_CHANGED:I = 0xcd

.field protected static final MSG_MODEL_PROPERTY_CHANGE:I = 0xc9

.field protected static final MSG_SET_PROPERTY:I = 0xcf

.field protected static final PROPERTY_HAS_JAVA_LISTENER:Ljava/lang/String; = "_hasJavaListener"

.field protected static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field public static final PROXY_ID_PREFIX:Ljava/lang/String; = "proxy$"

.field private static final TAG:Ljava/lang/String; = "KrollProxy"

.field protected static proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleParent:Z

.field protected coverageEnabled:Z

.field protected createdInModule:Lorg/appcelerator/kroll/KrollModule;

.field protected creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

.field protected defaultValues:Lorg/appcelerator/kroll/KrollDict;

.field protected eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/kroll/KrollEventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected krollObject:Lorg/appcelerator/kroll/KrollObject;

.field private langConversionTable:Lorg/appcelerator/kroll/KrollDict;

.field protected listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mainHandler:Landroid/os/Handler;

.field protected modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

.field protected properties:Lorg/appcelerator/kroll/KrollDict;

.field protected proxyId:Ljava/lang/String;

.field protected runtimeHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollProxy;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "baseCreationUrl"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    .line 80
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    .line 81
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->mainHandler:Landroid/os/Handler;

    .line 82
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->runtimeHandler:Landroid/os/Handler;

    .line 84
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollProxy;->bubbleParent:Z

    .line 111
    new-instance v0, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    .line 114
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 93
    return-void
.end method

.method public static createDeprecatedProxy(Ljava/lang/Class;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 8
    .parameter
    .parameter "object"
    .parameter "creationArguments"
    .parameter "creationUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;",
            "Lorg/appcelerator/kroll/KrollObject;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollProxy;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/appcelerator/titanium/TiContext;

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 159
    .local v1, oldConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/appcelerator/kroll/KrollProxy;>;"
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUrl;->createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v4

    .line 160
    .local v4, url:Lorg/appcelerator/titanium/util/TiUrl;
    new-instance v3, Lorg/appcelerator/titanium/TiContext;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v4, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 161
    .local v3, tiContext:Lorg/appcelerator/titanium/TiContext;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollProxy;

    .line 163
    .local v2, proxyInstance:Lorg/appcelerator/kroll/KrollProxy;
    invoke-direct {v2, p1, p2, v4}, Lorg/appcelerator/kroll/KrollProxy;->setupProxy(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Lorg/appcelerator/titanium/util/TiUrl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1           #oldConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lorg/appcelerator/kroll/KrollProxy;>;"
    .end local v2           #proxyInstance:Lorg/appcelerator/kroll/KrollProxy;
    .end local v3           #tiContext:Lorg/appcelerator/titanium/TiContext;
    .end local v4           #url:Lorg/appcelerator/titanium/util/TiUrl;
    :goto_0
    return-object v2

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "KrollProxy"

    const-string v6, "Error creating proxy"

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createProxy(Ljava/lang/Class;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 4
    .parameter
    .parameter "object"
    .parameter "creationArguments"
    .parameter "creationUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;",
            "Lorg/appcelerator/kroll/KrollObject;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollProxy;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollProxy;

    .line 139
    .local v1, proxyInstance:Lorg/appcelerator/kroll/KrollProxy;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUrl;->createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/appcelerator/kroll/KrollProxy;->setupProxy(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Lorg/appcelerator/titanium/util/TiUrl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1           #proxyInstance:Lorg/appcelerator/kroll/KrollProxy;
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KrollProxy"

    const-string v3, "Error creating proxy"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private firePropertiesChanged([[Ljava/lang/Object;)V
    .locals 7
    .parameter "changes"

    .prologue
    .line 495
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-nez v4, :cond_1

    .line 515
    :cond_0
    return-void

    .line 499
    :cond_1
    array-length v1, p1

    .line 500
    .local v1, changesLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 501
    aget-object v0, p1, v2

    .line 502
    .local v0, change:[Ljava/lang/Object;
    array-length v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 500
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    :cond_3
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 507
    .local v3, name:Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 511
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v4, :cond_2

    .line 512
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    check-cast v3, Ljava/lang/String;

    .end local v3           #name:Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-interface {v4, v3, v5, v6, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1
.end method

.method private getLocalizedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "lookupId"

    .prologue
    const/4 v2, 0x0

    .line 358
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 359
    .local v1, resid:I
    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 365
    .end local v1           #resid:I
    :cond_0
    :goto_0
    return-object v2

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    goto :goto_0
.end method

.method private handleLocaleProperties()V
    .locals 9

    .prologue
    .line 267
    iget-object v6, p0, Lorg/appcelerator/kroll/KrollProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    if-nez v6, :cond_1

    .line 302
    :cond_0
    return-void

    .line 280
    :cond_1
    iget-object v6, p0, Lorg/appcelerator/kroll/KrollProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v6}, Lorg/appcelerator/kroll/KrollDict;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, localeProperty:Ljava/lang/String;
    iget-object v6, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v6, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, lookupId:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 290
    invoke-direct {p0, v4}, Lorg/appcelerator/kroll/KrollProxy;->getLocalizedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, localizedValue:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 294
    const-string v6, "KrollProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No localized string found for identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 300
    .local v5, targetProperty:Ljava/lang/String;
    invoke-virtual {p0, v5, v3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setupProxy(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Lorg/appcelerator/titanium/util/TiUrl;)V
    .locals 1
    .parameter "object"
    .parameter "creationArguments"
    .parameter "creationUrl"

    .prologue
    .line 121
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    .line 122
    invoke-virtual {p1, p0}, Lorg/appcelerator/kroll/KrollObject;->setProxySupport(Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 123
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 128
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 132
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/appcelerator/kroll/KrollEventCallback;)I
    .locals 6
    .parameter "eventName"
    .parameter "callback"

    .prologue
    .line 1132
    const/4 v0, -0x1

    .line 1134
    .local v0, listenerId:I
    if-nez p1, :cond_0

    .line 1135
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "addEventListener expects a non-null eventName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1137
    :cond_0
    if-nez p2, :cond_1

    .line 1138
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "addEventListener expects a non-null listener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1141
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    monitor-enter v3

    .line 1142
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1143
    const-string v2, "_hasJavaListener"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1146
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1147
    .local v1, listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    if-nez v1, :cond_3

    .line 1148
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1149
    .restart local v1       #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_3
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1153
    const-string v2, "KrollProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added for eventName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v2, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_4
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    monitor-exit v3

    .line 1159
    return v0

    .line 1157
    .end local v1           #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public applyProperties(Ljava/lang/Object;)V
    .locals 10
    .parameter "arg"

    .prologue
    .line 616
    instance-of v7, p1, Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 617
    const-string v7, "KrollProxy"

    const-string v8, "Cannot apply properties: invalid type for properties"

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, p1

    .line 620
    check-cast v5, Ljava/util/HashMap;

    .line 621
    .local v5, props:Ljava/util/HashMap;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-nez v7, :cond_2

    .line 622
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 623
    .local v4, name:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 627
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #name:Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 628
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 629
    .local v3, key:Ljava/lang/Object;
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 631
    .local v6, value:Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 632
    .local v1, current:Ljava/lang/Object;
    invoke-virtual {p0, v4, v6}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    invoke-virtual {p0, v1, v6}, Lorg/appcelerator/kroll/KrollProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 634
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v7, v4, v1, v6, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_2

    .line 640
    .end local v1           #current:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/Object;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_4
    new-instance v0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-direct {v0, p0, v7}, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;-><init>(Lorg/appcelerator/kroll/KrollProxy;I)V

    .line 641
    .local v0, changes:Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 642
    .restart local v3       #key:Ljava/lang/Object;
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 643
    .restart local v4       #name:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 644
    .restart local v6       #value:Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 645
    .restart local v1       #current:Ljava/lang/Object;
    invoke-virtual {p0, v4, v6}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 646
    invoke-virtual {p0, v1, v6}, Lorg/appcelerator/kroll/KrollProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 647
    invoke-virtual {v0, v4, v1, v6}, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->addChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 650
    .end local v1           #current:Ljava/lang/Object;
    .end local v3           #key:Ljava/lang/Object;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_6
    iget v7, v0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->entryCount:I

    if-lez v7, :cond_0

    .line 651
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0xc9

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public callPropertyAsync(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "args"

    .prologue
    .line 664
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 665
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 667
    return-void
.end method

.method protected createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .parameter "code"
    .parameter "message"

    .prologue
    .line 1217
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1218
    .local v0, error:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 1219
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    return-object v0
.end method

.method public doFireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 17
    .parameter "event"
    .parameter "data"

    .prologue
    .line 744
    const/4 v6, 0x0

    .line 745
    .local v6, bubbles:Z
    const/4 v7, 0x0

    .line 746
    .local v7, reportSuccess:Z
    const/4 v8, 0x0

    .line 747
    .local v8, code:I
    const/4 v3, 0x0

    .line 748
    .local v3, source:Lorg/appcelerator/kroll/KrollObject;
    const/4 v9, 0x0

    .line 750
    .local v9, message:Ljava/lang/String;
    const/4 v5, 0x0

    .line 753
    .local v5, krollData:Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v11, p2

    .line 754
    check-cast v11, Ljava/util/HashMap;

    .line 755
    .local v11, dict:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v11, :cond_9

    .line 756
    new-instance v11, Lorg/appcelerator/kroll/KrollDict;

    .end local v11           #dict:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v11}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 757
    .restart local v11       #dict:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "source"

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lorg/appcelerator/kroll/KrollProxy;->onEventFired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 769
    .end local v11           #dict:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 770
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_a

    move-object/from16 v5, p2

    .line 771
    check-cast v5, Lorg/appcelerator/kroll/KrollDict;

    .line 785
    .end local p2
    :cond_2
    :goto_1
    if-eqz v5, :cond_8

    .line 786
    const-string v2, "bubbles"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 787
    .local v12, hashValue:Ljava/lang/Object;
    if-eqz v12, :cond_3

    .line 788
    invoke-static {v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    .line 789
    const-string v2, "bubbles"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_3
    const-string v2, "success"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 792
    instance-of v2, v12, Ljava/lang/Boolean;

    if-eqz v2, :cond_10

    .line 793
    check-cast v12, Ljava/lang/Boolean;

    .end local v12           #hashValue:Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 794
    .local v15, successValue:Z
    const-string v2, "code"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 795
    .restart local v12       #hashValue:Ljava/lang/Object;
    instance-of v2, v12, Ljava/lang/Integer;

    if-eqz v2, :cond_e

    move-object v2, v12

    .line 796
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 797
    .local v10, codeValue:I
    if-nez v10, :cond_c

    const/4 v2, 0x1

    :goto_2
    if-ne v15, v2, :cond_d

    .line 798
    const/4 v7, 0x1

    .line 799
    move v8, v10

    .line 800
    const-string v2, "success"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v2, "code"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    .end local v10           #codeValue:I
    .end local v15           #successValue:Z
    :cond_4
    :goto_3
    const-string v2, "error"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 814
    instance-of v2, v12, Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object v9, v12

    .line 815
    check-cast v9, Ljava/lang/String;

    .line 816
    const-string v2, "error"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :cond_5
    :goto_4
    const-string v2, "source"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 821
    instance-of v2, v12, Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v2, :cond_7

    .line 822
    move-object/from16 v0, p0

    if-eq v12, v0, :cond_6

    .line 823
    check-cast v12, Lorg/appcelerator/kroll/KrollProxy;

    .end local v12           #hashValue:Ljava/lang/Object;
    invoke-virtual {v12}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    .line 825
    :cond_6
    const-string v2, "source"

    invoke-virtual {v5, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_7
    invoke-virtual {v5}, Lorg/appcelerator/kroll/KrollDict;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 828
    const/4 v5, 0x0

    .line 832
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lorg/appcelerator/kroll/KrollObject;->fireEvent(Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;Ljava/lang/Object;ZZILjava/lang/String;)Z

    move-result v2

    return v2

    .line 759
    .restart local v11       #dict:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p2
    :cond_9
    instance-of v2, v11, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 761
    const-string v2, "source"

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 762
    .local v14, sourceProxy:Ljava/lang/Object;
    if-nez v14, :cond_0

    .line 763
    const-string v2, "source"

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 772
    .end local v11           #dict:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #sourceProxy:Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_b

    .line 774
    :try_start_0
    new-instance v13, Lorg/appcelerator/kroll/KrollDict;

    check-cast p2, Ljava/util/HashMap;

    .end local p2
    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v5           #krollData:Lorg/appcelerator/kroll/KrollDict;
    .local v13, krollData:Lorg/appcelerator/kroll/KrollDict;
    move-object v5, v13

    .line 776
    .end local v13           #krollData:Lorg/appcelerator/kroll/KrollDict;
    .restart local v5       #krollData:Lorg/appcelerator/kroll/KrollDict;
    goto/16 :goto_1

    .line 777
    .restart local p2
    :cond_b
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 779
    :try_start_1
    new-instance v13, Lorg/appcelerator/kroll/KrollDict;

    check-cast p2, Lorg/json/JSONObject;

    .end local p2
    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5           #krollData:Lorg/appcelerator/kroll/KrollDict;
    .restart local v13       #krollData:Lorg/appcelerator/kroll/KrollDict;
    move-object v5, v13

    .line 781
    .end local v13           #krollData:Lorg/appcelerator/kroll/KrollDict;
    .restart local v5       #krollData:Lorg/appcelerator/kroll/KrollDict;
    goto/16 :goto_1

    .line 797
    .restart local v10       #codeValue:I
    .restart local v12       #hashValue:Ljava/lang/Object;
    .restart local v15       #successValue:Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 803
    :cond_d
    const-string v2, "KrollProxy"

    const-string v4, "DEPRECATION WARNING: Events with \'code\' and \'success\' should have success be true if and only if code is nonzero. For java modules, consider the putCodeAndMessage() method to do this for you. The capability to use other types will be removed in a future version."

    const-string v16, "DEBUG_MODE"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 805
    .end local v10           #codeValue:I
    :cond_e
    if-eqz v15, :cond_f

    .line 806
    const-string v2, "KrollProxy"

    const-string v4, "DEPRECATION WARNING: Events with \'success\' of true should have an integer \'code\' property that is 0. For java modules, consider the putCodeAndMessage() method to do this for you. The capability to use other types will be removed in a future version."

    const-string v16, "DEBUG_MODE"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 808
    :cond_f
    const-string v2, "KrollProxy"

    const-string v4, "DEPRECATION WARNING: Events with \'success\' of false should have an integer \'code\' property that is nonzero. For java modules, consider the putCodeAndMessage() method to do this for you. The capability to use other types will be removed in a future version."

    const-string v16, "DEBUG_MODE"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 810
    .end local v15           #successValue:Z
    :cond_10
    if-eqz v12, :cond_4

    .line 811
    const-string v2, "KrollProxy"

    const-string v4, "DEPRECATION WARNING: The \'success\' event property is reserved to be a boolean. For java modules, consider the putCodeAndMessage() method to do this for you. The capability to use other types will be removed in a future version."

    const-string v16, "DEBUG_MODE"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 817
    :cond_11
    if-eqz v12, :cond_5

    .line 818
    const-string v2, "KrollProxy"

    const-string v4, "DEPRECATION WARNING: The \'error\' event property is reserved to be a string. For java modules, consider the putCodeAndMessage() method to do this for you. The capability to use other types will be removed in a future version."

    const-string v16, "DEBUG_MODE"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 780
    .end local v12           #hashValue:Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 775
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method protected doSetProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 671
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 672
    return-void
.end method

.method protected eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "event"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 1091
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v0, p1, p2, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 1092
    return-void
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "event"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 1105
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v0, p1, p2, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 1106
    return-void
.end method

.method public extend(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .parameter "options"

    .prologue
    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v9, propertyChanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 463
    .local v5, name:Ljava/lang/String;
    iget-object v11, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v11, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 464
    .local v6, oldValue:Ljava/lang/Object;
    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 468
    .local v10, value:Ljava/lang/Object;
    invoke-virtual {p0, v5, v10}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p0, v6, v10}, Lorg/appcelerator/kroll/KrollProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 471
    new-instance v7, Lorg/appcelerator/kroll/KrollPropertyChange;

    invoke-direct {v7, v5, v6, v10}, Lorg/appcelerator/kroll/KrollPropertyChange;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    .local v7, pch:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 477
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #oldValue:Ljava/lang/Object;
    .end local v7           #pch:Lorg/appcelerator/kroll/KrollPropertyChange;
    .end local v10           #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 478
    .local v1, changeSize:I
    new-array v0, v1, [[Ljava/lang/Object;

    .line 479
    .local v0, changeArray:[[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 480
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 481
    .local v8, propertyChange:Lorg/appcelerator/kroll/KrollPropertyChange;
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lorg/appcelerator/kroll/KrollPropertyChange;->name:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v8, Lorg/appcelerator/kroll/KrollPropertyChange;->oldValue:Ljava/lang/Object;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, v8, Lorg/appcelerator/kroll/KrollPropertyChange;->newValue:Ljava/lang/Object;

    aput-object v13, v11, v12

    aput-object v11, v0, v2

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 484
    .end local v8           #propertyChange:Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_4
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v11

    invoke-virtual {v11}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 485
    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->firePropertiesChanged([[Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    :cond_5
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xcd

    invoke-virtual {v11, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 489
    .local v4, message:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter "event"
    .parameter "data"

    .prologue
    .line 695
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd0

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 696
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 699
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public fireEventToParent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "eventName"
    .parameter "data"

    .prologue
    .line 712
    iget-boolean v1, p0, Lorg/appcelerator/kroll/KrollProxy;->bubbleParent:Z

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getParentForBubbling()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    .line 714
    .local v0, parentProxy:Lorg/appcelerator/kroll/KrollProxy;
    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 718
    .end local v0           #parentProxy:Lorg/appcelerator/kroll/KrollProxy;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 837
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v1, :cond_0

    .line 838
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v1, p1, p2, p3, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    invoke-direct {v0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollPropertyChange;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 843
    .local v0, pch:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter "event"
    .parameter "data"

    .prologue
    .line 730
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->doFireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 737
    :goto_0
    return v1

    .line 734
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 735
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {v0, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->activity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 2

    .prologue
    .line 966
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 967
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_0

    .line 968
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 971
    :goto_0
    return-object v1

    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBubbleParent()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollProxy;->bubbleParent:Z

    return v0
.end method

.method public getCreatedInModule()Lorg/appcelerator/kroll/KrollModule;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->createdInModule:Lorg/appcelerator/kroll/KrollModule;

    return-object v0
.end method

.method public getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    return-object v0
.end method

.method public getIndexedProperty(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getKrollObject()Lorg/appcelerator/kroll/KrollObject;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    if-nez v0, :cond_0

    .line 422
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->initKrollObject()V

    .line 430
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    return-object v0

    .line 426
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->mainHandler:Landroid/os/Handler;

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getParentForBubbling()Lorg/appcelerator/kroll/KrollProxy;
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperties()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 547
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProxyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->proxyId:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntimeHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->runtimeHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getRuntimeMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->runtimeHandler:Landroid/os/Handler;

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->runtimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1238
    new-instance v0, Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->proxyId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 3
    .parameter "createdInModule"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 204
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->createdInModule:Lorg/appcelerator/kroll/KrollModule;

    .line 206
    array-length v1, p2

    if-eqz v1, :cond_0

    aget-object v1, p2, v2

    instance-of v1, v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->handleDefaultValues()V

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_1
    aget-object v1, p2, v2

    instance-of v1, v1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v1, :cond_2

    .line 213
    aget-object v0, p2, v2

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 217
    .local v0, dict:Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 215
    .end local v0           #dict:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    aget-object v1, p2, v2

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v0       #dict:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "dict"

    .prologue
    .line 379
    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    .line 384
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->handleDefaultValues()V

    .line 385
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;->handleLocaleProperties()V

    .line 387
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-interface {v0, v1}, Lorg/appcelerator/kroll/KrollProxyListener;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method protected handleDefaultValues()V
    .locals 3

    .prologue
    .line 226
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 1006
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    move v4, v9

    .line 1074
    :cond_0
    :goto_1
    return v4

    .line 1008
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/appcelerator/kroll/KrollPropertyChange;

    iget-object v9, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-virtual {v8, p0, v9}, Lorg/appcelerator/kroll/KrollPropertyChange;->fireEvent(Lorg/appcelerator/kroll/KrollProxy;Lorg/appcelerator/kroll/KrollProxyListener;)V

    goto :goto_1

    .line 1014
    :pswitch_1
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v8, :cond_0

    .line 1018
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1020
    .local v3, event:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xca

    if-ne v8, v10, :cond_1

    .line 1021
    invoke-virtual {p0, v3, v4, p0}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1

    .line 1024
    :cond_1
    invoke-virtual {p0, v3, v9, p0}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1

    .line 1030
    .end local v3           #event:Ljava/lang/String;
    :pswitch_2
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v8, :cond_0

    .line 1031
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    iget-object v9, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-interface {v8, v9}, Lorg/appcelerator/kroll/KrollProxyListener;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_1

    .line 1036
    :pswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [[Ljava/lang/Object;

    check-cast v8, [[Ljava/lang/Object;

    invoke-direct {p0, v8}, Lorg/appcelerator/kroll/KrollProxy;->firePropertiesChanged([[Ljava/lang/Object;)V

    goto :goto_1

    .line 1041
    :pswitch_4
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->initKrollObject()V

    .line 1042
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/appcelerator/kroll/common/AsyncResult;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 1047
    :pswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1048
    .local v7, value:Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1049
    .local v5, property:Ljava/lang/String;
    invoke-virtual {p0, v5, v7}, Lorg/appcelerator/kroll/KrollProxy;->doSetProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1054
    .end local v5           #property:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1055
    .local v2, data:Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1056
    .restart local v3       #event:Ljava/lang/String;
    invoke-virtual {p0, v3, v2}, Lorg/appcelerator/kroll/KrollProxy;->doFireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1061
    .end local v2           #data:Ljava/lang/Object;
    .end local v3           #event:Ljava/lang/String;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 1062
    .local v1, asyncResult:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/appcelerator/kroll/KrollProxy;->doFireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 1063
    .local v4, handled:Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 1068
    .end local v1           #asyncResult:Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v4           #handled:Z
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v10, "name"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1069
    .local v6, propertyName:Ljava/lang/String;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    .line 1070
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v8

    invoke-virtual {v8, v6, v0}, Lorg/appcelerator/kroll/KrollObject;->callProperty(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 862
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollObject;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 535
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hierarchyHasListener(Ljava/lang/String;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    .line 873
    .local v0, hasListener:Z
    if-nez v0, :cond_1

    .line 874
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getParentForBubbling()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v2

    .line 875
    .local v2, parentProxy:Lorg/appcelerator/kroll/KrollProxy;
    if-eqz v2, :cond_1

    .line 876
    invoke-virtual {v2, p1}, Lorg/appcelerator/kroll/KrollProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v1

    .line 877
    .local v1, parentHasListener:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 881
    .end local v1           #parentHasListener:Z
    .end local v2           #parentProxy:Lorg/appcelerator/kroll/KrollProxy;
    :cond_1
    :goto_0
    return v0

    .line 877
    .restart local v1       #parentHasListener:Z
    .restart local v2       #parentProxy:Lorg/appcelerator/kroll/KrollProxy;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 176
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->activity:Ljava/lang/ref/WeakReference;

    .line 177
    return-void
.end method

.method public initKrollObject()V
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/KrollRuntime;->initObject(Lorg/appcelerator/kroll/KrollProxySupport;)V

    .line 436
    return-void
.end method

.method public isLocaleProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyName"

    .prologue
    .line 346
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onEventFired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "event"
    .parameter "data"

    .prologue
    .line 1187
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1188
    .local v3, listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    if-eqz v3, :cond_1

    .line 1189
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1190
    .local v2, listenerId:Ljava/lang/Integer;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollEventCallback;

    .line 1191
    .local v0, callback:Lorg/appcelerator/kroll/KrollEventCallback;
    if-eqz v0, :cond_0

    .line 1192
    invoke-interface {v0, p2}, Lorg/appcelerator/kroll/KrollEventCallback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 1196
    .end local v0           #callback:Lorg/appcelerator/kroll/KrollEventCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listenerId:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public onHasListenersChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "event"
    .parameter "hasListeners"

    .prologue
    .line 850
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_0

    const/16 v1, 0xca

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 851
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 852
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendMessage(Landroid/os/Message;)V

    .line 853
    return-void

    .line 850
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/16 v1, 0xcb

    goto :goto_0
.end method

.method public onPropertiesChanged([[Ljava/lang/Object;)V
    .locals 11
    .parameter "changes"

    .prologue
    const/4 v10, 0x2

    .line 933
    array-length v1, p1

    .line 934
    .local v1, changesLength:I
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v3

    .line 936
    .local v3, isUiThread:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 937
    aget-object v0, p1, v2

    .line 938
    .local v0, change:[Ljava/lang/Object;
    array-length v8, v0

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 936
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
    :cond_1
    const/4 v8, 0x0

    aget-object v5, v0, v8

    .line 943
    .local v5, name:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 947
    check-cast v6, Ljava/lang/String;

    .line 948
    .local v6, nameString:Ljava/lang/String;
    aget-object v7, v0, v10

    .line 950
    .local v7, value:Ljava/lang/Object;
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    aget-object v9, v0, v10

    invoke-virtual {v8, v6, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    if-eqz v3, :cond_0

    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v8, :cond_0

    .line 952
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-interface {v8, v6, v9, v7, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1

    .line 956
    .end local v0           #change:[Ljava/lang/Object;
    .end local v5           #name:Ljava/lang/Object;
    .end local v6           #nameString:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_2
    if-nez v3, :cond_3

    iget-object v8, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-nez v8, :cond_4

    .line 962
    :cond_3
    :goto_2
    return-void

    .line 960
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xcd

    invoke-virtual {v8, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 961
    .local v4, message:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .parameter "name"
    .parameter "value"

    .prologue
    .line 914
    move-object v2, p1

    .line 915
    .local v2, propertyName:Ljava/lang/String;
    move-object v0, p2

    .line 917
    .local v0, newValue:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->isLocaleProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 918
    const-string v4, "KrollProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/appcelerator/kroll/KrollProxy;->updateLocaleProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 920
    .local v3, update:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 921
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v2           #propertyName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 922
    .restart local v2       #propertyName:Ljava/lang/String;
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 926
    .end local v3           #update:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v4, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 927
    .local v1, oldValue:Ljava/lang/Object;
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v4, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    invoke-virtual {p0, v2, v1, v0}, Lorg/appcelerator/kroll/KrollProxy;->firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 929
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollObject;->release()V

    .line 1232
    :cond_0
    return-void
.end method

.method public removeEventListener(Ljava/lang/String;I)V
    .locals 5
    .parameter "eventName"
    .parameter "listenerId"

    .prologue
    .line 1164
    if-nez p1, :cond_0

    .line 1165
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "removeEventListener expects a non-null eventName"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1168
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    monitor-enter v2

    .line 1169
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1170
    .local v0, listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    if-eqz v0, :cond_3

    .line 1171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1172
    const-string v1, "KrollProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listenerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not for eventName \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v1, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1175
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->eventListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1179
    const-string v1, "_hasJavaListener"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1182
    :cond_3
    monitor-exit v2

    .line 1183
    return-void

    .line 1182
    .end local v0           #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventCallback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "scheme"
    .parameter "path"

    .prologue
    .line 1207
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->activity:Ljava/lang/ref/WeakReference;

    .line 182
    return-void
.end method

.method public setBubbleParent(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 683
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollProxy;->bubbleParent:Z

    .line 684
    return-void
.end method

.method public setCreationUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 450
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUrl;->createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 451
    return-void
.end method

.method public setIndexedProperty(ILjava/lang/Object;)V
    .locals 0
    .parameter "index"
    .parameter "value"

    .prologue
    .line 526
    return-void
.end method

.method public setKrollObject(Lorg/appcelerator/kroll/KrollObject;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 412
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    .line 413
    return-void
.end method

.method public setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V
    .locals 2
    .parameter "modelListener"

    .prologue
    .line 1116
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 1121
    if-eqz p1, :cond_0

    .line 1122
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1123
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-interface {p1, v0}, Lorg/appcelerator/kroll/KrollProxyListener;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 1125
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 570
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->doSetProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xcf

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "name"
    .parameter "value"
    .parameter "fireChange"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    if-nez p3, :cond_0

    .line 557
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 905
    .local v0, current:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 907
    invoke-virtual {p0, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    invoke-virtual {p0, p1, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 910
    :cond_0
    return-void
.end method

.method public shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 886
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 887
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 888
    :cond_3
    const/4 v0, 0x1

    .line 892
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLocaleProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .parameter "localeProperty"
    .parameter "newLookupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    if-nez v5, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v4

    .line 319
    :cond_1
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollProxy;->langConversionTable:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5}, Lorg/appcelerator/kroll/KrollDict;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 325
    .local v3, targetProperty:Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollProxy;->getLocalizedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, localizedValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {p0, v3, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_0
.end method
