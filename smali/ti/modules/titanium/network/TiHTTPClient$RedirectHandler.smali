.class Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "TiHTTPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RedirectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method constructor <init>(Lti/modules/titanium/network/TiHTTPClient;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 5
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP response may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_0
    const-string v2, "location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 181
    .local v1, locationHeader:Lorg/apache/http/Header;
    if-nez v1, :cond_1

    .line 183
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received redirect response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but no location header"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, location:Ljava/lang/String;
    const-string v2, "location"

    invoke-interface {p1, v2, v0}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v2

    return-object v2
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .parameter "response"
    .parameter "context"

    .prologue
    .line 198
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z
    invoke-static {v0}, Lti/modules/titanium/network/TiHTTPClient;->access$000(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
