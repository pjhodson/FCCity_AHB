.class public Lorg/appcelerator/kroll/util/TiTempFileHelper;
.super Ljava/lang/Object;
.source "TiTempFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLEAN_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TiTempFileHelper"

.field public static final TEMPDIR:Ljava/lang/String; = "_tmp"


# instance fields
.field private appPackageName:Ljava/lang/String;

.field protected createdThisSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private internalCacheDir:Ljava/io/File;

.field private previousExternalStorageState:Ljava/lang/String;

.field protected tempDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->appPackageName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->internalCacheDir:Ljava/io/File;

    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->updateTempDir()V

    .line 48
    return-void
.end method

.method private updateTempDir()V
    .locals 7

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, extState:Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->previousExternalStorageState:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 171
    .local v2, extStorage:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "Android"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "data"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v0, dataDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->appPackageName:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "cache"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v3, externalCacheDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "_tmp"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    .line 180
    .end local v0           #dataDir:Ljava/io/File;
    .end local v2           #extStorage:Ljava/io/File;
    .end local v3           #externalCacheDir:Ljava/io/File;
    :goto_0
    iget-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    iget-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 185
    :cond_0
    iput-object v1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->previousExternalStorageState:Ljava/lang/String;

    .line 186
    return-void

    .line 176
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->internalCacheDir:Ljava/io/File;

    const-string v6, "_tmp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->updateTempDir()V

    .line 60
    iget-object v1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-static {p1, p2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 61
    .local v0, tempFile:Ljava/io/File;
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->excludeFileOnCleanup(Ljava/io/File;)V

    .line 62
    return-object v0
.end method

.method protected doCleanTempDir()V
    .locals 9

    .prologue
    .line 135
    iget-object v6, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 136
    const-string v6, "TiTempFileHelper"

    const-string v7, "The temp directory doesn\'t exist, skipping cleanup"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v6, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 140
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, absolutePath:Ljava/lang/String;
    iget-object v7, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    monitor-enter v7

    .line 142
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 143
    monitor-exit v7

    .line 139
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    const-string v6, "TiTempFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting temporary file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "TiTempFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception trying to delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v2, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public excludeFileOnCleanup(Ljava/io/File;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createdThisSession:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v1

    .line 131
    :cond_0
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTempDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->updateTempDir()V

    .line 159
    iget-object v0, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    return-object v0
.end method

.method public scheduleCleanTempDir()V
    .locals 3

    .prologue
    .line 75
    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->scheduleCleanTempDir(JLjava/util/concurrent/TimeUnit;)V

    .line 76
    return-void
.end method

.method public scheduleCleanTempDir(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .parameter "delay"
    .parameter "timeUnit"

    .prologue
    .line 85
    iget-object v1, p0, Lorg/appcelerator/kroll/util/TiTempFileHelper;->tempDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "TiTempFileHelper"

    const-string v2, "The external temp directory doesn\'t exist, skipping cleanup"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 92
    .local v0, service:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;

    invoke-direct {v1, p0, v0}, Lorg/appcelerator/kroll/util/TiTempFileHelper$AsyncCleanup;-><init>(Lorg/appcelerator/kroll/util/TiTempFileHelper;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
