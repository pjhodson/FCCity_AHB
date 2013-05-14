.class public Lti/modules/titanium/stream/BlobStreamProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "BlobStreamProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/io/TiStream;


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private isOpen:Z

.field private tiBlob:Lorg/appcelerator/titanium/TiBlob;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 1
    .parameter "tiBlob"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->isOpen:Z

    .line 29
    iput-object p1, p0, Lti/modules/titanium/stream/BlobStreamProxy;->tiBlob:Lorg/appcelerator/titanium/TiBlob;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->isOpen:Z

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->tiBlob:Lorg/appcelerator/titanium/TiBlob;

    .line 123
    iget-object v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/stream/BlobStreamProxy;->isOpen:Z

    .line 125
    return-void
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public read([Ljava/lang/Object;)I
    .locals 9
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 37
    iget-boolean v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->isOpen:Z

    if-nez v4, :cond_0

    .line 38
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from blob, not open"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, bufferProxy:Lti/modules/titanium/BufferProxy;
    const/4 v3, 0x0

    .line 43
    .local v3, offset:I
    const/4 v2, 0x0

    .line 45
    .local v2, length:I
    array-length v4, p1

    if-eq v4, v5, :cond_1

    array-length v4, p1

    if-ne v4, v8, :cond_a

    .line 46
    :cond_1
    array-length v4, p1

    if-lez v4, :cond_2

    .line 47
    aget-object v4, p1, v7

    instance-of v4, v4, Lti/modules/titanium/BufferProxy;

    if-eqz v4, :cond_5

    .line 48
    aget-object v0, p1, v7

    .end local v0           #bufferProxy:Lti/modules/titanium/BufferProxy;
    check-cast v0, Lti/modules/titanium/BufferProxy;

    .line 49
    .restart local v0       #bufferProxy:Lti/modules/titanium/BufferProxy;
    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v2

    .line 56
    :cond_2
    array-length v4, p1

    if-ne v4, v8, :cond_3

    .line 57
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 58
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 67
    :goto_0
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 68
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 82
    :cond_3
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_4

    .line 83
    iget-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->tiBlob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    .line 87
    :cond_4
    iget-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_b

    .line 89
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/stream/BlobStreamProxy;->inputStream:Ljava/io/InputStream;

    invoke-static {v4, v0, v3, v2}, Lorg/appcelerator/titanium/util/TiStreamHelper;->read(Ljava/io/InputStream;Lti/modules/titanium/BufferProxy;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 52
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid buffer argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_6
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_7

    .line 61
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_0

    .line 64
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid offset argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_8
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_9

    .line 71
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_1

    .line 74
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid length argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid number of arguments"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from blob, IO error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    .end local v1           #e:Ljava/io/IOException;
    :cond_b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from blob, input stream is null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public write([Ljava/lang/Object;)I
    .locals 2
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to write, blob is read only"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
