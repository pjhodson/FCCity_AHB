.class public final Lti/modules/titanium/debug/rhino/handlers/k;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "setValue"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v8}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v2

    invoke-static {v2, v0}, Lti/modules/titanium/debug/rhino/k;->a(Lti/modules/titanium/debug/rhino/i;Ljava/lang/String;)Lti/modules/titanium/debug/rhino/l;

    move-result-object v0

    invoke-static {v2, v1}, Lti/modules/titanium/debug/rhino/k;->a(Lti/modules/titanium/debug/rhino/i;Ljava/lang/String;)Lti/modules/titanium/debug/rhino/l;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lti/modules/titanium/debug/rhino/l;->a:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, v0, Lti/modules/titanium/debug/rhino/l;->b:Ljava/lang/String;

    iget-object v0, v0, Lti/modules/titanium/debug/rhino/l;->a:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, v1, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    iget-object v0, v1, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/k;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    invoke-static {v2}, Lti/modules/titanium/debug/rhino/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lti/modules/titanium/debug/rhino/c;

    const-string v5, "result"

    invoke-direct {v4, v5}, Lti/modules/titanium/debug/rhino/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lti/modules/titanium/debug/rhino/c;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    iget-object v1, v1, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    invoke-static {v1}, Lti/modules/titanium/debug/rhino/k;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-direct {v4, v5}, Lti/modules/titanium/debug/rhino/c;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v3}, Lti/modules/titanium/debug/rhino/b;->a(Lti/modules/titanium/debug/rhino/b;Ljava/util/List;)Lti/modules/titanium/debug/rhino/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "exception"

    aput-object v2, v1, v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p2, v1}, Lti/modules/titanium/debug/rhino/b;->a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    goto :goto_0
.end method
