.class public abstract Lti/modules/titanium/debug/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/appcelerator/kroll/KrollLogging$LogListener;


# instance fields
.field protected final a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/Thread;

.field private volatile c:Z

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Ljava/nio/channels/Selector;

.field private f:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/debug/b;->c:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/debug/b;->d:Ljava/util/concurrent/CountDownLatch;

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a()Lti/modules/titanium/debug/b;
    .locals 1

    new-instance v0, Lti/modules/titanium/debug/rhino/j;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/j;-><init>()V

    return-object v0
.end method

.method private f()Ljava/util/Set;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/debug/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/debug/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "DebugSession"

    const-string v1, "IO thread interrupted during select."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lti/modules/titanium/debug/b;->b()Z

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DebugSession"

    const-string v2, "Error occured during select."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lti/modules/titanium/debug/b;->b()Z

    goto :goto_1
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/debug/b;->f:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DebugSession"

    const-string v2, "Error sending debugger data."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Ljava/nio/channels/SocketChannel;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "DebugSession"

    const-string v3, "Debug session starting..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lti/modules/titanium/debug/b;->f:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lti/modules/titanium/debug/b;->f:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "DebugSession"

    const-string v2, "Cannot start session, debugger channel not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    const-string v2, "java.net.preferIPv4Stack"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "java.net.preferIPv6Addresses"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/debug/b;->e:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lti/modules/titanium/debug/b;->f:Ljava/nio/channels/SocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v2, p0, Lti/modules/titanium/debug/b;->f:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lti/modules/titanium/debug/b;->e:Ljava/nio/channels/Selector;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-static {}, Lorg/appcelerator/kroll/KrollLogging;->getDefault()Lorg/appcelerator/kroll/KrollLogging;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/appcelerator/kroll/KrollLogging;->setLogListener(Lorg/appcelerator/kroll/KrollLogging$LogListener;)V

    new-instance v2, Ljava/lang/Thread;

    const-string v3, "DebugSession"

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lti/modules/titanium/debug/b;->b:Ljava/lang/Thread;

    iput-boolean v1, p0, Lti/modules/titanium/debug/b;->c:Z

    iget-object v2, p0, Lti/modules/titanium/debug/b;->b:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string v2, "DebugSession"

    const-string v3, "Waiting for debugger..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v2, p0, Lti/modules/titanium/debug/b;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "DebugSession"

    const-string v2, "Timed out waiting for debugger."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "DebugSession"

    const-string v2, "Interrupted while waiting for debugger."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "DebugSession"

    const-string v3, "Error configuring selector."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "DebugSession"

    const-string v4, "Error configuring debugger channel."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string v0, "DebugSession"

    const-string v2, "Debug session started."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized b()Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lti/modules/titanium/debug/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "DebugSession"

    const-string v1, "Debug session stopping..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/debug/b;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lti/modules/titanium/debug/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    iget-object v0, p0, Lti/modules/titanium/debug/b;->f:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "DebugSession"

    const-string v2, "Error closing selector and channels."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lti/modules/titanium/debug/b;->c:Z

    return v0
.end method

.method protected abstract e()V
.end method

.method public run()V
    .locals 5

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lti/modules/titanium/debug/b;->c:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lti/modules/titanium/debug/b;->f()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/debug/b;->f:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lti/modules/titanium/debug/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    :goto_1
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/debug/b;->f:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v3, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :goto_2
    iget-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lti/modules/titanium/debug/b;->e()V

    :cond_1
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "DebugSession"

    const-string v3, "IO thread interrupted during debugger read."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lti/modules/titanium/debug/b;->b()Z

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "DebugSession"

    const-string v4, "Error during debugger read."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lti/modules/titanium/debug/b;->b()Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lti/modules/titanium/debug/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_2

    :cond_4
    const-string v0, "DebugSession"

    const-string v1, "IO thread exiting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
