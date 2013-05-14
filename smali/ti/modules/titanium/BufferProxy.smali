.class public Lti/modules/titanium/BufferProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "BufferProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BufferProxy"


# instance fields
.field private buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "bufferSize"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 43
    new-array v0, p1, [B

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 44
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "existingBuffer"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 48
    iput-object p1, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 49
    return-void
.end method


# virtual methods
.method public append([Ljava/lang/Object;)I
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 198
    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v0, v5

    .line 199
    .local v0, destLength:I
    const/4 v5, 0x0

    aget-object v4, p1, v5

    check-cast v4, Lti/modules/titanium/BufferProxy;

    .line 200
    .local v4, src:Lti/modules/titanium/BufferProxy;
    invoke-virtual {v4}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v2

    .line 202
    .local v2, sourceBuffer:[B
    const/4 v1, 0x0

    .line 203
    .local v1, offset:I
    array-length v5, p1

    if-le v5, v6, :cond_0

    aget-object v5, p1, v6

    if-eqz v5, :cond_0

    .line 204
    aget-object v5, p1, v6

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 207
    :cond_0
    array-length v3, v2

    .line 208
    .local v3, sourceLength:I
    array-length v5, p1

    if-le v5, v7, :cond_1

    aget-object v5, p1, v7

    if-eqz v5, :cond_1

    .line 209
    aget-object v5, p1, v7

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    .line 212
    :cond_1
    array-length v5, v2

    invoke-virtual {p0, v1, v3, v5}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 214
    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    add-int v6, v0, v3

    invoke-virtual {p0, v5, v6}, Lti/modules/titanium/BufferProxy;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 215
    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    return v3
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 328
    return-void
.end method

.method public clone([Ljava/lang/Object;)Lti/modules/titanium/BufferProxy;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, offset:I
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object v2, p1, v4

    if-eqz v2, :cond_0

    .line 288
    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 291
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v0, v2

    .line 292
    .local v0, length:I
    array-length v2, p1

    if-le v2, v3, :cond_1

    aget-object v2, p1, v3

    if-eqz v2, :cond_1

    .line 293
    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 296
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 298
    new-instance v2, Lti/modules/titanium/BufferProxy;

    iget-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    add-int v4, v1, v0

    invoke-virtual {p0, v3, v1, v4}, Lti/modules/titanium/BufferProxy;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lti/modules/titanium/BufferProxy;-><init>([B)V

    return-object v2
.end method

.method public copy([Ljava/lang/Object;)I
    .locals 9
    .parameter "args"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 255
    array-length v5, p1

    if-ge v5, v6, :cond_0

    .line 256
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "At least 1 argument required for copy: srcBuffer"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    :cond_0
    const/4 v5, 0x0

    aget-object v2, p1, v5

    check-cast v2, Lti/modules/titanium/BufferProxy;

    .line 260
    .local v2, sourceBufferProxy:Lti/modules/titanium/BufferProxy;
    invoke-virtual {v2}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v1

    .line 262
    .local v1, sourceBuffer:[B
    const/4 v0, 0x0

    .line 263
    .local v0, offset:I
    array-length v5, p1

    if-le v5, v6, :cond_1

    aget-object v5, p1, v6

    if-eqz v5, :cond_1

    .line 264
    aget-object v5, p1, v6

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 267
    :cond_1
    const/4 v4, 0x0

    .line 268
    .local v4, sourceOffset:I
    array-length v5, p1

    if-le v5, v7, :cond_2

    aget-object v5, p1, v7

    if-eqz v5, :cond_2

    .line 269
    aget-object v5, p1, v7

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    .line 272
    :cond_2
    array-length v3, v1

    .line 273
    .local v3, sourceLength:I
    array-length v5, p1

    if-le v5, v8, :cond_3

    aget-object v5, p1, v8

    if-eqz v5, :cond_3

    .line 274
    aget-object v5, p1, v8

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    .line 277
    :cond_3
    array-length v5, v1

    invoke-virtual {p0, v4, v3, v5}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 279
    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-static {v1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    return v3
.end method

.method protected copyOf([BI)[B
    .locals 4
    .parameter "array"
    .parameter "newLength"

    .prologue
    const/4 v3, 0x0

    .line 151
    new-array v1, p2, [B

    .line 152
    .local v1, newArray:[B
    move v0, p2

    .line 153
    .local v0, length:I
    array-length v2, p1

    if-le v0, v2, :cond_0

    .line 154
    array-length v0, p1

    .line 156
    :cond_0
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    return-object v1
.end method

.method protected copyOfRange([BII)[B
    .locals 3
    .parameter "array"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 162
    sub-int v0, p3, p2

    .line 163
    .local v0, length:I
    new-array v1, v0, [B

    .line 164
    .local v1, newArray:[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v1
.end method

.method protected encodeNumber(Ljava/lang/Number;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "value"
    .parameter "dict"

    .prologue
    .line 90
    const-string v2, "type"

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "data is a Number, but no type was given"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v2, v2

    if-nez v2, :cond_1

    .line 96
    invoke-static {v1}, Lti/modules/titanium/codec/CodecModule;->getWidth(Ljava/lang/String;)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 99
    :cond_1
    const-string v2, "byteOrder"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lti/modules/titanium/codec/CodecModule;->getByteOrder(Ljava/lang/Object;)I

    move-result v0

    .line 100
    .local v0, byteOrder:I
    iget-object v2, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Lti/modules/titanium/codec/CodecModule;->encodeNumber(Ljava/lang/Number;Ljava/lang/String;[BII)I

    .line 101
    return-void
.end method

.method protected encodeString(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .parameter "value"
    .parameter "dict"

    .prologue
    .line 105
    const-string v4, "type"

    invoke-static {p2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, type:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 107
    const-string v3, "utf8"

    .line 110
    :cond_0
    invoke-static {v3}, Lti/modules/titanium/codec/CodecModule;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, charset:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 113
    .local v0, bytes:[B
    iget-object v4, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v4, v4

    if-nez v4, :cond_1

    .line 114
    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v4, 0x0

    iget-object v5, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v0           #bytes:[B
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "BufferProxy"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported Encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public fill([Ljava/lang/Object;)V
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 304
    array-length v3, p1

    if-ge v3, v4, :cond_0

    .line 305
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "fill requires at least 1 argument: fillByte"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 309
    .local v0, fillByte:I
    const/4 v2, 0x0

    .line 310
    .local v2, offset:I
    array-length v3, p1

    if-le v3, v4, :cond_1

    aget-object v3, p1, v4

    if-eqz v3, :cond_1

    .line 311
    aget-object v3, p1, v4

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 314
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v1, v3

    .line 315
    .local v1, length:I
    array-length v3, p1

    if-le v3, v5, :cond_2

    aget-object v3, p1, v5

    if-eqz v3, :cond_2

    .line 316
    aget-object v3, p1, v5

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 319
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v3, v3

    invoke-virtual {p0, v2, v1, v3}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 321
    iget-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    add-int v4, v2, v1

    int-to-byte v5, v0

    invoke-static {v3, v2, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 322
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    return-object v0
.end method

.method public getIndexedProperty(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 136
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 1
    .parameter "createdInModule"
    .parameter "args"

    .prologue
    .line 55
    array-length v0, p2

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "dict"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, length:I
    const-string v3, "length"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, lengthProperty:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 70
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 73
    :cond_0
    const-string v3, "byteOrder"

    invoke-virtual {p0, v3}, Lti/modules/titanium/BufferProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const-string v3, "byteOrder"

    const/4 v4, 0x0

    invoke-static {v4}, Lti/modules/titanium/codec/CodecModule;->getByteOrder(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/BufferProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_1
    new-array v3, v0, [B

    iput-object v3, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 80
    const-string v3, "value"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 82
    check-cast v2, Ljava/lang/Number;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/BufferProxy;->encodeNumber(Ljava/lang/Number;Lorg/appcelerator/kroll/KrollDict;)V

    .line 86
    :cond_2
    :goto_0
    return-void

    .line 83
    .restart local v2       #value:Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 84
    check-cast v2, Ljava/lang/String;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/BufferProxy;->encodeString(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public insert([Ljava/lang/Object;)I
    .locals 11
    .parameter "args"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 222
    array-length v7, p1

    if-ge v7, v8, :cond_0

    .line 223
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "At least 2 arguments required for insert: src, offset"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 225
    :cond_0
    aget-object v4, p1, v10

    check-cast v4, Lti/modules/titanium/BufferProxy;

    .line 226
    .local v4, sourceBufferProxy:Lti/modules/titanium/BufferProxy;
    invoke-virtual {v4}, Lti/modules/titanium/BufferProxy;->getBuffer()[B

    move-result-object v3

    .line 227
    .local v3, sourceBuffer:[B
    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 229
    .local v0, offset:I
    const/4 v6, 0x0

    .line 230
    .local v6, sourceOffset:I
    array-length v7, p1

    if-le v7, v8, :cond_1

    aget-object v7, p1, v8

    if-eqz v7, :cond_1

    .line 231
    aget-object v7, p1, v8

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    .line 234
    :cond_1
    array-length v5, v3

    .line 235
    .local v5, sourceLength:I
    array-length v7, p1

    if-le v7, v9, :cond_2

    aget-object v7, p1, v9

    if-eqz v7, :cond_2

    .line 236
    aget-object v7, p1, v9

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    .line 239
    :cond_2
    array-length v7, v3

    invoke-virtual {p0, v6, v5, v7}, Lti/modules/titanium/BufferProxy;->validateOffsetAndLength(III)V

    .line 241
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-virtual {p0, v7, v0}, Lti/modules/titanium/BufferProxy;->copyOf([BI)[B

    move-result-object v2

    .line 242
    .local v2, preInsertBuffer:[B
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    iget-object v8, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v8, v8

    invoke-virtual {p0, v7, v0, v8}, Lti/modules/titanium/BufferProxy;->copyOfRange([BII)[B

    move-result-object v1

    .line 244
    .local v1, postInsertBuffer:[B
    array-length v7, v2

    add-int/2addr v7, v5

    array-length v8, v1

    add-int/2addr v7, v8

    new-array v7, v7, [B

    iput-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 245
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v8, v2

    invoke-static {v2, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v8, v2

    invoke-static {v3, v6, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget-object v7, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v8, v2

    add-int/2addr v8, v5

    array-length v9, v1

    invoke-static {v1, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return v5
.end method

.method public release()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 334
    return-void
.end method

.method public resize(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 372
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/BufferProxy;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 373
    return-void
.end method

.method public setIndexedProperty(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 142
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result v1

    aput-byte v1, v0, p1

    .line 147
    :goto_0
    return-void

    .line 145
    .restart local p2
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->setIndexedProperty(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lti/modules/titanium/BufferProxy;->resize(I)V

    .line 368
    return-void
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected validateOffsetAndLength(III)V
    .locals 3
    .parameter "offset"
    .parameter "length"
    .parameter "bufferLength"

    .prologue
    .line 170
    add-int v0, p1, p3

    if-le p2, v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and length of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is larger than the buffer length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method

.method public write(I[BII)I
    .locals 2
    .parameter "position"
    .parameter "sourceBuffer"
    .parameter "sourceOffset"
    .parameter "sourceLength"

    .prologue
    .line 186
    add-int v0, p1, p4

    iget-object v1, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    add-int v1, p1, p4

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/BufferProxy;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    .line 190
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/BufferProxy;->buffer:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    return p4
.end method
