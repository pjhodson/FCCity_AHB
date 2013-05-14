.class public Lorg/appcelerator/titanium/util/TiResponseCache;
.super Ljava/net/ResponseCache;
.source "TiResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheOutputStream;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;,
        Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BODY_SUFFIX:Ljava/lang/String; = ".bdy"

.field private static final CACHE_SIZE_KEY:Ljava/lang/String; = "ti.android.cache.size.max"

.field private static final CLEANUP_DELAY:I = 0xea60

.field private static final DEFAULT_CACHE_SIZE:I = 0x1900000

.field private static final HEADER_SUFFIX:Ljava/lang/String; = ".hdr"

.field private static final INITIAL_DELAY:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "TiResponseCache"

.field private static cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static completeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxCacheSize:J


# instance fields
.field private cacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lorg/appcelerator/titanium/util/TiResponseCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/titanium/util/TiResponseCache;->$assertionsDisabled:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    .line 50
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Lorg/appcelerator/titanium/TiApplication;)V
    .locals 7
    .parameter "cachedir"
    .parameter "tiApp"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    .line 240
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiResponseCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "cachedir MUST be a directory"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 241
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    .line 243
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v2, "ti.android.cache.size.max"

    const/high16 v3, 0x190

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v2, v0

    sput-wide v2, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    .line 244
    const-string v0, "TiResponseCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max cache size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v0, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 247
    new-instance v1, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    sget-wide v2, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    invoke-direct {v1, v0, v2, v3}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;-><init>(Ljava/io/File;J)V

    .line 248
    .local v1, command:Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;
    sget-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 249
    return-void
.end method

.method static synthetic access$000(Ljava/net/URI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiResponseCache;->fireCacheCompleted(Ljava/net/URI;)V

    return-void
.end method

.method public static addCompleteListener(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;)V
    .locals 4
    .parameter "uri"
    .parameter "listener"

    .prologue
    .line 227
    sget-object v2, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 228
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, hash:Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    sget-object v1, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    monitor-exit v2

    .line 234
    return-void

    .line 233
    .end local v0           #hash:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final fireCacheCompleted(Ljava/net/URI;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 398
    sget-object v4, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 399
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, hash:Ljava/lang/String;
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;

    .line 402
    .local v2, listener:Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    invoke-interface {v2, p0}, Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;->cacheCompleted(Ljava/net/URI;)V

    goto :goto_0

    .line 406
    .end local v0           #hash:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 404
    .restart local v0       #hash:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    return-void
.end method

.method private makeLowerCaseHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, origHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 312
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 313
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 317
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static openCachedStream(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-static {}, Lorg/appcelerator/titanium/util/TiResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/util/TiResponseCache;

    .line 201
    .local v4, rc:Lorg/appcelerator/titanium/util/TiResponseCache;
    if-nez v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v5

    .line 205
    :cond_1
    iget-object v6, v4, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-eqz v6, :cond_0

    .line 209
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, hash:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v6, v4, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".hdr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v2, hFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v6, v4, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bdy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v0, bFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method public static peek(Ljava/net/URI;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-static {}, Lorg/appcelerator/titanium/util/TiResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/util/TiResponseCache;

    .line 188
    .local v3, rc:Lorg/appcelerator/titanium/util/TiResponseCache;
    if-nez v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v4

    .line 189
    :cond_1
    iget-object v5, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-eqz v5, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, hash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v5, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".hdr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .local v1, hFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v5, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bdy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v0, bFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 12
    .parameter "uri"
    .parameter "rqstMethod"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, rqstHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 255
    if-eqz p1, :cond_0

    iget-object v8, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v8, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-object v7

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, hash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".hdr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v1, hFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".bdy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    .local v0, bFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 269
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v8, 0x400

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 271
    .local v6, rdr:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_3

    .line 272
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, keyval:[Ljava/lang/String;
    aget-object v7, v4, v11

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 274
    aget-object v7, v4, v11

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    aget-object v7, v4, v11

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 278
    .end local v4           #keyval:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setLastModified(J)Z

    .line 284
    new-instance v7, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v3, v8}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;-><init>(Ljava/util/Map;Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method protected getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 290
    .local v0, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    const/4 v1, 0x0

    .line 293
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method protected getHeaderInt(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter "header"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 305
    .end local p3
    :goto_0
    return p3

    .line 303
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 21
    .parameter "uri"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 387
    :goto_0
    return-object v1

    .line 326
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 332
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiResponseCache;->makeLowerCaseHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 333
    .local v11, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "cache-control"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, cacheControl:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v1, "^.*(no-cache|no-store|must-revalidate).*"

    invoke-virtual {v7, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    const/4 v1, 0x0

    goto :goto_0

    .line 338
    :cond_2
    const/16 v16, 0x0

    .line 339
    .local v16, skipTransferEncodingHeader:Z
    const-string v1, "transfer-encoding"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 340
    .local v17, tEncoding:Ljava/lang/String;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 341
    const/16 v16, 0x1

    .line 345
    :cond_3
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 346
    .local v14, newl:Ljava/lang/String;
    const-string v1, "content-length"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1, v2}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeaderInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    int-to-long v5, v1

    .line 347
    .local v5, contentLength:J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v15, sb:Ljava/lang/StringBuilder;
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 349
    .local v10, hdr:Ljava/lang/String;
    if-eqz v16, :cond_5

    const-string v1, "transfer-encoding"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 350
    :cond_5
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 351
    .local v18, val:Ljava/lang/String;
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, "="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 358
    .end local v10           #hdr:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v18           #val:Ljava/lang/String;
    :cond_6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v5

    sget-wide v19, Lorg/appcelerator/titanium/util/TiResponseCache;->maxCacheSize:J

    cmp-long v1, v1, v19

    if-lez v1, :cond_7

    .line 359
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 364
    :cond_7
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 368
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 371
    .local v9, hash:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ".hdr"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    .local v4, hFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ".bdy"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    .local v3, bFile:Ljava/io/File;
    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 377
    .local v8, hWriter:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    .line 382
    monitor-enter p0

    .line 384
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_8

    .line 385
    const/4 v1, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 379
    :catchall_1
    move-exception v1

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    throw v1

    .line 387
    :cond_8
    :try_start_3
    new-instance v1, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;-><init>(Ljava/net/URI;Ljava/io/File;Ljava/io/File;J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 365
    .end local v3           #bFile:Ljava/io/File;
    .end local v4           #hFile:Ljava/io/File;
    .end local v8           #hWriter:Ljava/io/FileWriter;
    .end local v9           #hash:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .parameter "dir"

    .prologue
    .line 393
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    .line 394
    return-void
.end method
