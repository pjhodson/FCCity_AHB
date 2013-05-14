.class public Lorg/appcelerator/titanium/io/TiResourceFile;
.super Lorg/appcelerator/titanium/io/TiBaseFile;
.source "TiResourceFile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiResourceFile"


# instance fields
.field private final path:Ljava/lang/String;

.field private typeFetched:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 38
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;-><init>(I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFetched:Z

    .line 39
    iput-object p1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private fetchType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 275
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeDir:Z

    .line 276
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFile:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    if-eqz v1, :cond_0

    .line 284
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 290
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFetched:Z

    .line 291
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeDir:Z

    .line 280
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFile:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    if-eqz v1, :cond_0

    .line 284
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 285
    :catch_1
    move-exception v2

    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 284
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 287
    :cond_1
    :goto_1
    throw v2

    .line 285
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public exists()Z
    .locals 5

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, result:Z
    const/4 v1, 0x0

    .line 155
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->getInstance()Lorg/appcelerator/kroll/common/TiFastDev;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/common/TiFastDev;->fileExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 169
    :goto_0
    if-eqz v1, :cond_0

    .line 171
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 178
    :cond_0
    :goto_1
    return v2

    .line 158
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 159
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 161
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getDirectoryListing()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 166
    const/4 v2, 0x1

    .line 169
    :cond_3
    if-eqz v1, :cond_0

    .line 171
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 172
    :catch_1
    move-exception v3

    goto :goto_1

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 171
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 174
    :cond_4
    :goto_3
    throw v3

    .line 172
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method public extension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, idx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDirectoryListing()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v3, listing:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Resources"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, lpath:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    const/4 v6, 0x0

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 252
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, names:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 254
    array-length v2, v5

    .line 255
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 256
    aget-object v6, v5, v1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v4           #lpath:Ljava/lang/String;
    .end local v5           #names:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/io/IOException;
    const-string v6, "TiResourceFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while getting a directory listing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    return-object v3
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, in:Ljava/io/InputStream;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 76
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 77
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Resources"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, p:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->getInstance()Lorg/appcelerator/kroll/common/TiFastDev;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/common/TiFastDev;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 84
    .end local v2           #p:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 81
    .restart local v2       #p:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public getNativeFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFetched:Z

    if-eqz v0, :cond_0

    .line 46
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeDir:Z

    .line 50
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->fetchType()V

    .line 50
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeDir:Z

    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFetched:Z

    if-eqz v0, :cond_0

    .line 57
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFile:Z

    .line 61
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->fetchType()V

    .line 61
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFile:Z

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, idx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public nativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(IZ)V
    .locals 4
    .parameter "mode"
    .parameter "binary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_2

    .line 106
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 107
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 108
    if-eqz p2, :cond_0

    .line 109
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->instream:Ljava/io/InputStream;

    .line 113
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->opened:Z

    .line 120
    return-void

    .line 111
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->inreader:Ljava/io/BufferedReader;

    goto :goto_0

    .line 115
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v0           #in:Ljava/io/InputStream;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Resource file may not be written."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, result:Ljava/lang/String;
    iget-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->opened:Z

    if-nez v2, :cond_0

    .line 134
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Must open before calling readLine"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    iget-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->binary:Z

    if-eqz v2, :cond_1

    .line 137
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File opened in binary mode, readLine not available."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->inreader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TiResourceFile"

    const-string v3, "Error reading a line from the file: "

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resolve()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method

.method public size()J
    .locals 8

    .prologue
    .line 220
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->getInstance()Lorg/appcelerator/kroll/common/TiFastDev;

    move-result-object v4

    iget-object v5, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/common/TiFastDev;->getLength(Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 239
    :cond_0
    :goto_0
    return-wide v2

    .line 223
    :cond_1
    const-wide/16 v2, 0x0

    .line 224
    .local v2, length:J
    const/4 v1, 0x0

    .line 226
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    int-to-long v2, v4

    .line 231
    if-eqz v1, :cond_0

    .line 233
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    const-string v4, "TiResourceFile"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v0, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 229
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "TiResourceFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while trying to determine file size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    if-eqz v1, :cond_0

    .line 233
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 234
    :catch_2
    move-exception v0

    .line 235
    const-string v4, "TiResourceFile"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v0, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 233
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 236
    :cond_2
    :goto_1
    throw v4

    .line 234
    :catch_3
    move-exception v0

    .line 235
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "TiResourceFile"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v0, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public spaceAvailable()D
    .locals 2

    .prologue
    .line 211
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 2
    .parameter "data"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
