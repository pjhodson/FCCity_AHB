.class public Lorg/appcelerator/titanium/profiler/TiProfiler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Lorg/appcelerator/titanium/profiler/TiProfiler;


# instance fields
.field private b:Z

.field private c:Ljava/nio/channels/SocketChannel;

.field private d:Ljava/nio/channels/Selector;

.field private e:Ljava/util/concurrent/CountDownLatch;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/util/concurrent/CountDownLatch;

.field private h:Z

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/profiler/TiProfiler;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->b:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->e:Ljava/util/concurrent/CountDownLatch;

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->g:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v1, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->h:Z

    const/16 v0, 0x9

    iput v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->i:I

    iput-boolean v2, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->j:Z

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-string v0, "tiprofiler"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/appcelerator/titanium/profiler/TiProfiler;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->g:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TiProfiler"

    const-string v1, "Stopping profiler"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->b:Z

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TiProfiler"

    const-string v2, "Socket close error"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lorg/appcelerator/titanium/profiler/e;

    invoke-direct {v1, p0, p1, v0}, Lorg/appcelerator/titanium/profiler/e;-><init>(Lorg/appcelerator/titanium/profiler/TiProfiler;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnRuntime(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TiProfiler"

    const-string v2, "Operation wait interrupted"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TiProfiler"

    const-string v1, "Timed out waiting for profiler to return from operation."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TiProfiler"

    const-string v2, "Error sending profiler data."

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()Ljava/util/Set;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->d:Ljava/nio/channels/Selector;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "TiProfiler"

    const-string v1, "IO thread interrupted during select."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TiProfiler"

    const-string v2, "Error occured during select."

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a()V

    goto :goto_1
.end method

.method private c()V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object v2, v1, v5

    new-instance v2, Lorg/appcelerator/titanium/profiler/f;

    invoke-direct {v2, p0, v1, v0}, Lorg/appcelerator/titanium/profiler/f;-><init>(Lorg/appcelerator/titanium/profiler/TiProfiler;[Ljava/nio/ByteBuffer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnRuntime(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3c

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TiProfiler"

    const-string v1, "Timed out waiting for profiler to return data."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TiProfiler"

    const-string v2, "Data wait interrupted"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    aget-object v0, v1, v5

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public static native cpuSamples()Ljava/nio/ByteBuffer;
.end method

.method public static native gc()V
.end method

.method public static startProfiler()V
    .locals 5

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiDeployData;->isProfilerEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "TiProfiler"

    const-string v2, "Starting profiler"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/appcelerator/titanium/profiler/TiProfiler;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    if-nez v1, :cond_0

    new-instance v1, Lorg/appcelerator/titanium/profiler/TiProfiler;

    invoke-direct {v1}, Lorg/appcelerator/titanium/profiler/TiProfiler;-><init>()V

    sput-object v1, Lorg/appcelerator/titanium/profiler/TiProfiler;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    :try_start_0
    sget-object v1, Lorg/appcelerator/titanium/profiler/TiProfiler;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiDeployData;->getProfilerPort()I

    move-result v0

    const-string v2, "TiProfiler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Waiting for profiler to connect to port "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v2

    const-string v3, "java.net.preferIPv4Stack"

    const-string v4, "true"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "java.net.preferIPv6Addresses"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v3

    iput-object v3, v1, Lorg/appcelerator/titanium/profiler/TiProfiler;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, v1, Lorg/appcelerator/titanium/profiler/TiProfiler;->d:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    invoke-virtual {v2, v0, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    new-instance v0, Ljava/lang/Thread;

    const-string v2, "TiProfiler"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, v1, Lorg/appcelerator/titanium/profiler/TiProfiler;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TiProfiler"

    const-string v1, "Timed out waiting for profiler."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TiProfiler"

    const-string v2, "Connection error"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v0, "TiProfiler"

    const-string v2, "Profiler session started."

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lorg/appcelerator/titanium/profiler/TiProfiler;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TiProfiler"

    const-string v2, "Connection interrupted"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static native startProfiling()V
.end method

.method public static stopProfiler()V
    .locals 1

    sget-object v0, Lorg/appcelerator/titanium/profiler/TiProfiler;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/appcelerator/titanium/profiler/TiProfiler;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    invoke-direct {v0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a()V

    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/profiler/TiProfiler;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    :cond_0
    return-void
.end method

.method public static native stopProfiling()V
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->b:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->b()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->d:Ljava/nio/channels/Selector;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move v0, v1

    :goto_2
    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->c:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :goto_3
    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    :cond_4
    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->i:I

    if-lt v3, v0, :cond_5

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    add-int/lit8 v6, v0, 0x9

    if-le v6, v3, :cond_8

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :cond_5
    move v0, v2

    :goto_4
    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v0, v2

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_3

    :cond_8
    const-string v3, "TiProfiler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RECEIVED COMMAND "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string v3, "TiProfiler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown command "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_a

    iget-object v5, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    add-int/lit8 v0, v0, -0x2

    sparse-switch v3, :sswitch_data_0

    const-string v5, "TiProfiler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown control option "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_0
    iget-boolean v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->j:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->j:Z

    new-instance v3, Lorg/appcelerator/titanium/profiler/a;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/profiler/a;-><init>(Lorg/appcelerator/titanium/profiler/TiProfiler;)V

    const-wide/16 v5, 0x0

    invoke-direct {p0, v3, v5, v6}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a(Ljava/lang/Runnable;J)V

    goto :goto_5

    :sswitch_1
    iget-boolean v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->j:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->j:Z

    new-instance v3, Lorg/appcelerator/titanium/profiler/b;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/profiler/b;-><init>(Lorg/appcelerator/titanium/profiler/TiProfiler;)V

    const-wide/16 v5, 0x0

    invoke-direct {p0, v3, v5, v6}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a(Ljava/lang/Runnable;J)V

    goto :goto_5

    :sswitch_2
    iget-boolean v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->h:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->h:Z

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->g:Ljava/util/concurrent/CountDownLatch;

    new-instance v3, Lorg/appcelerator/titanium/profiler/c;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/profiler/c;-><init>(Lorg/appcelerator/titanium/profiler/TiProfiler;)V

    invoke-static {v3}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnRuntime(Ljava/lang/Runnable;)V

    goto :goto_5

    :sswitch_3
    iget-boolean v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->h:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->h:Z

    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_5

    :pswitch_2
    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    iget-object v3, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    add-int/lit8 v0, v0, -0x6

    invoke-direct {p0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->c()V

    goto/16 :goto_5

    :pswitch_3
    new-instance v3, Lorg/appcelerator/titanium/profiler/d;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/profiler/d;-><init>(Lorg/appcelerator/titanium/profiler/TiProfiler;)V

    const-wide/16 v5, 0x3c

    invoke-direct {p0, v3, v5, v6}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    :pswitch_4
    invoke-direct {p0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_5

    :pswitch_5
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v3, v5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_5

    :cond_a
    const/16 v0, 0x9

    iput v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->i:I

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/TiProfiler;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method
