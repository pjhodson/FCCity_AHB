.class public Lorg/appcelerator/titanium/TiBlob;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiBlob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiBlob"

.field public static final TYPE_DATA:I = 0x2

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field private data:Ljava/lang/Object;

.field private height:I

.field private image:Landroid/graphics/Bitmap;

.field private mimetype:Ljava/lang/String;

.field private type:I

.field private width:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "data"
    .parameter "mimetype"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 80
    iput p1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    .line 81
    iput-object p2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .line 82
    iput-object p3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    .line 84
    iput v1, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 85
    iput v1, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 86
    return-void
.end method

.method public static blobFromData([B)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .parameter "data"

    .prologue
    .line 165
    const-string v0, "application/octet-stream"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .parameter "data"
    .parameter "mimetype"

    .prologue
    const/4 v2, 0x2

    .line 178
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const-string v1, "application/octet-stream"

    invoke-direct {v0, v2, p0, v1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-object v0

    .line 181
    :cond_1
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    invoke-direct {v0, v2, p0, p1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 182
    .local v0, blob:Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->loadBitmapInfo()V

    goto :goto_0
.end method

.method public static blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .parameter "file"

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .parameter "file"
    .parameter "mimeType"

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 124
    .local v0, blob:Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->loadBitmapInfo()V

    .line 125
    return-object v0
.end method

.method public static blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 6
    .parameter "image"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-array v2, v4, [B

    .line 139
    .local v2, data:[B
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 150
    :cond_0
    :goto_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const-string v3, "image/bitmap"

    invoke-direct {v0, v4, v2, v3}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 151
    .local v0, blob:Lorg/appcelerator/titanium/TiBlob;
    iput-object p0, v0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 154
    return-object v0

    .line 145
    .end local v0           #blob:Lorg/appcelerator/titanium/TiBlob;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static blobFromString(Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .parameter "data"

    .prologue
    .line 96
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x3

    const-string v2, "text/plain"

    invoke-direct {v0, v1, p0, v2}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public append(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 9
    .parameter "blob"

    .prologue
    const/4 v7, 0x0

    .line 326
    iget v5, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v5, :pswitch_data_0

    .line 349
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Blob type id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 329
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 330
    .local v2, dataString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v2           #dataString:Ljava/lang/String;
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v3

    .line 332
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "TiBlob"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 337
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 338
    .local v1, dataBytes:[B
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v0

    .line 339
    .local v0, appendBytes:[B
    array-length v5, v1

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v4, v5, [B

    .line 340
    .local v4, newData:[B
    array-length v5, v1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    array-length v5, v1

    array-length v6, v0

    invoke-static {v0, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iput-object v4, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    goto :goto_0

    .line 346
    .end local v0           #appendBytes:[B
    .end local v1           #dataBytes:[B
    .end local v4           #newData:[B
    :pswitch_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Not yet implemented. TYPE_FILE"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytes()[B
    .locals 6

    .prologue
    .line 247
    const/4 v3, 0x0

    new-array v0, v3, [B

    .line 249
    .local v0, bytes:[B
    iget v3, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v3, :pswitch_data_0

    .line 277
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Blob type id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "TiBlob"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 260
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 261
    goto :goto_0

    .line 263
    :pswitch_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 264
    .local v2, stream:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 266
    :try_start_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getLength()I

    move-result v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toByteArray(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 269
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 270
    :catch_1
    move-exception v1

    .line 271
    .local v1, e:Ljava/io/IOException;
    const-string v3, "TiBlob"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 268
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 269
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 272
    :goto_1
    throw v3

    .line 270
    :catch_2
    move-exception v1

    .line 271
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "TiBlob"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getFile()Lorg/appcelerator/titanium/TiFileProxy;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 475
    :goto_0
    return-object v0

    .line 468
    :cond_0
    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 469
    const-string v1, "TiBlob"

    const-string v2, "getFile not supported for non-file blob types."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v1, v1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v1, :cond_2

    .line 472
    const-string v1, "TiBlob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFile unable to return value: underlying data is not file, rather "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_2
    new-instance v1, Lorg/appcelerator/titanium/TiFileProxy;

    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-direct {v1, v0}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Lorg/appcelerator/titanium/io/TiBaseFile;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 489
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    if-lez v1, :cond_0

    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    if-lez v1, :cond_0

    .line 490
    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v1, :pswitch_data_0

    .line 498
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    .line 492
    :pswitch_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 494
    :pswitch_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 495
    .local v0, byteArray:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 310
    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v1, :pswitch_data_0

    .line 319
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    return-object v1

    .line 313
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    const-string v1, "TiBlob"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/4 v1, 0x0

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 286
    iget v2, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v2, :pswitch_data_0

    .line 300
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    :goto_0
    return v2

    .line 289
    :pswitch_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v2, v2, Lorg/appcelerator/titanium/io/TitaniumBlob;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TitaniumBlob;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TitaniumBlob;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 294
    .local v0, fileSize:J
    :goto_1
    long-to-int v2, v0

    goto :goto_0

    .line 292
    .end local v0           #fileSize:J
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->size()J

    move-result-wide v0

    .restart local v0       #fileSize:J
    goto :goto_1

    .line 297
    .end local v0           #fileSize:J
    :pswitch_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getNativePath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-object v1

    .line 441
    :cond_1
    iget v2, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 442
    const-string v2, "TiBlob"

    const-string v3, "getNativePath not supported for non-file blob types."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v2, v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v2, :cond_3

    .line 445
    const-string v2, "TiBlob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNativePath unable to return value: underlying data is not file, rather "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_3
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v0

    .line 451
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 359
    .local v1, result:Ljava/lang/String;
    iget v3, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object v3, v1

    .line 379
    :goto_1
    return-object v3

    .line 361
    :pswitch_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 368
    .restart local v1       #result:Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    const-string v4, "application/octet-stream"

    if-eq v3, v4, :cond_0

    .line 369
    const/4 v3, 0x0

    goto :goto_1

    .line 372
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:Ljava/lang/String;
    .local v2, result:Ljava/lang/String;
    move-object v1, v2

    .line 375
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "TiBlob"

    const-string v4, "Unable to convert to string."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    return v0
.end method

.method public guessContentTypeFromStream()Ljava/lang/String;
    .locals 6

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, mt:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 194
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 201
    :cond_0
    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TiBlob"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v0, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public imageAsCropped(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 504
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 505
    .local v2, img:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 519
    .end local p1
    :goto_0
    return-object v7

    .line 508
    .restart local p1
    :cond_0
    instance-of v8, p1, Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 509
    const-string v8, "TiBlob"

    const-string v9, "Argument for imageAsCropped must be a dictionary"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :cond_1
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-direct {v3, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 514
    .local v3, options:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "width"

    iget v8, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 515
    .local v4, widthCropped:I
    const-string v7, "height"

    iget v8, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 516
    .local v0, heightCropped:I
    const-string v7, "x"

    iget v8, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 517
    .local v5, x:I
    const-string v7, "y"

    iget v8, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 518
    .local v6, y:I
    invoke-static {v2, v5, v6, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 519
    .local v1, imageCropped:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v7

    goto :goto_0
.end method

.method public imageAsResized(Ljava/lang/Number;Ljava/lang/Number;)Lorg/appcelerator/titanium/TiBlob;
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 525
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 526
    .local v3, img:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 527
    const/4 v4, 0x0

    .line 533
    :goto_0
    return-object v4

    .line 530
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 531
    .local v1, dstWidth:I
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 532
    .local v0, dstHeight:I
    const/4 v4, 0x1

    invoke-static {v3, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 533
    .local v2, imageResized:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v4

    goto :goto_0
.end method

.method public imageAsThumbnail(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/appcelerator/titanium/TiBlob;
    .locals 8
    .parameter "size"
    .end parameter
    .parameter "borderSize"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter
    .parameter "cornerRadius"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    const/4 v7, 0x0

    .line 540
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 541
    .local v3, img:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 542
    const/4 v6, 0x0

    .line 562
    :goto_0
    return-object v6

    .line 545
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 546
    .local v5, thumbnailSize:I
    invoke-static {v3, v5, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 548
    .local v1, imageThumbnail:Landroid/graphics/Bitmap;
    const/high16 v0, 0x3f80

    .line 549
    .local v0, border:F
    if-eqz p2, :cond_1

    .line 550
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 552
    :cond_1
    const/4 v4, 0x0

    .line 553
    .local v4, radius:F
    if-eqz p3, :cond_2

    .line 554
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 557
    :cond_2
    cmpl-float v6, v0, v7

    if-nez v6, :cond_3

    cmpl-float v6, v4, v7

    if-nez v6, :cond_3

    .line 558
    invoke-static {v1}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v6

    goto :goto_0

    .line 561
    :cond_3
    invoke-static {v1, v4, v0}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithRoundedCorner(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 562
    .local v2, imageThumbnailBorder:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v6

    goto :goto_0
.end method

.method public imageWithAlpha()Lorg/appcelerator/titanium/TiBlob;
    .locals 3

    .prologue
    .line 568
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 569
    .local v1, img:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 570
    const/4 v2, 0x0

    .line 574
    :goto_0
    return-object v2

    .line 573
    :cond_0
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    .local v0, imageWithAlpha:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    goto :goto_0
.end method

.method public imageWithRoundedCorner(Ljava/lang/Number;Ljava/lang/Number;)Lorg/appcelerator/titanium/TiBlob;
    .locals 5
    .parameter "cornerRadius"
    .end parameter
    .parameter "borderSize"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 580
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 581
    .local v2, img:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 582
    const/4 v4, 0x0

    .line 592
    :goto_0
    return-object v4

    .line 585
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 586
    .local v3, radius:F
    const/high16 v0, 0x3f80

    .line 587
    .local v0, border:F
    if-eqz p2, :cond_1

    .line 588
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 591
    :cond_1
    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithRoundedCorner(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 592
    .local v1, imageRoundedCorner:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v4

    goto :goto_0
.end method

.method public imageWithTransparentBorder(Ljava/lang/Number;)Lorg/appcelerator/titanium/TiBlob;
    .locals 4
    .parameter "size"

    .prologue
    .line 598
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 599
    .local v2, img:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 600
    const/4 v3, 0x0

    .line 605
    :goto_0
    return-object v3

    .line 603
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 604
    .local v0, borderSize:I
    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithTransparentBorder(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 605
    .local v1, imageWithBorder:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    goto :goto_0
.end method

.method public loadBitmapInfo()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 209
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->guessContentTypeFromStream()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, mt:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    if-eq v1, v3, :cond_0

    .line 212
    iput-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    .line 216
    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "image/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 221
    iget v3, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v3, :pswitch_data_0

    .line 232
    :goto_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_2

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v3, v5, :cond_2

    .line 233
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 234
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 237
    .end local v2           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    return-void

    .line 223
    .restart local v2       #opts:Landroid/graphics/BitmapFactory$Options;
    :pswitch_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 227
    .local v0, byteArray:[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toBase64()Ljava/lang/String;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getText()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 432
    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #text:Ljava/lang/String;
    :cond_0
    const-string v0, "[object TiBlob]"

    goto :goto_0
.end method
