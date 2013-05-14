.class public Lorg/appcelerator/titanium/TiFileProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiFileProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiFileProxy"


# instance fields
.field protected path:Ljava/lang/String;

.field protected tbf:Lorg/appcelerator/titanium/io/TiBaseFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "sourceUrl"
    .parameter "parts"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 11
    .parameter "sourceUrl"
    .parameter "parts"
    .parameter "resolve"

    .prologue
    const/4 v10, 0x0

    .line 42
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 43
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUrl;->createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v8

    iput-object v8, p0, Lorg/appcelerator/titanium/TiFileProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 45
    const-string v5, "appdata-private://"

    .line 46
    .local v5, scheme:Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, path:Ljava/lang/String;
    aget-object v8, p2, v10

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 48
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, pb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 53
    .local v6, schemeLength:I
    aget-object v8, p2, v10

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_1

    .line 55
    aget-object v8, p2, v10

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 57
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v8, p2

    if-ge v0, v8, :cond_2

    .line 64
    aget-object v8, p2, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .restart local v0       #i:I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 67
    .local v1, newParts:[Ljava/lang/String;
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string v8, ".."

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 69
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 76
    .end local v0           #i:I
    .end local v1           #newParts:[Ljava/lang/String;
    .end local v3           #pb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #schemeLength:I
    :goto_2
    if-eqz p3, :cond_5

    .line 77
    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/TiFileProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    :cond_5
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v2, v8, v10

    invoke-static {v8, v10}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v8

    iput-object v8, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 80
    return-void

    .line 73
    :cond_6
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/io/TiBaseFile;)V
    .locals 0
    .parameter "tbf"

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 85
    return-void
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, objs:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    const-string v2, ""

    .line 105
    :goto_0
    return-object v2

    .line 94
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 96
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    const-string v2, ""

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public copy(Ljava/lang/String;)Z
    .locals 1
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->copy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 147
    const/4 v0, 0x1

    .line 149
    .local v0, recursive:Z
    if-eqz p1, :cond_0

    .line 150
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->createDirectory(Z)Z

    move-result v1

    return v1
.end method

.method public createTimestamp()D
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->createTimestamp()D

    move-result-wide v0

    return-wide v0
.end method

.method public deleteDirectory(Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, recursive:Z
    if-eqz p1, :cond_0

    .line 161
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->deleteDirectory(Z)Z

    move-result v1

    return v1
.end method

.method public deleteFile()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->deleteFile()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->exists()Z

    move-result v0

    return v0
.end method

.method public extension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->extension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    return-object v0
.end method

.method public getDirectoryListing()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getDirectoryListing()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, dl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExecutable()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isExecutable()Z

    move-result v0

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isHidden()Z

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/appcelerator/titanium/TiFileProxy;
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getParent()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    .line 213
    .local v0, bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v0, :cond_0

    new-instance v1, Lorg/appcelerator/titanium/TiFileProxy;

    invoke-direct {v1, v0}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Lorg/appcelerator/titanium/io/TiBaseFile;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReadonly()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isReadonly()Z

    move-result v0

    return v0
.end method

.method public getSize()D
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->size()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getSymbolicLink()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public getWritable()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isWriteable()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isFile()Z

    move-result v0

    return v0
.end method

.method public modificationTimestamp()D
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->modificationTimestamp()D

    move-result-wide v0

    return-wide v0
.end method

.method public move(Ljava/lang/String;)Z
    .locals 1
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->move(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(I)Lti/modules/titanium/stream/FileStreamProxy;
    .locals 2
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->open(IZ)V

    .line 329
    :cond_0
    new-instance v0, Lti/modules/titanium/stream/FileStreamProxy;

    invoke-direct {v0, p0}, Lti/modules/titanium/stream/FileStreamProxy;-><init>(Lorg/appcelerator/titanium/TiFileProxy;)V

    return-object v0
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 1
    .parameter "destination"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->rename(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resolve()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiFileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public spaceAvailable()D
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->spaceAvailable()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const-string v0, "[object TiFileProxy]"

    return-object v0
.end method

.method public write([Ljava/lang/Object;)Z
    .locals 6
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    if-eqz p1, :cond_4

    :try_start_0
    array-length v2, p1

    if-lez v2, :cond_4

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, append:Z
    array-length v2, p1

    if-le v2, v4, :cond_0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 280
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 283
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v2, :cond_1

    .line 284
    iget-object v5, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v5, v2, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    :goto_0
    move v2, v4

    .line 300
    .end local v0           #append:Z
    :goto_1
    return v2

    .line 285
    .restart local v0       #append:Z
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 286
    iget-object v5, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->write(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v0           #append:Z
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/io/IOException;
    const-string v2, "TiFileProxy"

    const-string v4, "IOException encountered"

    invoke-static {v2, v4, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 300
    goto :goto_1

    .line 287
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #append:Z
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, p1, v2

    instance-of v2, v2, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v2, :cond_3

    .line 288
    iget-object v5, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Lorg/appcelerator/titanium/TiFileProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiFileProxy;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    goto :goto_0

    .line 290
    :cond_3
    const-string v2, "TiFileProxy"

    const-string v4, "Unable to write to an unrecognized file type"

    invoke-static {v2, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 291
    goto :goto_1

    .end local v0           #append:Z
    :cond_4
    move v2, v3

    .line 297
    goto :goto_1
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lorg/appcelerator/titanium/TiFileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->writeLine(Ljava/lang/String;)V

    .line 309
    return-void
.end method
