.class public Lorg/appcelerator/kroll/common/TiFastDev;
.super Ljava/lang/Object;
.source "TiFastDev.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/common/TiFastDev$Session;
    }
.end annotation


# static fields
.field public static final COMMAND_EXISTS:Ljava/lang/String; = "exists"

.field public static final COMMAND_GET:Ljava/lang/String; = "get"

.field public static final COMMAND_HANDSHAKE:Ljava/lang/String; = "handshake"

.field public static final COMMAND_KILL:Ljava/lang/String; = "kill"

.field public static final COMMAND_LENGTH:Ljava/lang/String; = "length"

.field public static final COMMAND_RESTART:Ljava/lang/String; = "restart"

.field public static final COMMAND_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final EMULATOR_HOST:Ljava/lang/String; = "10.0.2.2"

.field private static final FASTDEV_PORT:I = 0x1f3f

.field public static final MAX_TOKEN_COUNT:I = 0x10

.field public static final RESULT_OK:Ljava/lang/String; = "OK"

.field private static final TAG:Ljava/lang/String; = "TiFastDev"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "tifastdev"

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = "tmp"

#the value of this static final field might be set in the static constructor
.field private static final TRACE:Z = false

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static _instance:Lorg/appcelerator/kroll/common/TiFastDev;


# instance fields
.field protected appGuid:Ljava/lang/String;

.field protected enabled:Z

.field protected fastDevSocket:Ljava/net/Socket;

.field protected listen:Z

.field protected port:I

.field protected restarting:Z

.field protected session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

.field protected tempHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

.field protected urlPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "TiFastDev"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiFastDev;->TRACE:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollApplication;)V
    .locals 4
    .parameter "app"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    iput-boolean v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->listen:Z

    .line 68
    const/4 v2, -0x1

    iput v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    .line 72
    iput-boolean v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->restarting:Z

    .line 87
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 95
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 96
    .local v1, policy:Landroid/os/StrictMode$ThreadPolicy$Builder;
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 99
    .end local v1           #policy:Landroid/os/StrictMode$ThreadPolicy$Builder;
    :cond_2
    invoke-interface {p1}, Lorg/appcelerator/kroll/KrollApplication;->getAppGUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->appGuid:Ljava/lang/String;

    .line 100
    invoke-interface {p1}, Lorg/appcelerator/kroll/KrollApplication;->getTempFileHelper()Lorg/appcelerator/kroll/util/TiTempFileHelper;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->tempHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    .line 101
    invoke-interface {p1}, Lorg/appcelerator/kroll/KrollApplication;->isFastDevMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-interface {p1}, Lorg/appcelerator/kroll/KrollApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v0

    .line 106
    .local v0, deployData:Lorg/appcelerator/kroll/common/TiDeployData;
    if-eqz v0, :cond_0

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    .line 111
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->readDeployData(Lorg/appcelerator/kroll/common/TiDeployData;)V

    .line 113
    iget-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 114
    new-instance v2, Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-direct {v2, p0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;-><init>(Lorg/appcelerator/kroll/common/TiFastDev;)V

    iput-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    .line 115
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->executeHandshake()V

    .line 116
    iget-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->start()V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiFastDev;->TRACE:Z

    return v0
.end method

.method public static getInstance()Lorg/appcelerator/kroll/common/TiFastDev;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    return-object v0
.end method

.method public static initFastDev(Lorg/appcelerator/kroll/KrollApplication;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 77
    new-instance v0, Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-direct {v0, p0}, Lorg/appcelerator/kroll/common/TiFastDev;-><init>(Lorg/appcelerator/kroll/KrollApplication;)V

    sput-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    .line 78
    return-void
.end method

.method public static isFastDevEnabled()Z
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/common/TiFastDev;-><init>(Lorg/appcelerator/kroll/KrollApplication;)V

    sput-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    .line 251
    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiFastDev;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-boolean v0, v0, Lorg/appcelerator/kroll/common/TiFastDev;->restarting:Z

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/appcelerator/kroll/common/TiFastDev;->restarting:Z

    .line 269
    :goto_0
    return-void

    .line 263
    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v0, v0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    if-eqz v0, :cond_1

    .line 264
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    iget-object v0, v0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->close()V

    .line 265
    sget-object v0, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    iput-object v1, v0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    .line 268
    :cond_1
    sput-object v1, Lorg/appcelerator/kroll/common/TiFastDev;->_instance:Lorg/appcelerator/kroll/common/TiFastDev;

    goto :goto_0
.end method


# virtual methods
.method protected acceptConnection()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x1f3f

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    .line 142
    .local v1, server:Ljava/net/ServerSocket;
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1           #server:Ljava/net/ServerSocket;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TiFastDev"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    .line 147
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->showDisabledWarning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected connect()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    const-string v2, "10.0.2.2"

    iget v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->fastDevSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TiFastDev"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    .line 159
    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->showDisabledWarning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    iget-object v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "exists"

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendMessage([Ljava/lang/String;)[[B

    move-result-object v0

    .line 201
    .local v0, result:[[B
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 202
    iget-object v3, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->toInt([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 205
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 202
    goto :goto_0

    :cond_1
    move v1, v2

    .line 205
    goto :goto_0
.end method

.method public getLength(Ljava/lang/String;)I
    .locals 5
    .parameter "relativePath"

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "length"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendMessage([Ljava/lang/String;)[[B

    move-result-object v0

    .line 191
    .local v0, result:[[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 192
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->toInt([B)I

    move-result v1

    .line 195
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    return v0
.end method

.method public openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 12
    .parameter "relativePath"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 210
    iget-object v7, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    monitor-enter v7

    .line 211
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z

    .line 212
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "get"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->sendTokens([Ljava/lang/String;)Z

    .line 214
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readTokenCount()I

    move-result v4

    .line 215
    .local v4, tokenCount:I
    if-ge v4, v11, :cond_0

    .line 216
    monitor-exit v7

    .line 242
    :goto_0
    return-object v5

    .line 219
    :cond_0
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->readInt()I

    move-result v1

    .line 220
    .local v1, length:I
    if-gtz v1, :cond_1

    .line 221
    monitor-exit v7

    goto :goto_0

    .line 241
    .end local v1           #length:I
    .end local v4           #tokenCount:I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 227
    .restart local v1       #length:I
    .restart local v4       #tokenCount:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->tempHelper:Lorg/appcelerator/kroll/util/TiTempFileHelper;

    const-string v8, "tifastdev"

    const-string v9, "tmp"

    invoke-virtual {v6, v8, v9}, Lorg/appcelerator/kroll/util/TiTempFileHelper;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 228
    .local v2, tempFile:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 229
    .local v3, tempOut:Ljava/io/FileOutputStream;
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/TiFastDev$Session;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v3, v1}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->pumpCount(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 230
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 232
    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiFastDev;->session:Lorg/appcelerator/kroll/common/TiFastDev$Session;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lorg/appcelerator/kroll/common/TiFastDev$Session;->checkingForMessage:Z

    .line 233
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    monitor-exit v7

    move-object v5, v6

    goto :goto_0

    .line 235
    .end local v2           #tempFile:Ljava/io/File;
    .end local v3           #tempOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "TiFastDev"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    monitor-exit v7

    goto :goto_0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    .local v0, e:Ljava/io/IOException;
    const-string v6, "TiFastDev"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected readDeployData(Lorg/appcelerator/kroll/common/TiDeployData;)V
    .locals 3
    .parameter "deployData"

    .prologue
    .line 122
    invoke-virtual {p1}, Lorg/appcelerator/kroll/common/TiDeployData;->getFastDevPort()I

    move-result v0

    iput v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    .line 123
    invoke-virtual {p1}, Lorg/appcelerator/kroll/common/TiDeployData;->getFastDevListen()Z

    move-result v0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->listen:Z

    .line 125
    iget-boolean v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->listen:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "TiFastDev"

    const-string v1, "Enabling Fastdev in listening mode..."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev;->acceptConnection()V

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    iget v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 130
    const-string v0, "TiFastDev"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling Fastdev on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/appcelerator/kroll/common/TiFastDev;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lorg/appcelerator/kroll/common/TiFastDev;->connect()V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/common/TiFastDev;->enabled:Z

    goto :goto_0
.end method

.method protected showDisabledWarning(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: FastDev mode is disabled. Error Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->showToast(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 166
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 169
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    .line 170
    .local v1, kRuntime:Lorg/appcelerator/kroll/KrollRuntime;
    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v3

    invoke-interface {v3}, Lorg/appcelerator/kroll/KrollApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 172
    .local v0, ctx:Landroid/content/Context;
    const/4 v3, 0x1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 173
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 176
    .end local v0           #ctx:Landroid/content/Context;
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_1
    return-void
.end method

.method public toURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "relativePath"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiFastDev;->urlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
