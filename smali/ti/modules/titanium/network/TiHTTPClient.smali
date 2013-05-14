.class public Lti/modules/titanium/network/TiHTTPClient;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressListener;,
        Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;,
        Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_BUFFER_SIZE:I = 0x80000

.field private static final FALLBACK_CHARSETS:[Ljava/lang/String; = null

.field private static final HTML_META_TAG_REGEX:Ljava/lang/String; = "charset=([^\"\']*)"

.field private static final PROPERTY_MAX_BUFFER_SIZE:Ljava/lang/String; = "ti.android.httpclient.maxbuffersize"

.field private static final PROTOCOL_DEFAULT_PORT:I = -0x1

.field public static final READY_STATE_DONE:I = 0x4

.field public static final READY_STATE_HEADERS_RECEIVED:I = 0x2

.field public static final READY_STATE_LOADING:I = 0x3

.field public static final READY_STATE_OPENED:I = 0x1

.field public static final READY_STATE_UNSENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TiHttpClient"

.field private static final XML_DECLARATION_TAG_REGEX:Ljava/lang/String; = "encoding=[\"\']([^\"\']*)[\"\']"

.field private static httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field private aborted:Z

.field private autoEncodeUrl:Z

.field private autoRedirect:Z

.field private charset:Ljava/lang/String;

.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private clientThread:Ljava/lang/Thread;

.field private connected:Z

.field private contentType:Ljava/lang/String;

.field private credentials:Lorg/apache/http/auth/Credentials;

.field private customAuthenticators:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/lang/Object;

.field private handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

.field protected headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Lorg/apache/http/HttpHost;

.field private keyManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/X509KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private maxBufferSize:J

.field private method:Ljava/lang/String;

.field private needMultipart:Z

.field private nvPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/entity/mime/content/ContentBody;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Lorg/appcelerator/kroll/KrollProxy;

.field private readyState:I

.field private request:Lorg/apache/http/HttpRequest;

.field private response:Lorg/apache/http/HttpResponse;

.field private responseData:Lorg/appcelerator/titanium/TiBlob;

.field private responseOut:Ljava/io/OutputStream;

.field private responseText:Ljava/lang/String;

.field private responseXml:Lti/modules/titanium/xml/DocumentProxy;

.field private status:I

.field private statusText:Ljava/lang/String;

.field private timeout:I

.field private tmpFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private trustManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->FALLBACK_CHARSETS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    .line 152
    iput-boolean v2, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    .line 153
    iput-boolean v2, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->customAuthenticators:Ljava/util/Hashtable;

    .line 471
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 472
    invoke-virtual {p0, v1}, Lti/modules/titanium/network/TiHTTPClient;->getClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 474
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 477
    :cond_0
    iput v1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    .line 478
    const-string v0, ""

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    .line 480
    iput-boolean v1, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    .line 483
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.httpclient.maxbuffersize"

    const/high16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    .line 485
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    return v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/network/TiHTTPClient;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    return-object v0
.end method

.method static synthetic access$1002(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    return-object p1
.end method

.method static synthetic access$102(Lti/modules/titanium/network/TiHTTPClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    return p1
.end method

.method static synthetic access$1100(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->customAuthenticators:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method static synthetic access$1202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object p1
.end method

.method static synthetic access$1300(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    return-object v0
.end method

.method static synthetic access$1302(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/auth/Credentials;)Lorg/apache/http/auth/Credentials;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    return-object p1
.end method

.method static synthetic access$1400(Lti/modules/titanium/network/TiHTTPClient;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method static synthetic access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    return v0
.end method

.method static synthetic access$2000(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lti/modules/titanium/network/TiHTTPClient;->handleURLEncodedData(Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V

    return-void
.end method

.method static synthetic access$202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    return-object p1
.end method

.method static synthetic access$2100(Lti/modules/titanium/network/TiHTTPClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    return v0
.end method

.method static synthetic access$2200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->host:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$2300(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    return v0
.end method

.method static synthetic access$2400(Lti/modules/titanium/network/TiHTTPClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lti/modules/titanium/network/TiHTTPClient;->deleteTmpFiles()V

    return-void
.end method

.method static synthetic access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    return-object p1
.end method

.method static synthetic access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$602(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$700(Lti/modules/titanium/network/TiHTTPClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    return-wide v0
.end method

.method static synthetic access$800(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    return-void
.end method

.method static synthetic access$902(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    return-object p1
.end method

.method private addTitaniumFileAsPostData(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 11
    .parameter "name"
    .parameter "value"

    .prologue
    .line 929
    :try_start_0
    instance-of v8, p2, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v8, :cond_0

    instance-of v8, p2, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-nez v8, :cond_0

    .line 930
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    move-object v1, v0

    .line 931
    .local v1, baseFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 932
    .local v3, body:Lorg/apache/http/entity/mime/content/FileBody;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    .line 966
    .end local v1           #baseFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v3           #body:Lorg/apache/http/entity/mime/content/FileBody;
    .end local p2
    :goto_0
    return v8

    .line 935
    .restart local p2
    :cond_0
    instance-of v8, p2, Lorg/appcelerator/titanium/TiBlob;

    if-nez v8, :cond_1

    instance-of v8, p2, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-eqz v8, :cond_3

    .line 937
    :cond_1
    instance-of v8, p2, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v8, :cond_2

    .line 938
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    move-object v2, v0

    .line 942
    .end local p2
    .local v2, blob:Lorg/appcelerator/titanium/TiBlob;
    :goto_1
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 943
    .local v6, mimeType:Ljava/lang/String;
    const-string v8, "tixhr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "txt"

    invoke-static {v6, v10}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 944
    .local v7, tmpFile:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 945
    .local v5, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 946
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 948
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v3, v7, v6}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 951
    .restart local v3       #body:Lorg/apache/http/entity/mime/content/FileBody;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getLength()I

    move-result v8

    goto :goto_0

    .line 940
    .end local v2           #blob:Lorg/appcelerator/titanium/TiBlob;
    .end local v3           #body:Lorg/apache/http/entity/mime/content/FileBody;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #tmpFile:Ljava/io/File;
    .restart local p2
    :cond_2
    check-cast p2, Lorg/appcelerator/titanium/io/TiResourceFile;

    .end local p2
    invoke-virtual {p2}, Lorg/appcelerator/titanium/io/TiResourceFile;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    .restart local v2       #blob:Lorg/appcelerator/titanium/TiBlob;
    goto :goto_1

    .line 955
    .end local v2           #blob:Lorg/appcelerator/titanium/TiBlob;
    .restart local p2
    :cond_3
    if-eqz p2, :cond_4

    .line 956
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .end local p2
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 959
    .restart local p2
    :cond_4
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 963
    .end local p2
    :catch_0
    move-exception v4

    .line 964
    .local v4, e:Ljava/io/IOException;
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error adding post data ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private decodeResponseData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "charsetName"

    .prologue
    const/4 v5, 0x0

    .line 531
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 538
    .local v0, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 539
    .local v2, decoder:Ljava/nio/charset/CharsetDecoder;
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 542
    .local v4, in:Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 543
    .local v1, decodedText:Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 550
    .end local v0           #charset:Ljava/nio/charset/Charset;
    .end local v1           #decodedText:Ljava/nio/CharBuffer;
    .end local v2           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v4           #in:Ljava/nio/ByteBuffer;
    :goto_0
    return-object v5

    .line 533
    :catch_0
    move-exception v3

    .line 534
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "TiHttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find charset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #charset:Ljava/nio/charset/Charset;
    .restart local v2       #decoder:Ljava/nio/charset/CharsetDecoder;
    .restart local v4       #in:Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    .line 546
    .local v3, e:Ljava/nio/charset/CharacterCodingException;
    goto :goto_0

    .line 548
    .end local v3           #e:Ljava/nio/charset/CharacterCodingException;
    :catch_2
    move-exception v3

    .line 549
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "TiHttpClient"

    const-string v7, "Not enough memory to decode response data."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteTmpFiles()V
    .locals 3

    .prologue
    .line 1310
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1314
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1315
    .local v1, tmpFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1317
    .end local v1           #tmpFile:Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private detectResponseDataEncoding()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 562
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 563
    const-string v5, "TiHttpClient"

    const-string v6, "Could not detect charset, no content type specified."

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    :goto_0
    return-object v4

    .line 566
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 567
    const-string v2, "encoding=[\"\']([^\"\']*)[\"\']"

    .line 577
    .local v2, regex:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiBlob;->toString()Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, responseSequence:Ljava/lang/CharSequence;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 579
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 580
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 581
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 569
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #pattern:Ljava/util/regex/Pattern;
    .end local v2           #regex:Ljava/lang/String;
    .end local v3           #responseSequence:Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 570
    const-string v2, "charset=([^\"\']*)"

    .restart local v2       #regex:Ljava/lang/String;
    goto :goto_1

    .line 573
    .end local v2           #regex:Ljava/lang/String;
    :cond_3
    const-string v5, "TiHttpClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot detect charset, unknown content type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "name"
    .parameter "data"

    .prologue
    .line 913
    if-nez p2, :cond_0

    .line 914
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 917
    .restart local p2
    :cond_0
    const-string v0, "source"

    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {p2, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollProxy;->callPropertyAsync(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    return-void
.end method

.method private handleURLEncodedData(Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    .locals 7
    .parameter "form"

    .prologue
    .line 1322
    const/4 v1, 0x0

    .line 1323
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1325
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .local v2, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    move-object v1, v2

    .line 1337
    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .restart local v1       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    if-eqz v1, :cond_0

    .line 1338
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 1339
    .local v4, header:Lorg/apache/http/Header;
    if-nez v4, :cond_3

    .line 1340
    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v5}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 1345
    :goto_1
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 1346
    .local v0, e:Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1348
    .end local v0           #e:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v4           #header:Lorg/apache/http/Header;
    :cond_0
    return-void

    .line 1327
    :catch_0
    move-exception v3

    .line 1329
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "TiHttpClient"

    const-string v6, "Exception, implement recovery: "

    invoke-static {v5, v6, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1331
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/Object;

    instance-of v5, v5, Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v5, :cond_2

    .line 1332
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/Object;

    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    check-cast v1, Lorg/apache/http/entity/AbstractHttpEntity;

    .restart local v1       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_0

    .line 1334
    :cond_2
    move-object v1, p1

    goto :goto_0

    .line 1343
    .restart local v4       #header:Lorg/apache/http/Header;
    :cond_3
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private titaniumFileAsPutData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "value"

    .prologue
    .line 971
    instance-of v7, p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v7, :cond_1

    instance-of v7, p1, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-nez v7, :cond_1

    move-object v1, p1

    .line 972
    check-cast v1, Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 973
    .local v1, baseFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance p1, Lorg/apache/http/entity/FileEntity;

    .end local p1
    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v7, v8}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 994
    .end local v1           #baseFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_0
    :goto_0
    return-object p1

    .line 974
    .restart local p1
    :cond_1
    instance-of v7, p1, Lorg/appcelerator/titanium/TiBlob;

    if-nez v7, :cond_2

    instance-of v7, p1, Lorg/appcelerator/titanium/io/TiResourceFile;

    if-eqz v7, :cond_0

    .line 977
    :cond_2
    :try_start_0
    instance-of v7, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v7, :cond_3

    .line 978
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    move-object v2, v0

    .line 982
    .local v2, blob:Lorg/appcelerator/titanium/TiBlob;
    :goto_1
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 983
    .local v5, mimeType:Ljava/lang/String;
    const-string v7, "tixhr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "txt"

    invoke-static {v5, v9}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 984
    .local v6, tmpFile:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 985
    .local v4, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 986
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 988
    iget-object v7, p0, Lti/modules/titanium/network/TiHTTPClient;->tmpFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    new-instance v7, Lorg/apache/http/entity/FileEntity;

    invoke-direct {v7, v6, v5}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v7

    goto :goto_0

    .line 980
    .end local v2           #blob:Lorg/appcelerator/titanium/TiBlob;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #tmpFile:Ljava/io/File;
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/io/TiResourceFile;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/appcelerator/titanium/io/TiResourceFile;->read()Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2       #blob:Lorg/appcelerator/titanium/TiBlob;
    goto :goto_1

    .line 990
    .end local v2           #blob:Lorg/appcelerator/titanium/TiBlob;
    :catch_0
    move-exception v3

    .line 991
    .local v3, e:Ljava/io/IOException;
    const-string v7, "TiHttpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error adding put data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 688
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    if-lez v0, :cond_2

    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    .line 691
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 693
    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 695
    :cond_0
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 696
    sput-object v2, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 697
    :cond_1
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_2

    .line 698
    sput-object v2, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 700
    :cond_2
    return-void
.end method

.method public addAuthFactory(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V
    .locals 1
    .parameter "scheme"
    .parameter "theFactory"

    .prologue
    .line 511
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->customAuthenticators:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-void
.end method

.method protected addKeyManager(Ljavax/net/ssl/X509KeyManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 1392
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    return-void
.end method

.method public addPostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 891
    if-nez p2, :cond_0

    .line 892
    const-string p2, ""

    .line 895
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    if-eqz v1, :cond_1

    .line 901
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addTrustManager(Ljavax/net/ssl/X509TrustManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 1397
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    return-void
.end method

.method public clearCookies(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 726
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 727
    .local v1, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 728
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, lower_url:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 731
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 732
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0

    .line 735
    .end local v0           #cookie:Lorg/apache/http/cookie/Cookie;
    :cond_1
    return-void
.end method

.method protected createClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 999
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1000
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1002
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1003
    .local v1, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 1004
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v0, v7}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 1005
    .local v0, connPerRoute:Lorg/apache/http/conn/params/ConnPerRouteBean;
    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 1007
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 1008
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1010
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v4, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v3, v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method

.method public getAllResponseHeaders()Ljava/lang/String;
    .locals 8

    .prologue
    .line 704
    const-string v4, ""

    .line 705
    .local v4, result:Ljava/lang/String;
    iget v6, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    if-eqz v6, :cond_1

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 709
    .local v5, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 710
    .local v1, headers:[Lorg/apache/http/Header;
    array-length v3, v1

    .line 711
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 712
    aget-object v0, v1, v2

    .line 713
    .local v0, h:Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 715
    .end local v0           #h:Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 721
    .end local v1           #headers:[Lorg/apache/http/Header;
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v4
.end method

.method protected getAutoEncodeUrl()Z
    .locals 1

    .prologue
    .line 1377
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    return v0
.end method

.method protected getAutoRedirect()Z
    .locals 1

    .prologue
    .line 1387
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    return v0
.end method

.method protected getClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 9
    .parameter "validating"

    .prologue
    const/16 v8, 0x1bb

    .line 1015
    const/4 v2, 0x0

    .line 1016
    .local v2, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1017
    :cond_0
    const/4 v3, 0x0

    .line 1018
    .local v3, trustManagerArray:[Ljavax/net/ssl/TrustManager;
    const/4 v1, 0x0

    .line 1020
    .local v1, keyManagerArray:[Ljavax/net/ssl/KeyManager;
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1021
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljavax/net/ssl/X509TrustManager;

    .line 1022
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->trustManagers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #trustManagerArray:[Ljavax/net/ssl/TrustManager;
    check-cast v3, [Ljavax/net/ssl/TrustManager;

    .line 1025
    .restart local v3       #trustManagerArray:[Ljavax/net/ssl/TrustManager;
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1026
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljavax/net/ssl/X509KeyManager;

    .line 1027
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->keyManagers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #keyManagerArray:[Ljavax/net/ssl/KeyManager;
    check-cast v1, [Ljavax/net/ssl/KeyManager;

    .line 1031
    .restart local v1       #keyManagerArray:[Ljavax/net/ssl/KeyManager;
    :cond_2
    :try_start_0
    new-instance v2, Lti/modules/titanium/network/TiSocketFactory;

    .end local v2           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-direct {v2, v1, v3}, Lti/modules/titanium/network/TiSocketFactory;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v1           #keyManagerArray:[Ljavax/net/ssl/KeyManager;
    .end local v3           #trustManagerArray:[Ljavax/net/ssl/TrustManager;
    .restart local v2       #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_3
    :goto_0
    if-eqz p1, :cond_7

    .line 1048
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v4, :cond_4

    .line 1049
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->createClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1051
    :cond_4
    if-eqz v2, :cond_6

    .line 1052
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-direct {v5, v6, v2, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1057
    :goto_1
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1070
    :goto_2
    return-object v4

    .line 1032
    .end local v2           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .restart local v1       #keyManagerArray:[Ljavax/net/ssl/KeyManager;
    .restart local v3       #trustManagerArray:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 1033
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "TiHttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating SSLSocketFactory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v2, 0x0

    .restart local v2       #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0

    .line 1037
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #keyManagerArray:[Ljavax/net/ssl/KeyManager;
    .end local v3           #trustManagerArray:[Ljavax/net/ssl/TrustManager;
    :cond_5
    if-nez p1, :cond_3

    .line 1038
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lti/modules/titanium/network/NonValidatingTrustManager;

    invoke-direct {v5}, Lti/modules/titanium/network/NonValidatingTrustManager;-><init>()V

    aput-object v5, v3, v4

    .line 1040
    .restart local v3       #trustManagerArray:[Ljavax/net/ssl/TrustManager;
    :try_start_1
    new-instance v2, Lti/modules/titanium/network/TiSocketFactory;

    .end local v2           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lti/modules/titanium/network/TiSocketFactory;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2       #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0

    .line 1041
    .end local v2           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :catch_1
    move-exception v0

    .line 1042
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "TiHttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating SSLSocketFactory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v2, 0x0

    .restart local v2       #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0

    .line 1055
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #trustManagerArray:[Ljavax/net/ssl/TrustManager;
    :cond_6
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->validatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_1

    .line 1060
    :cond_7
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v4, :cond_8

    .line 1061
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->createClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1063
    :cond_8
    if-eqz v2, :cond_9

    .line 1064
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-direct {v5, v6, v2, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1070
    :goto_3
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto/16 :goto_2

    .line 1068
    :cond_9
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->nonValidatingClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    new-instance v7, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;

    invoke-direct {v7}, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;-><init>()V

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_3
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getReadyState()I
    .locals 1

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 491
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    return v0

    .line 491
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getResponseData()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "headerName"

    .prologue
    .line 749
    const-string v7, ""

    .line 751
    .local v7, result:Ljava/lang/String;
    iget v8, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 752
    const-string v1, ""

    .line 753
    .local v1, delimiter:Ljava/lang/String;
    const/4 v2, 0x1

    .line 756
    .local v2, firstPass:Z
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v8, p1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 757
    .local v4, headers:[Lorg/apache/http/Header;
    move-object v0, v4

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 759
    .local v3, header:Lorg/apache/http/Header;
    if-nez v2, :cond_0

    .line 761
    const-string v1, ", "

    .line 763
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 764
    const/4 v2, 0x0

    .line 757
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 767
    .end local v3           #header:Lorg/apache/http/Header;
    :cond_1
    array-length v8, v4

    if-nez v8, :cond_2

    .line 769
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No value for response header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_2
    return-object v7

    .line 773
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v1           #delimiter:Ljava/lang/String;
    .end local v2           #firstPass:Z
    .end local v4           #headers:[Lorg/apache/http/Header;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "getResponseHeader can only be called when readyState > 1"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 8

    .prologue
    .line 589
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    if-nez v5, :cond_1

    .line 590
    :cond_0
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 623
    :goto_0
    return-object v5

    .line 595
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 596
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-direct {p0, v5}, Lti/modules/titanium/network/TiHTTPClient;->decodeResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 597
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 598
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_0

    .line 604
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/network/TiHTTPClient;->detectResponseDataEncoding()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, detectedCharset:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 606
    const-string v5, "TiHttpClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "detected charset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct {p0, v2}, Lti/modules/titanium/network/TiHTTPClient;->decodeResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 608
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 609
    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    .line 610
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_0

    .line 615
    :cond_3
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->FALLBACK_CHARSETS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 616
    .local v1, charset:Ljava/lang/String;
    invoke-direct {p0, v1}, Lti/modules/titanium/network/TiHTTPClient;->decodeResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 617
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 618
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_0

    .line 615
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 622
    .end local v1           #charset:Ljava/lang/String;
    :cond_5
    const-string v5, "TiHttpClient"

    const-string v6, "Could not decode response text."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResponseXML()Lti/modules/titanium/xml/DocumentProxy;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-object v2

    .line 639
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;

    if-nez v3, :cond_3

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    if-nez v3, :cond_2

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 641
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseText()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 647
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-static {v1, v2}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v1           #text:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;

    goto :goto_0

    .line 650
    .restart local v1       #text:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v1}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 653
    .end local v1           #text:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TiHttpClient"

    const-string v3, "Error parsing XML"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->status:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1362
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "method"
    .parameter "url"

    .prologue
    .line 781
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "open request method="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-nez p2, :cond_0

    .line 785
    const-string v8, "TiHttpClient"

    const-string v9, "Unable to open a null URL"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "URL cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 792
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, lowerCaseUrl:Ljava/lang/String;
    const-string v8, "http://"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "https://"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 794
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 797
    :cond_1
    iget-boolean v8, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    if-eqz v8, :cond_5

    .line 798
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUrl;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    .line 810
    :goto_0
    iget-boolean v8, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    if-eqz v8, :cond_6

    const-string v8, ".*\\?.*\\%\\d\\d.*$"

    invoke-virtual {p2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 811
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    .line 817
    :goto_1
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    .line 818
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, hostString:Ljava/lang/String;
    const/4 v6, -0x1

    .line 833
    .local v6, port:I
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 836
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 837
    .local v3, javaUrl:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 848
    .end local v3           #javaUrl:Ljava/net/URL;
    :goto_2
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Instantiating host with hostString=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', port=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', scheme=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v8, Lorg/apache/http/HttpHost;

    iget-object v9, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v6, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->host:Lorg/apache/http/HttpHost;

    .line 854
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 855
    new-instance v8, Lorg/apache/http/auth/UsernamePasswordCredentials;

    iget-object v9, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    .line 857
    :cond_2
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    if-nez v8, :cond_4

    .line 858
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    check-cast v8, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {v8}, Lti/modules/titanium/network/HTTPClientProxy;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, userName:Ljava/lang/String;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    check-cast v8, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {v8}, Lti/modules/titanium/network/HTTPClientProxy;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, password:Ljava/lang/String;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    check-cast v8, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {v8}, Lti/modules/titanium/network/HTTPClientProxy;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, domain:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 862
    if-nez v5, :cond_3

    const-string v5, ""

    .line 863
    :cond_3
    new-instance v8, Lorg/apache/http/auth/NTCredentials;

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v5, v9, v0}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    .line 872
    .end local v0           #domain:Ljava/lang/String;
    .end local v5           #password:Ljava/lang/String;
    .end local v7           #userName:Ljava/lang/String;
    :cond_4
    :goto_3
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 873
    const-string v9, "User-Agent"

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v10, "userAgent"

    invoke-virtual {v8, v10}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v9, v8}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v8, "twitter.com"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 877
    const-string v8, "X-Requested-With"

    const-string v9, "XMLHttpRequest"

    invoke-virtual {p0, v8, v9}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :goto_4
    return-void

    .line 801
    .end local v2           #hostString:Ljava/lang/String;
    .end local v6           #port:I
    :cond_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 814
    :cond_6
    iput-object p2, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    goto/16 :goto_1

    .line 840
    .restart local v2       #hostString:Ljava/lang/String;
    .restart local v6       #port:I
    :catch_0
    move-exception v1

    .line 841
    .local v1, e:Ljava/net/MalformedURLException;
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error attempting to derive Java url from uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 845
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_7
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v6

    goto/16 :goto_2

    .line 866
    .restart local v0       #domain:Ljava/lang/String;
    .restart local v5       #password:Ljava/lang/String;
    .restart local v7       #userName:Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_4

    .line 867
    if-nez v5, :cond_9

    const-string v5, ""

    .line 868
    :cond_9
    new-instance v8, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v8, v7, v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    goto :goto_3

    .line 880
    .end local v0           #domain:Ljava/lang/String;
    .end local v5           #password:Ljava/lang/String;
    .end local v7           #userName:Ljava/lang/String;
    :cond_a
    const-string v8, "TiHttpClient"

    const-string v9, "Twitter: not sending X-Requested-With header"

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public send(Ljava/lang/Object;)V
    .locals 14
    .parameter "userData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1076
    const/4 v10, 0x0

    iput-boolean v10, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    .line 1079
    const/4 v8, 0x0

    .line 1080
    .local v8, totalLength:I
    const/4 v10, 0x0

    iput-boolean v10, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    .line 1082
    if-eqz p1, :cond_d

    .line 1084
    instance-of v10, p1, Ljava/util/HashMap;

    if-eqz v10, :cond_e

    move-object v0, p1

    .line 1085
    check-cast v0, Ljava/util/HashMap;

    .line 1086
    .local v0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v11, "PUT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_0
    const/4 v4, 0x1

    .line 1087
    .local v4, isPostOrPut:Z
    :goto_0
    if-nez v4, :cond_9

    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v3, 0x1

    .line 1090
    .local v3, isGet:Z
    :goto_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1091
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1093
    .local v9, value:Ljava/lang/Object;
    if-eqz v9, :cond_1

    .line 1095
    instance-of v10, v9, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v10, :cond_2

    .line 1096
    check-cast v9, Lorg/appcelerator/titanium/TiFileProxy;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v9

    .line 1099
    :cond_2
    instance-of v10, v9, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v10, :cond_3

    instance-of v10, v9, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v10, :cond_1

    .line 1100
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    .line 1106
    .end local v5           #key:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 1107
    .local v6, queryStringAltered:Z
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1108
    .restart local v5       #key:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1109
    .restart local v9       #value:Ljava/lang/Object;
    if-eqz v4, :cond_b

    if-eqz v9, :cond_b

    .line 1111
    instance-of v10, v9, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v10, :cond_6

    .line 1112
    check-cast v9, Lorg/appcelerator/titanium/TiFileProxy;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v9

    .line 1115
    :cond_6
    instance-of v10, v9, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v10, :cond_7

    instance-of v10, v9, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v10, :cond_a

    .line 1116
    :cond_7
    invoke-direct {p0, v5, v9}, Lti/modules/titanium/network/TiHTTPClient;->addTitaniumFileAsPostData(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 1086
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isGet:Z
    .end local v4           #isPostOrPut:Z
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #queryStringAltered:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_0

    .line 1087
    .restart local v4       #isPostOrPut:Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_1

    .line 1119
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isGet:Z
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #queryStringAltered:Z
    :cond_a
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1120
    .local v7, str:Ljava/lang/String;
    invoke-virtual {p0, v5, v7}, Lti/modules/titanium/network/TiHTTPClient;->addPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    .line 1122
    goto :goto_2

    .line 1124
    .end local v7           #str:Ljava/lang/String;
    .restart local v9       #value:Ljava/lang/Object;
    :cond_b
    if-eqz v3, :cond_5

    .line 1125
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    .line 1127
    const/4 v6, 0x1

    goto :goto_2

    .line 1131
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/Object;
    :cond_c
    if-eqz v6, :cond_d

    .line 1132
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    .line 1149
    .end local v0           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isGet:Z
    .end local v4           #isPostOrPut:Z
    .end local v6           #queryStringAltered:Z
    :cond_d
    :goto_3
    const-string v10, "TiHttpClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiating http request with method=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' and this url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v10, "TiHttpClient"

    iget-object v11, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    new-instance v10, Lorg/apache/http/impl/DefaultHttpRequestFactory;

    invoke-direct {v10}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    iget-object v11, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    iget-object v12, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object v10

    iput-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    .line 1153
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1154
    .local v1, header:Ljava/lang/String;
    iget-object v11, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v11, v1, v10}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1134
    .end local v1           #header:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_e
    instance-of v10, p1, Lorg/appcelerator/titanium/TiFileProxy;

    if-nez v10, :cond_f

    instance-of v10, p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v10, :cond_f

    instance-of v10, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v10, :cond_13

    .line 1135
    :cond_f
    move-object v9, p1

    .line 1136
    .restart local v9       #value:Ljava/lang/Object;
    instance-of v10, v9, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v10, :cond_10

    .line 1137
    check-cast v9, Lorg/appcelerator/titanium/TiFileProxy;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v9

    .line 1139
    :cond_10
    instance-of v10, v9, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v10, :cond_11

    instance-of v10, v9, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v10, :cond_12

    .line 1140
    :cond_11
    invoke-direct {p0, v9}, Lti/modules/titanium/network/TiHTTPClient;->titaniumFileAsPutData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10}, Lti/modules/titanium/network/TiHTTPClient;->setRawData(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1142
    :cond_12
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lti/modules/titanium/network/TiHTTPClient;->setRawData(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1145
    :cond_13
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lti/modules/titanium/network/TiHTTPClient;->setRawData(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1157
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_14
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    invoke-direct {v11, p0, v8}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;-><init>(Lti/modules/titanium/network/TiHTTPClient;I)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TiHttpClient-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    .line 1158
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setPriority(I)V

    .line 1159
    iget-object v10, p0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 1161
    const-string v10, "TiHttpClient"

    const-string v11, "Leaving send()"

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return-void
.end method

.method protected setAutoEncodeUrl(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1372
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    .line 1373
    return-void
.end method

.method protected setAutoRedirect(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1382
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->autoRedirect:Z

    .line 1383
    return-void
.end method

.method public setRawData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 886
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/Object;

    .line 887
    return-void
.end method

.method public setReadyState(I)V
    .locals 5
    .parameter "readyState"

    .prologue
    const/4 v4, 0x0

    .line 516
    const-string v1, "TiHttpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting ready state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    .line 519
    const-string v1, "onreadystatechange"

    invoke-direct {p0, v1, v4}, Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 521
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 522
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 523
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 524
    const-string v1, "onload"

    invoke-direct {p0, v1, v0}, Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 526
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "header"
    .parameter "value"

    .prologue
    .line 739
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 740
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    return-void

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRequestHeader can only be called before invoking send."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResponseText(Ljava/lang/String;)V
    .locals 0
    .parameter "responseText"

    .prologue
    .line 663
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 664
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 673
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->status:I

    .line 674
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .parameter "statusText"

    .prologue
    .line 683
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->statusText:Ljava/lang/String;

    .line 684
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "millis"

    .prologue
    .line 1367
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    .line 1368
    return-void
.end method

.method public validatesSecureCertificate()Z
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "validatesSecureCertificate"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "validatesSecureCertificate"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    :goto_0
    return v0

    .line 501
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const/4 v0, 0x1

    goto :goto_0

    .line 506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
