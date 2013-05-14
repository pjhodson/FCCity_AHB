.class public Lti/modules/titanium/network/HTTPClientProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "HTTPClientProxy.java"


# static fields
.field public static final DONE:I = 0x4

.field public static final HEADERS_RECEIVED:I = 0x2

.field public static final LOADING:I = 0x3

.field public static final OPENED:I = 0x1

.field public static final UNSENT:I


# instance fields
.field private client:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 38
    new-instance v0, Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {v0, p0}, Lti/modules/titanium/network/TiHTTPClient;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 43
    invoke-direct {p0}, Lti/modules/titanium/network/HTTPClientProxy;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->abort()V

    .line 58
    return-void
.end method

.method public addAuthFactory(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "scheme"
    .parameter "factory"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/http/auth/AuthSchemeFactory;

    if-nez v0, :cond_1

    .line 247
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local p2
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    check-cast p2, Lorg/apache/http/auth/AuthSchemeFactory;

    .end local p2
    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->addAuthFactory(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    goto :goto_0
.end method

.method public addKeyManager(Ljava/lang/Object;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 260
    instance-of v0, p1, Ljavax/net/ssl/X509KeyManager;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    check-cast p1, Ljavax/net/ssl/X509KeyManager;

    .end local p1
    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->addKeyManager(Ljavax/net/ssl/X509KeyManager;)V

    .line 263
    :cond_0
    return-void
.end method

.method public addTrustManager(Ljava/lang/Object;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 252
    instance-of v0, p1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    .end local p1
    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->addTrustManager(Ljavax/net/ssl/X509TrustManager;)V

    .line 255
    :cond_0
    return-void
.end method

.method public clearCookies(Ljava/lang/String;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 124
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->clearCookies(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public getAllResponseHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAllResponseHeaders()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoEncodeUrl()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAutoEncodeUrl()Z

    move-result v0

    return v0
.end method

.method public getAutoRedirect()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAutoRedirect()Z

    move-result v0

    return v0
.end method

.method public getConnected()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReadyState()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getReadyState()I

    move-result v0

    return v0
.end method

.method public getResponseData()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseData()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "header"

    .prologue
    .line 81
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseXML()Lti/modules/titanium/xml/DocumentProxy;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseXML()Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValidatesSecureCertificate()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->validatesSecureCertificate()Z

    move-result v0

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "dict"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 49
    const-string v0, "timeout"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    const-string v1, "timeout"

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->setTimeout(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .parameter "url"

    .prologue
    .line 111
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public send(Ljava/lang/Object;)V
    .locals 1
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->send(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setAutoEncodeUrl(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 166
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setAutoEncodeUrl(Z)V

    .line 167
    return-void
.end method

.method public setAutoRedirect(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 178
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setAutoRedirect(Z)V

    .line 179
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 226
    const-string v0, "domain"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 211
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 130
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 136
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setTimeout(I)V

    .line 137
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 196
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public setValidatesSecureCertificate(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 190
    const-string v0, "validatesSecureCertificate"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    return-void
.end method
