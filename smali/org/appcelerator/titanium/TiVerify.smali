.class public Lorg/appcelerator/titanium/TiVerify;
.super Ljava/util/TimerTask;


# static fields
.field private static b:[B


# instance fields
.field protected a:Lorg/appcelerator/titanium/TiApplication;

.field private c:Landroid/app/Activity;

.field private d:Lorg/json/JSONArray;

.field private e:Ljava/lang/String;

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/appcelerator/titanium/TiVerify;->b:[B

    :try_start_0
    const-string v0, "tiverify"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TiVerify"

    const-string v2, "Failed to load library."

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :array_0
    .array-data 0x1
        0x61t
        0x48t
        0x52t
        0x30t
        0x63t
        0x48t
        0x4dt
        0x36t
        0x4ct
        0x79t
        0x39t
        0x68t
        0x63t
        0x47t
        0x6bt
        0x75t
        0x59t
        0x58t
        0x42t
        0x77t
        0x59t
        0x32t
        0x56t
        0x73t
        0x5at
        0x58t
        0x4at
        0x68t
        0x64t
        0x47t
        0x39t
        0x79t
        0x4ct
        0x6dt
        0x35t
        0x6ct
        0x64t
        0x43t
        0x39t
        0x77t
        0x4ct
        0x33t
        0x59t
        0x78t
        0x4ct
        0x32t
        0x31t
        0x76t
        0x5at
        0x48t
        0x56t
        0x73t
        0x5at
        0x53t
        0x31t
        0x32t
        0x5at
        0x58t
        0x4at
        0x70t
        0x5at
        0x6et
        0x6bt
        0x3dt
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/appcelerator/titanium/TiApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lorg/appcelerator/titanium/TiVerify;->c:Landroid/app/Activity;

    iput-object p2, p0, Lorg/appcelerator/titanium/TiVerify;->a:Lorg/appcelerator/titanium/TiApplication;

    return-void
.end method

.method private static a(Lorg/appcelerator/kroll/KrollModuleInfo;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "author"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "copyright"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getCopyright()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "guid"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "license"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getLicense()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "licenseKey"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getLicenseKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "TiVerify"

    const-string v2, "Error Generating Module Info JSON"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 8

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    invoke-direct {v5, v3, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TiVerify"

    const-string v2, "Error Verifying License Response"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "valid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TiVerify"

    const-string v1, "Succesfully verified module licenses"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->f:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiVerify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "License violation detected. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Please contact Appcelerator Support."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->c:Landroid/app/Activity;

    iget-object v2, p0, Lorg/appcelerator/titanium/TiVerify;->c:Landroid/app/Activity;

    new-instance v3, Lorg/appcelerator/titanium/a;

    invoke-direct {v3, p0, v1, v0}, Lorg/appcelerator/titanium/a;-><init>(Lorg/appcelerator/titanium/TiVerify;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "TiVerify"

    const-string v2, "Error Parsing License Response Message"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_2
    const-string v0, "TiVerify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received empty response from Verify Service with Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private a()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v2, v1, [B

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/appcelerator/titanium/TiVerify;->f:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-ne v4, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v2, p0, Lorg/appcelerator/titanium/TiVerify;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/appcelerator/titanium/TiVerify;->f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "TiVerify"

    const-string v2, "Error Checking Module License File"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static native filterDataInRange([BII)[B
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->d:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->e:Ljava/lang/String;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->a:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appdata"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, ".tilicense"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiVerify;->f:Ljava/io/File;

    invoke-direct {p0}, Lorg/appcelerator/titanium/TiVerify;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "TiVerify"

    const-string v2, "Verifying module licenses..."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;

    invoke-direct {v2}, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v3, 0x3a98

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x3a98

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/appcelerator/titanium/TiVerify;->b:[B

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lorg/appcelerator/titanium/TiVerify;->a:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v3

    const-string v5, "platform"

    const-string v6, "android"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "guid"

    invoke-interface {v3}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appid"

    invoke-interface {v3}, Lorg/appcelerator/titanium/ITiAppInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "name"

    invoke-interface {v3}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "version"

    invoke-interface {v3}, Lorg/appcelerator/titanium/ITiAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deploytype"

    iget-object v5, p0, Lorg/appcelerator/titanium/TiVerify;->a:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "modules"

    iget-object v5, p0, Lorg/appcelerator/titanium/TiVerify;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v6

    invoke-direct {v5, v2, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/apache/http/impl/DefaultHttpRequestFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    const-string v6, "POST"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    instance-of v1, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v1, :cond_1

    const-string v1, "TiVerify"

    const-string v2, "Error creating entity request"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/appcelerator/titanium/TiVerify;->c:Landroid/app/Activity;

    return-void

    :cond_1
    :try_start_1
    move-object v0, v2

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v1, v0

    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v3}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v4, v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/TiVerify;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TiVerify"

    const-string v3, "Error Verifying License"

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verify()V
    .locals 3

    iget-object v0, p0, Lorg/appcelerator/titanium/TiVerify;->a:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiVerify;->d:Lorg/json/JSONArray;

    invoke-static {}, Lorg/appcelerator/kroll/KrollModule;->getCustomModuleInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/appcelerator/titanium/TiVerify;->a(Lorg/appcelerator/kroll/KrollModuleInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/appcelerator/titanium/TiVerify;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/TiVerify;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
