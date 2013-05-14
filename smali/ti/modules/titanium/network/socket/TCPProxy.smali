.class public Lti/modules/titanium/network/socket/TCPProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TCPProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/io/TiStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;,
        Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TCPProxy"


# instance fields
.field private acceptOptions:Lorg/appcelerator/kroll/KrollDict;

.field private accepting:Z

.field private clientSocket:Ljava/net/Socket;

.field private inputStream:Ljava/io/InputStream;

.field private serverSocket:Ljava/net/ServerSocket;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 34
    iput-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    .line 35
    iput-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;

    .line 36
    iput-boolean v1, p0, Lti/modules/titanium/network/socket/TCPProxy;->accepting:Z

    .line 37
    iput-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->acceptOptions:Lorg/appcelerator/kroll/KrollDict;

    .line 38
    iput v1, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    .line 39
    iput-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->inputStream:Ljava/io/InputStream;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 50
    invoke-direct {p0}, Lti/modules/titanium/network/socket/TCPProxy;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/network/socket/TCPProxy;)Ljava/net/Socket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$002(Lti/modules/titanium/network/socket/TCPProxy;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$100(Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lti/modules/titanium/network/socket/TCPProxy;->buildConnectedCallbackArgs()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/network/socket/TCPProxy;Ljava/lang/String;I)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/network/socket/TCPProxy;->buildErrorCallbackArgs(Ljava/lang/String;I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/network/socket/TCPProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->accepting:Z

    return v0
.end method

.method static synthetic access$302(Lti/modules/titanium/network/socket/TCPProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lti/modules/titanium/network/socket/TCPProxy;->accepting:Z

    return p1
.end method

.method static synthetic access$400(Lti/modules/titanium/network/socket/TCPProxy;)Ljava/net/ServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->acceptOptions:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/network/socket/TCPProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    return v0
.end method

.method static synthetic access$602(Lti/modules/titanium/network/socket/TCPProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    return p1
.end method

.method static synthetic access$700(Lti/modules/titanium/network/socket/TCPProxy;Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lti/modules/titanium/network/socket/TCPProxy;->buildAcceptedCallbackArgs(Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method private buildAcceptedCallbackArgs(Lti/modules/titanium/network/socket/TCPProxy;)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .parameter "acceptedTcpProxy"

    .prologue
    .line 306
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 307
    .local v0, callbackArgs:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "socket"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "inbound"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-object v0
.end method

.method private buildConnectedCallbackArgs()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 289
    .local v0, callbackArgs:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "socket"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-object v0
.end method

.method private buildErrorCallbackArgs(Ljava/lang/String;I)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .parameter "error"
    .parameter "errorCode"

    .prologue
    .line 296
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 297
    .local v0, callbackArgs:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "socket"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {v0, p2, p1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 299
    const-string v1, "errorCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-object v0
.end method

.method private closeSocket()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 117
    iput-object v1, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    .line 120
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 122
    iput-object v1, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;

    .line 124
    :cond_1
    return-void
.end method

.method private setSocketProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    .line 177
    iget v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/network/socket/TCPProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v0, "TCPProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set property <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> on socket in <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "acceptOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    iget v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Socket is not listening, unable to call accept"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/network/socket/TCPProxy;->acceptOptions:Lorg/appcelerator/kroll/KrollDict;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->accepting:Z

    .line 112
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iget v1, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 488
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket is not connected or listening, unable to call close on socket in <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    .line 493
    invoke-direct {p0}, Lti/modules/titanium/network/socket/TCPProxy;->closeSocket()V

    .line 494
    const/4 v1, 0x4

    iput v1, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 498
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error occured when closing socket"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget v2, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget v2, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 57
    const-string v2, "host"

    invoke-virtual {p0, v2}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, host:Ljava/lang/Object;
    const-string v2, "port"

    invoke-virtual {p0, v2}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, port:Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 60
    new-instance v2, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;

    invoke-direct {v2, p0}, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;-><init>(Lti/modules/titanium/network/socket/TCPProxy;)V

    invoke-virtual {v2}, Lti/modules/titanium/network/socket/TCPProxy$ConnectedSocketThread;->start()V

    .line 69
    return-void

    .line 63
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to call connect, socket must have a valid host and port"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    .end local v0           #host:Ljava/lang/Object;
    .end local v1           #port:Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call connect on socket in <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0}, Lti/modules/titanium/network/socket/TCPProxy;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Lti/modules/titanium/network/socket/TCPProxy;->isConnected()Z

    move-result v0

    return v0
.end method

.method public listen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 74
    iget v3, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 75
    const-string v3, "port"

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, port:Ljava/lang/Object;
    const-string v3, "listenQueueSize"

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, listenQueueSize:Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v3, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;

    .line 89
    :goto_0
    new-instance v3, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;

    invoke-direct {v3, p0}, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;-><init>(Lti/modules/titanium/network/socket/TCPProxy;)V

    invoke-virtual {v3}, Lti/modules/titanium/network/socket/TCPProxy$ListeningSocketThread;->start()V

    .line 90
    const/4 v3, 0x3

    iput v3, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    .line 101
    return-void

    .line 82
    :cond_0
    if-eqz v2, :cond_1

    .line 83
    new-instance v3, Ljava/net/ServerSocket;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    const/4 v3, 0x5

    iput v3, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    .line 95
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unable to listen, IO error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    iput-object v3, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    .end local v1           #listenQueueSize:Ljava/lang/Object;
    .end local v2           #port:Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call listen on socket in <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public read([Ljava/lang/Object;)I
    .locals 9
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 352
    invoke-virtual {p0}, Lti/modules/titanium/network/socket/TCPProxy;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 353
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from socket, not connected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 356
    :cond_0
    const/4 v0, 0x0

    .line 357
    .local v0, bufferProxy:Lti/modules/titanium/BufferProxy;
    const/4 v3, 0x0

    .line 358
    .local v3, offset:I
    const/4 v2, 0x0

    .line 360
    .local v2, length:I
    array-length v4, p1

    if-eq v4, v5, :cond_1

    array-length v4, p1

    if-ne v4, v8, :cond_a

    .line 361
    :cond_1
    array-length v4, p1

    if-lez v4, :cond_2

    .line 362
    aget-object v4, p1, v7

    instance-of v4, v4, Lti/modules/titanium/BufferProxy;

    if-eqz v4, :cond_5

    .line 363
    aget-object v0, p1, v7

    .end local v0           #bufferProxy:Lti/modules/titanium/BufferProxy;
    check-cast v0, Lti/modules/titanium/BufferProxy;

    .line 364
    .restart local v0       #bufferProxy:Lti/modules/titanium/BufferProxy;
    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v2

    .line 371
    :cond_2
    array-length v4, p1

    if-ne v4, v8, :cond_3

    .line 372
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 373
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 382
    :goto_0
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 383
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 397
    :cond_3
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy;->inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_4

    .line 398
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy;->inputStream:Ljava/io/InputStream;

    .line 402
    :cond_4
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy;->inputStream:Ljava/io/InputStream;

    invoke-static {v4, v0, v3, v2}, Lorg/appcelerator/titanium/util/TiStreamHelper;->read(Ljava/io/InputStream;Lti/modules/titanium/BufferProxy;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 367
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid buffer argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 375
    :cond_6
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_7

    .line 376
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_0

    .line 379
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid offset argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 385
    :cond_8
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_9

    .line 386
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_1

    .line 389
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid length argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 394
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid number of arguments"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 406
    invoke-direct {p0}, Lti/modules/titanium/network/socket/TCPProxy;->closeSocket()V

    .line 407
    const/4 v4, 0x5

    const-string v5, "error"

    const-string v6, "Unable to read from socket, IO error"

    invoke-direct {p0, v6, v7}, Lti/modules/titanium/network/socket/TCPProxy;->buildErrorCallbackArgs(Ljava/lang/String;I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->updateState(ILjava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 408
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to read from socket, IO error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setAccepted(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .parameter "accepted"

    .prologue
    .line 172
    const-string v0, "accepted"

    invoke-direct {p0, v0, p1}, Lti/modules/titanium/network/socket/TCPProxy;->setSocketProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public setConnected(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 160
    const-string v0, "connected"

    invoke-direct {p0, v0, p1}, Lti/modules/titanium/network/socket/TCPProxy;->setSocketProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public setError(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 166
    const-string v0, "error"

    invoke-direct {p0, v0, p1}, Lti/modules/titanium/network/socket/TCPProxy;->setSocketProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 129
    const-string v0, "host"

    invoke-direct {p0, v0, p1}, Lti/modules/titanium/network/socket/TCPProxy;->setSocketProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public setListenQueueSize(I)V
    .locals 2
    .parameter "listenQueueSize"

    .prologue
    .line 154
    const-string v0, "listenQueueSize"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/network/socket/TCPProxy;->setSocketProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public setOptions(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 148
    const-string v0, "TCPProxy"

    const-string v1, "setting options on socket is not supported yet"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public setPort(I)V
    .locals 2
    .parameter "port"

    .prologue
    .line 135
    const-string v0, "port"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/network/socket/TCPProxy;->setSocketProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 141
    const-string v0, "timeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/network/socket/TCPProxy;->setSocketProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public updateState(ILjava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "state"
    .parameter "callbackName"
    .parameter "callbackArgs"

    .prologue
    .line 315
    iput p1, p0, Lti/modules/titanium/network/socket/TCPProxy;->state:I

    .line 317
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 319
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 323
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lti/modules/titanium/network/socket/TCPProxy;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lti/modules/titanium/network/socket/TCPProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, callback:Ljava/lang/Object;
    instance-of v2, v0, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_2

    .line 334
    check-cast v0, Lorg/appcelerator/kroll/KrollFunction;

    .end local v0           #callback:Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/network/socket/TCPProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 336
    :cond_2
    return-void

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, e:Ljava/io/IOException;
    const-string v2, "TCPProxy"

    const-string v3, "Unable to close socket in error state"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public write([Ljava/lang/Object;)I
    .locals 9
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 415
    invoke-virtual {p0}, Lti/modules/titanium/network/socket/TCPProxy;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 417
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to write to socket, not connected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 421
    .local v0, bufferProxy:Lti/modules/titanium/BufferProxy;
    const/4 v3, 0x0

    .line 422
    .local v3, offset:I
    const/4 v2, 0x0

    .line 424
    .local v2, length:I
    array-length v4, p1

    if-eq v4, v5, :cond_1

    array-length v4, p1

    if-ne v4, v8, :cond_9

    .line 425
    :cond_1
    array-length v4, p1

    if-lez v4, :cond_2

    .line 426
    aget-object v4, p1, v7

    instance-of v4, v4, Lti/modules/titanium/BufferProxy;

    if-eqz v4, :cond_4

    .line 427
    aget-object v0, p1, v7

    .end local v0           #bufferProxy:Lti/modules/titanium/BufferProxy;
    check-cast v0, Lti/modules/titanium/BufferProxy;

    .line 428
    .restart local v0       #bufferProxy:Lti/modules/titanium/BufferProxy;
    invoke-virtual {v0}, Lti/modules/titanium/BufferProxy;->getLength()I

    move-result v2

    .line 435
    :cond_2
    array-length v4, p1

    if-ne v4, v8, :cond_3

    .line 436
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 437
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 446
    :goto_0
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 447
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 462
    :cond_3
    :goto_1
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/network/socket/TCPProxy;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-static {v4, v0, v3, v2}, Lorg/appcelerator/titanium/util/TiStreamHelper;->write(Ljava/io/OutputStream;Lti/modules/titanium/BufferProxy;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 431
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid buffer argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 439
    :cond_5
    aget-object v4, p1, v5

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_6

    .line 440
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    goto :goto_0

    .line 443
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid offset argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 449
    :cond_7
    aget-object v4, p1, v6

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_8

    .line 450
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_1

    .line 453
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid length argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 458
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid number of arguments"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 466
    invoke-direct {p0}, Lti/modules/titanium/network/socket/TCPProxy;->closeSocket()V

    .line 467
    const/4 v4, 0x5

    const-string v5, "error"

    const-string v6, "Unable to write to socket, IO error"

    invoke-direct {p0, v6, v7}, Lti/modules/titanium/network/socket/TCPProxy;->buildErrorCallbackArgs(Ljava/lang/String;I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lti/modules/titanium/network/socket/TCPProxy;->updateState(ILjava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 468
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to write to socket, IO error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
