.class Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;

.field private final totalLength:I


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;I)V
    .locals 0
    .parameter
    .parameter "totalLength"

    .prologue
    .line 1169
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput p2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:I

    .line 1171
    return-void
.end method

.method static synthetic access$1900(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1164
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1176
    const-wide/16 v18, 0xa

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 1177
    const-string v18, "TiHttpClient"

    const-string v19, "send()"

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    new-instance v19, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;-><init>(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient;)V

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    invoke-static/range {v18 .. v19}, Lti/modules/titanium/network/TiHTTPClient;->access$1002(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->customAuthenticators:Ljava/util/Hashtable;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1100(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/Hashtable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1183
    .local v3, authSchemes:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1184
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1185
    .local v16, scheme:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/DefaultHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->customAuthenticators:Ljava/util/Hashtable;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1100(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/Hashtable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/http/auth/AuthSchemeFactory;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1280
    .end local v3           #authSchemes:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v16           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1281
    .local v17, t:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 1282
    const-string v18, "TiHttpClient"

    const-string v19, "clearing the expired and idle connections"

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    const-wide/16 v19, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v18 .. v21}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 1290
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 1291
    .local v12, msg:Ljava/lang/String;
    if-nez v12, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1292
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 1294
    :cond_0
    if-nez v12, :cond_1

    .line 1295
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1297
    :cond_1
    const-string v18, "TiHttpClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "HTTP Error ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1299
    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v5}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1300
    .local v5, data:Lorg/appcelerator/kroll/KrollDict;
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0, v12}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    const-string v19, "onerror"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    #calls: Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    invoke-static {v0, v1, v5}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1304
    .end local v5           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v12           #msg:Ljava/lang/String;
    .end local v17           #t:Ljava/lang/Throwable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #calls: Lti/modules/titanium/network/TiHTTPClient;->deleteTmpFiles()V
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$2400(Lti/modules/titanium/network/TiHTTPClient;)V

    .line 1305
    return-void

    .line 1189
    .restart local v3       #authSchemes:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lti/modules/titanium/network/TiHTTPClient;->validatesSecureCertificate()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lti/modules/titanium/network/TiHTTPClient;->getClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v19

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {v18 .. v19}, Lti/modules/titanium/network/TiHTTPClient;->access$1202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1300(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v18

    new-instance v19, Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v20, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;
    invoke-static/range {v20 .. v20}, Lti/modules/titanium/network/TiHTTPClient;->access$1400(Lti/modules/titanium/network/TiHTTPClient;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v20, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;
    invoke-static/range {v20 .. v20}, Lti/modules/titanium/network/TiHTTPClient;->access$1300(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;
    invoke-static/range {v18 .. v19}, Lti/modules/titanium/network/TiHTTPClient;->access$1302(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/auth/Credentials;)Lorg/apache/http/auth/Credentials;

    .line 1194
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v18

    new-instance v19, Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;-><init>(Lti/modules/titanium/network/TiHTTPClient;)V

    invoke-virtual/range {v18 .. v19}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1197
    const/4 v8, 0x0

    .line 1198
    .local v8, form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const/4 v11, 0x0

    .line 1200
    .local v11, mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    if-lez v18, :cond_4

    .line 1202
    :try_start_2
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .end local v8           #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .local v9, form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object v8, v9

    .line 1209
    .end local v9           #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v8       #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_4
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    if-lez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1800(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1210
    new-instance v11, Lorg/apache/http/entity/mime/MultipartEntity;

    .end local v11           #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    invoke-direct {v11}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 1211
    .restart local v11       #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1212
    .local v13, name:Ljava/lang/String;
    const-string v19, "TiHttpClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "adding part "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", part type: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", len: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v20, "DEBUG_MODE"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/http/entity/mime/content/ContentBody;

    move-object/from16 v0, v18

    invoke-virtual {v11, v13, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto/16 :goto_4

    .line 1204
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #name:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1205
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v18, "TiHttpClient"

    const-string v19, "Unsupported encoding: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 1217
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz v8, :cond_6

    .line 1219
    :try_start_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1220
    .local v4, bos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v8, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 1221
    const-string v18, "form"

    new-instance v19, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "application/x-www-form-urlencoded"

    const-string v22, "UTF-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    invoke-direct/range {v19 .. v22}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1231
    .end local v4           #bos:Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v6

    check-cast v6, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 1233
    .local v6, e:Lorg/apache/http/HttpEntityEnclosingRequest;
    new-instance v14, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    new-instance v19, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;-><init>(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v11, v1}, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;-><init>(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpEntity;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V

    .line 1240
    .local v14, progressEntity:Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;
    invoke-interface {v6, v14}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1242
    const-string v18, "Length"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    .end local v6           #e:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #progressEntity:Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v7

    check-cast v7, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 1250
    .local v7, enclosingEntity:Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v7}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v18

    const-string v19, "Content-Length"

    invoke-interface/range {v18 .. v19}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 1256
    .end local v7           #enclosingEntity:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v8           #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v11           #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->timeout:I
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v19, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->timeout:I
    invoke-static/range {v19 .. v19}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v19

    invoke-static/range {v18 .. v19}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v19, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->timeout:I
    invoke-static/range {v19 .. v19}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v19

    invoke-static/range {v18 .. v19}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1261
    :cond_8
    const-string v18, "TiHttpClient"

    const-string v19, "Preparing to execute request"

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 1263
    const/4 v15, 0x0

    .line 1265
    .local v15, result:Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v19, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->host:Lorg/apache/http/HttpHost;
    invoke-static/range {v19 .. v19}, Lti/modules/titanium/network/TiHTTPClient;->access$2200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpHost;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v20, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static/range {v20 .. v20}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v21, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    invoke-static/range {v21 .. v21}, Lti/modules/titanium/network/TiHTTPClient;->access$1000(Lti/modules/titanium/network/TiHTTPClient;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    move-object v15, v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 1273
    :cond_9
    if-eqz v15, :cond_a

    .line 1274
    :try_start_7
    const-string v18, "TiHttpClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Have result back from request len="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->connected:Z
    invoke-static/range {v18 .. v19}, Lti/modules/titanium/network/TiHTTPClient;->access$102(Lti/modules/titanium/network/TiHTTPClient;Z)Z

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lti/modules/titanium/network/TiHTTPClient;->setResponseText(Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    goto/16 :goto_2

    .line 1223
    .end local v15           #result:Ljava/lang/String;
    .restart local v8       #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    :catch_2
    move-exception v6

    .line 1224
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v18, "TiHttpClient"

    const-string v19, "Unsupported encoding: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1226
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v6

    .line 1227
    .local v6, e:Ljava/io/IOException;
    const-string v18, "TiHttpClient"

    const-string v19, "Error converting form to string: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1245
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lti/modules/titanium/network/TiHTTPClient;->handleURLEncodedData(Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    invoke-static {v0, v8}, Lti/modules/titanium/network/TiHTTPClient;->access$2000(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V

    goto/16 :goto_6

    .line 1267
    .end local v8           #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v11           #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v15       #result:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 1268
    .restart local v6       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v18, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->aborted:Z
    invoke-static/range {v18 .. v18}, Lti/modules/titanium/network/TiHTTPClient;->access$2300(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 1269
    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 1287
    .end local v3           #authSchemes:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6           #e:Ljava/io/IOException;
    .end local v15           #result:Ljava/lang/String;
    .restart local v17       #t:Ljava/lang/Throwable;
    :cond_c
    const-string v18, "TiHttpClient"

    const-string v19, "client is not valid, unable to clear expired and idle connections"

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
