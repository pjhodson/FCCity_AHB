.class public final Lti/modules/titanium/debug/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lti/modules/titanium/debug/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lti/modules/titanium/debug/b;->a()Lti/modules/titanium/debug/b;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/debug/a;->a:Lti/modules/titanium/debug/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/a;->a:Lti/modules/titanium/debug/b;

    invoke-virtual {v0}, Lti/modules/titanium/debug/b;->b()Z

    return-void
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/debug/a;->a:Lti/modules/titanium/debug/b;

    invoke-virtual {v1, v0}, Lti/modules/titanium/debug/b;->a(Ljava/nio/channels/SocketChannel;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "DebugClient"

    const-string v1, "Failed to connect with debug server."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/a;->a:Lti/modules/titanium/debug/b;

    invoke-virtual {v0}, Lti/modules/titanium/debug/b;->d()Z

    move-result v0

    return v0
.end method
