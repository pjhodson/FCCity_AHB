.class Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressEntity"
.end annotation


# instance fields
.field private delegate:Lorg/apache/http/HttpEntity;

.field private listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpEntity;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V
    .locals 0
    .parameter
    .parameter "delegate"
    .parameter "listener"

    .prologue
    .line 388
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p2, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    .line 390
    iput-object p3, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

    .line 391
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 396
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    new-instance v0, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;

    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->listener:Lti/modules/titanium/network/TiHTTPClient$ProgressListener;

    invoke-direct {v0, v1, p1, v2}, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;-><init>(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V

    .line 436
    .local v0, progressOut:Ljava/io/OutputStream;
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;->delegate:Lorg/apache/http/HttpEntity;

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 437
    return-void
.end method
