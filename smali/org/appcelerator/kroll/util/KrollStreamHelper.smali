.class public Lorg/appcelerator/kroll/util/KrollStreamHelper;
.super Ljava/lang/Object;
.source "KrollStreamHelper.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "KrollStreamHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "in"
    .parameter "out"

    .prologue
    .line 27
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 28
    return-void
.end method

.method public static pump(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .parameter "in"
    .parameter "out"
    .parameter "bufferSize"

    .prologue
    .line 32
    new-array v0, p2, [B

    .line 33
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 35
    .local v1, count:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, e:Ljava/io/IOException;
    const-string v3, "KrollStreamHelper"

    const-string v4, "IOException pumping streams"

    invoke-static {v3, v4, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public static pumpCount(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "in"
    .parameter "out"
    .parameter "byteCount"

    .prologue
    .line 47
    const/16 v0, 0x400

    invoke-static {p0, p1, p2, v0}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->pumpCount(Ljava/io/InputStream;Ljava/io/OutputStream;II)V

    .line 48
    return-void
.end method

.method public static pumpCount(Ljava/io/InputStream;Ljava/io/OutputStream;II)V
    .locals 7
    .parameter "in"
    .parameter "out"
    .parameter "byteCount"
    .parameter "bufferSize"

    .prologue
    .line 52
    new-array v0, p3, [B

    .line 53
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 55
    .local v4, totalCount:I
    :cond_0
    :goto_0
    if-ge v4, p2, :cond_1

    .line 56
    sub-int v5, p2, v4

    :try_start_0
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 57
    .local v3, leftOver:I
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 58
    .local v1, count:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 70
    .end local v1           #count:I
    .end local v3           #leftOver:I
    :cond_1
    :goto_1
    return-void

    .line 62
    .restart local v1       #count:I
    .restart local v3       #leftOver:I
    :cond_2
    add-int/2addr v4, v1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v1           #count:I
    .end local v3           #leftOver:I
    :catch_0
    move-exception v2

    .line 68
    .local v2, e:Ljava/io/IOException;
    const-string v5, "KrollStreamHelper"

    const-string v6, "IOException pumping streams"

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .parameter "in"

    .prologue
    .line 74
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 2
    .parameter "in"
    .parameter "size"

    .prologue
    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 80
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
