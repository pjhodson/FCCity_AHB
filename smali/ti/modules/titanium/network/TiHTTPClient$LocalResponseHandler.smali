.class Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public client:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/network/TiHTTPClient;",
            ">;"
        }
    .end annotation
.end field

.field public entity:Lorg/apache/http/HttpEntity;

.field public is:Ljava/io/InputStream;

.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient;)V
    .locals 1
    .parameter
    .parameter "client"

    .prologue
    .line 213
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    .line 215
    return-void
.end method

.method private createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;
    .locals 8
    .parameter "dumpResponseOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 308
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 309
    .local v0, app:Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;

    move-result-object v2

    .line 311
    .local v2, helper:Lorg/appcelerator/kroll/util/TiTempFileHelper;
    const-string v5, "tihttp"

    const-string v6, "tmp"

    invoke-virtual {v2, v5, v6}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 316
    .end local v2           #helper:Lorg/appcelerator/kroll/util/TiTempFileHelper;
    .local v3, outFile:Ljava/io/File;
    :goto_0
    new-instance v4, Lorg/appcelerator/titanium/io/TiFile;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v7}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 317
    .local v4, tiFile:Lorg/appcelerator/titanium/io/TiFile;
    if-eqz p1, :cond_0

    .line 318
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .line 319
    .local v1, byteStream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lorg/appcelerator/titanium/io/TiFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    .line 322
    .end local v1           #byteStream:Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v5, v6}, Lti/modules/titanium/network/TiHTTPClient;->access$602(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 323
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;
    invoke-static {v6}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v6

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;
    invoke-static {v5, v6}, Lti/modules/titanium/network/TiHTTPClient;->access$502(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 324
    return-object v4

    .line 313
    .end local v3           #outFile:Ljava/io/File;
    .end local v4           #tiFile:Lorg/appcelerator/titanium/io/TiFile;
    :cond_1
    const-string v5, "tihttp"

    const-string v6, "tmp"

    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .restart local v3       #outFile:Ljava/io/File;
    goto :goto_0
.end method

.method private finishedReceivingEntityData(J)V
    .locals 4
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v1

    instance-of v1, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 364
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;
    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;
    invoke-static {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->access$502(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 366
    .end local v0           #byteStream:Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v1}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 367
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v2, 0x0

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->access$602(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 368
    return-void
.end method

.method private handleEntityData([BIJJ)V
    .locals 10
    .parameter "data"
    .parameter "size"
    .parameter "totalSize"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v5

    if-nez v5, :cond_0

    .line 330
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J
    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)J

    move-result-wide v5

    cmp-long v5, p5, v5

    if-lez v5, :cond_2

    .line 331
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    .line 337
    :cond_0
    :goto_0
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J
    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)J

    move-result-wide v5

    cmp-long v5, p3, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v5

    instance-of v5, v5, Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_1

    .line 340
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->createFileResponseData(Z)Lorg/appcelerator/titanium/io/TiFile;

    .line 343
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 345
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 346
    .local v2, callbackData:Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "totalCount"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v5, "totalSize"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v5, "size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-array v1, p2, [B

    .line 351
    .local v1, blobData:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v5, v1, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;
    invoke-static {v5}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    .line 354
    .local v0, blob:Lorg/appcelerator/titanium/TiBlob;
    const-string v5, "blob"

    invoke-virtual {v2, v5, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v5, "progress"

    long-to-double v6, p3

    long-to-double v8, p5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const-string v6, "ondatastream"

    #calls: Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    invoke-static {v5, v6, v2}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 358
    return-void

    .line 333
    .end local v0           #blob:Lorg/appcelerator/titanium/TiBlob;
    .end local v1           #blobData:[B
    .end local v2           #callbackData:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, p5, v5

    if-lez v5, :cond_3

    move-wide v3, p5

    .line 334
    .local v3, streamSize:J
    :goto_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    long-to-int v7, v3

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;
    invoke-static {v5, v6}, Lti/modules/titanium/network/TiHTTPClient;->access$602(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    goto :goto_0

    .line 333
    .end local v3           #streamSize:J
    :cond_3
    const-wide/16 v3, 0x200

    goto :goto_1
.end method

.method private setResponseText(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 372
    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;
    invoke-static {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->access$902(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 14
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v12, 0x1

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->connected:Z
    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$102(Lti/modules/titanium/network/TiHTTPClient;Z)Z

    .line 220
    const/4 v8, 0x0

    .line 221
    .local v8, clientResponse:Ljava/lang/String;
    const/4 v9, 0x0

    .line 223
    .local v9, contentEncoding:Lorg/apache/http/Header;
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lti/modules/titanium/network/TiHTTPClient;

    .line 225
    .local v7, c:Lti/modules/titanium/network/TiHTTPClient;
    if-eqz v7, :cond_0

    .line 226
    #setter for: Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;
    invoke-static {v7, p1}, Lti/modules/titanium/network/TiHTTPClient;->access$202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    .line 227
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 228
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setStatus(I)V

    .line 229
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setStatusText(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 233
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :try_start_0
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entity Type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entity Content Type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entity isChunked: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entity isStreaming: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 244
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 245
    .local v11, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v12, 0x12c

    if-lt v0, v12, :cond_2

    .line 246
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->setResponseText(Lorg/apache/http/HttpEntity;)V

    .line 247
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 250
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    .line 251
    const-string v0, "Content-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 252
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_6

    .line 253
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;
    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    :cond_3
    if-eqz v9, :cond_5

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v12, "gzip"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    .line 261
    :goto_1
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;
    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$402(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    :goto_2
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/4 v12, 0x0

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;
    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$502(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;

    .line 268
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    .line 270
    .local v5, contentLength:J
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v0, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, count:I
    const-wide/16 v3, 0x0

    .line 273
    .local v3, totalSize:J
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 274
    .local v1, buf:[B
    const-string v0, "TiHttpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Available: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v0, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;
    invoke-static {v0, v12}, Lti/modules/titanium/network/TiHTTPClient;->access$402(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    :cond_4
    :goto_3
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_7

    .line 280
    int-to-long v12, v2

    add-long/2addr v3, v12

    move-object v0, p0

    .line 282
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->handleEntityData([BIJJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 283
    :catch_0
    move-exception v10

    .line 284
    .local v10, e:Ljava/io/IOException;
    const-string v0, "TiHttpClient"

    const-string v12, "Error handling entity data"

    invoke-static {v0, v12, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 259
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v3           #totalSize:J
    .end local v5           #contentLength:J
    .end local v10           #e:Ljava/io/IOException;
    :cond_5
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    goto/16 :goto_1

    .line 263
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    goto/16 :goto_2

    .line 290
    .restart local v1       #buf:[B
    .restart local v2       #count:I
    .restart local v3       #totalSize:J
    .restart local v5       #contentLength:J
    :cond_7
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_8

    .line 292
    :try_start_2
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 297
    :cond_8
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v0, v3, v12

    if-lez v0, :cond_9

    .line 298
    invoke-direct {p0, v3, v4}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->finishedReceivingEntityData(J)V

    .line 302
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v3           #totalSize:J
    .end local v5           #contentLength:J
    .end local v7           #c:Lti/modules/titanium/network/TiHTTPClient;
    .end local v11           #statusLine:Lorg/apache/http/StatusLine;
    :cond_9
    return-object v8

    .line 293
    .restart local v1       #buf:[B
    .restart local v2       #count:I
    .restart local v3       #totalSize:J
    .restart local v5       #contentLength:J
    .restart local v7       #c:Lti/modules/titanium/network/TiHTTPClient;
    .restart local v11       #statusLine:Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v10

    .line 294
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 239
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v3           #totalSize:J
    .end local v5           #contentLength:J
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #statusLine:Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
