.class public abstract Lorg/appcelerator/titanium/io/TiBaseFile;
.super Ljava/lang/Object;
.source "TiBaseFile.java"


# static fields
.field public static final MODE_APPEND:I = 0x2

.field public static final MODE_READ:I = 0x0

.field public static final MODE_WRITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TiBaseFile"

.field protected static final TYPE_BLOB:I = 0x3

.field protected static final TYPE_FILE:I = 0x1

.field protected static final TYPE_RESOURCE:I = 0x2


# instance fields
.field protected binary:Z

.field protected flagHidden:Z

.field protected flagSymbolicLink:Z

.field protected inreader:Ljava/io/BufferedReader;

.field protected instream:Ljava/io/InputStream;

.field protected modeExecutable:Z

.field protected modeRead:Z

.field protected modeWrite:Z

.field protected opened:Z

.field protected outstream:Ljava/io/OutputStream;

.field protected outwriter:Ljava/io/BufferedWriter;

.field protected stream:Z

.field protected type:I

.field protected typeDir:Z

.field protected typeFile:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->type:I

    .line 60
    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeFile:Z

    .line 61
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeDir:Z

    .line 62
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagHidden:Z

    .line 63
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagSymbolicLink:Z

    .line 64
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeExecutable:Z

    .line 65
    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeRead:Z

    .line 66
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    .line 68
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    .line 69
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    .line 70
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    .line 71
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    .line 72
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    .line 73
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->stream:Z

    .line 74
    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->binary:Z

    .line 75
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 374
    iget-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    if-eqz v1, :cond_4

    .line 375
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 377
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    .line 384
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    .line 386
    :try_start_1
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    .line 392
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 394
    :try_start_2
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 398
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    .line 401
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_3

    .line 403
    :try_start_3
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 407
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    .line 410
    :cond_3
    iput-boolean v3, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    .line 413
    :cond_4
    iput-boolean v3, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->binary:Z

    .line 414
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error closing file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 388
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error closing file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 396
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error closing file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 405
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error closing file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copy(Ljava/lang/String;)Z
    .locals 12
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 135
    const/4 v5, 0x0

    .line 136
    .local v5, is:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 137
    .local v7, os:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 139
    .local v2, copied:Z
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v10

    .line 142
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-object v5

    .line 143
    if-nez v5, :cond_3

    .line 166
    if-eqz v5, :cond_2

    .line 168
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 169
    const/4 v5, 0x0

    .line 175
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 177
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 178
    const/4 v7, 0x0

    goto :goto_0

    .line 145
    :cond_3
    const/4 v11, 0x1

    :try_start_3
    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v9, v11

    .line 146
    .local v9, parts:[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v9, v11}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v0

    .line 147
    .local v0, bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-nez v0, :cond_5

    .line 166
    if-eqz v5, :cond_4

    .line 168
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 169
    const/4 v5, 0x0

    .line 175
    :cond_4
    :goto_2
    if-eqz v7, :cond_0

    .line 177
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 178
    const/4 v7, 0x0

    goto :goto_0

    .line 149
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getOutputStream()Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    move-result-object v7

    .line 150
    if-nez v7, :cond_7

    .line 166
    if-eqz v5, :cond_6

    .line 168
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 169
    const/4 v5, 0x0

    .line 175
    :cond_6
    :goto_3
    if-eqz v7, :cond_0

    .line 177
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 178
    const/4 v7, 0x0

    goto :goto_0

    .line 152
    :cond_7
    const/16 v10, 0x1fa0

    :try_start_9
    new-array v1, v10, [B

    .line 153
    .local v1, buf:[B
    const/4 v3, 0x0

    .line 154
    .local v3, count:I
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 155
    .end local v5           #is:Ljava/io/InputStream;
    .local v6, is:Ljava/io/InputStream;
    :try_start_a
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 157
    .end local v7           #os:Ljava/io/OutputStream;
    .local v8, os:Ljava/io/OutputStream;
    :goto_4
    :try_start_b
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_a

    .line 158
    const/4 v10, 0x0

    invoke-virtual {v8, v1, v10, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_4

    .line 162
    :catch_0
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    move-object v5, v6

    .line 163
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1           #buf:[B
    .end local v3           #count:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v9           #parts:[Ljava/lang/String;
    .local v4, e:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_5
    :try_start_c
    const-string v10, "TiBaseFile"

    const-string v11, "Error while copying file: "

    invoke-static {v10, v11, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 166
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v5, :cond_8

    .line 168
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 169
    const/4 v5, 0x0

    .line 175
    :cond_8
    :goto_7
    if-eqz v7, :cond_9

    .line 177
    :try_start_e
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 178
    const/4 v7, 0x0

    .line 181
    :cond_9
    :goto_8
    throw v10

    .line 161
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1       #buf:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #parts:[Ljava/lang/String;
    :cond_a
    const/4 v2, 0x1

    .line 166
    if-eqz v6, :cond_c

    .line 168
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 169
    const/4 v5, 0x0

    .line 175
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_9
    if-eqz v8, :cond_b

    .line 177
    :try_start_10
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 178
    const/4 v7, 0x0

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :goto_a
    move v10, v2

    .line 185
    goto/16 :goto_0

    .line 170
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v10

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_9

    .line 179
    :catch_2
    move-exception v10

    move-object v7, v8

    .line 181
    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_a

    .line 170
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1           #buf:[B
    .end local v3           #count:I
    .end local v9           #parts:[Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_1

    .line 179
    :catch_4
    move-exception v11

    goto/16 :goto_0

    .line 170
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v9       #parts:[Ljava/lang/String;
    :catch_5
    move-exception v11

    goto :goto_2

    .line 179
    :catch_6
    move-exception v11

    goto/16 :goto_0

    .line 170
    :catch_7
    move-exception v11

    goto :goto_3

    .line 179
    :catch_8
    move-exception v11

    goto/16 :goto_0

    .line 170
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v9           #parts:[Ljava/lang/String;
    :catch_9
    move-exception v11

    goto :goto_7

    .line 179
    :catch_a
    move-exception v11

    goto :goto_8

    .line 166
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1       #buf:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v9       #parts:[Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_6

    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_6

    .line 162
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1           #buf:[B
    .end local v3           #count:I
    .end local v9           #parts:[Ljava/lang/String;
    :catch_b
    move-exception v4

    goto :goto_5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1       #buf:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v9       #parts:[Ljava/lang/String;
    :catch_c
    move-exception v4

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_5

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :cond_b
    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_a

    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :cond_c
    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_9
.end method

.method protected copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    const/16 v2, 0x1fa0

    new-array v0, v2, [B

    .line 434
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 435
    .local v1, count:I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 436
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method

.method protected copyStream(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 4
    .parameter "r"
    .parameter "w"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 441
    const/16 v2, 0x1fa0

    new-array v0, v2, [C

    .line 442
    .local v0, buf:[C
    const/4 v1, 0x0

    .line 443
    .local v1, count:I
    :goto_0
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 444
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method

.method public createDirectory(Z)Z
    .locals 1
    .parameter "recursive"

    .prologue
    .line 189
    const-string v0, "createDirectory"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public createShortcut()Z
    .locals 1

    .prologue
    .line 194
    const-string v0, "createShortcut"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public createTimestamp()D
    .locals 2

    .prologue
    .line 199
    const-string v0, "createTimestamp"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 200
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deleteDirectory(Z)Z
    .locals 1
    .parameter "recursive"

    .prologue
    .line 204
    const-string v0, "deleteDirectory"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile()Z
    .locals 1

    .prologue
    .line 209
    const-string v0, "deleteFile"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 218
    const-string v0, "exists"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public extension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "extensionsion"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectoryListing()Ljava/util/List;
    .locals 1
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
    .line 232
    const-string v0, "getDirectoryListing"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExistingInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getExistingOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getNativeFile()Ljava/io/File;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getParent()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 241
    const-string v0, "getParent"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeDir:Z

    return v0
.end method

.method public isExecutable()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeExecutable:Z

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeFile:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagHidden:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeRead:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolicLink()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagSymbolicLink:Z

    return v0
.end method

.method public isWriteable()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    return v0
.end method

.method protected logNotSupported(Ljava/lang/String;)V
    .locals 3
    .parameter "method"

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    .line 429
    :cond_0
    const-string v0, "TiBaseFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method is not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void
.end method

.method public modificationTimestamp()D
    .locals 2

    .prologue
    .line 246
    const-string v0, "modificationTimestamp"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 247
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public move(Ljava/lang/String;)Z
    .locals 8
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 252
    const/4 v3, 0x0

    .line 254
    .local v3, moved:Z
    if-eqz p1, :cond_3

    .line 255
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 256
    .local v4, parts:[Ljava/lang/String;
    invoke-static {v4, v6}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    .line 257
    .local v0, bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v0, :cond_4

    .line 258
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Destination already exists."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v2

    .line 263
    .local v2, fsrc:Ljava/io/File;
    if-nez v2, :cond_1

    .line 264
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "Source is not a true file."

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :cond_1
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v1

    .line 267
    .local v1, fdest:Ljava/io/File;
    if-nez v1, :cond_2

    .line 268
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "Destination is not a valid location for writing"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 271
    :cond_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->copy(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->deleteFile()Z

    move-result v3

    .line 279
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1           #fdest:Ljava/io/File;
    .end local v2           #fsrc:Ljava/io/File;
    .end local v4           #parts:[Ljava/lang/String;
    :cond_3
    return v3

    .line 275
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v4       #parts:[Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destination not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string v0, "nativePath"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(IZ)V
    .locals 1
    .parameter "mode"
    .parameter "binary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const-string v0, "open"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v0, "read"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

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
    .line 306
    const-string v0, "readLine"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 4
    .parameter "destination"

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, renamed:Z
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v1

    .line 314
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 320
    .end local v0           #dest:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :cond_0
    return v2
.end method

.method public resolve()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 324
    const-string v0, "resolve"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public setExecutable()Z
    .locals 1

    .prologue
    .line 329
    const-string v0, "setExecutable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public setReadonly()Z
    .locals 1

    .prologue
    .line 334
    const-string v0, "setReadonly"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public setWriteable()Z
    .locals 1

    .prologue
    .line 339
    const-string v0, "setWriteable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 344
    const-string v0, "size"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 345
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public spaceAvailable()D
    .locals 2

    .prologue
    .line 349
    const-string v0, "spaceAvailable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 350
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public unzip(Ljava/lang/String;)V
    .locals 1
    .parameter "destination"

    .prologue
    .line 354
    const-string v0, "unzip"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 1
    .parameter "data"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    const-string v0, "write"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public write(Lorg/appcelerator/titanium/TiBlob;Z)V
    .locals 0
    .parameter "blob"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    return-void
.end method

.method public writeFromUrl(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const-string v0, "writeFromUrl"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 367
    return-void
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
    .line 370
    const-string v0, "writeLine"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 371
    return-void
.end method
