.class public final Lti/modules/titanium/debug/rhino/j;
.super Lti/modules/titanium/debug/b;


# instance fields
.field private b:Lti/modules/titanium/debug/rhino/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lti/modules/titanium/debug/b;-><init>()V

    new-instance v0, Lti/modules/titanium/debug/rhino/e;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/e;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/j;->b:Lti/modules/titanium/debug/rhino/e;

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lti/modules/titanium/debug/rhino/i;->a(Lti/modules/titanium/debug/rhino/j;)V

    return-void
.end method

.method private declared-synchronized b(Lti/modules/titanium/debug/rhino/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lti/modules/titanium/debug/rhino/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Ljava/lang/String;)Lti/modules/titanium/debug/rhino/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/debug/rhino/j;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/rhino/b;)V
    .locals 1

    invoke-virtual {p1}, Lti/modules/titanium/debug/rhino/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/debug/rhino/j;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/i;->d()V

    invoke-super {p0}, Lti/modules/titanium/debug/b;->c()V

    return-void
.end method

.method protected final e()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/debug/rhino/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/j;->b:Lti/modules/titanium/debug/rhino/e;

    iget-object v1, p0, Lti/modules/titanium/debug/rhino/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lti/modules/titanium/debug/rhino/e;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/j;->b:Lti/modules/titanium/debug/rhino/e;

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/e;->a()Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/j;->b(Lti/modules/titanium/debug/rhino/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DebugSession"

    const-string v2, "Uncaught exception while handling request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onLog(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const-string v1, "out"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "log"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/debug/rhino/j;->a(Lti/modules/titanium/debug/rhino/b;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    const-string v1, "warn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARN] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
