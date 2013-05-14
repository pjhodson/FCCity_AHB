.class public final Lti/modules/titanium/debug/rhino/handlers/l;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "stepInto"

    iget-object v3, p0, Lti/modules/titanium/debug/rhino/handlers/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/debug/rhino/handlers/l;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lti/modules/titanium/debug/rhino/i;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lti/modules/titanium/debug/rhino/i;->c()Lorg/mozilla/javascript/tools/debugger/Dim;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setReturnValue(I)V

    check-cast p1, Lti/modules/titanium/debug/rhino/j;

    const-string v0, "resumed"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lti/modules/titanium/debug/rhino/handlers/l;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lti/modules/titanium/debug/rhino/j;->a(Lti/modules/titanium/debug/rhino/b;)V

    new-array v0, v2, [Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Lti/modules/titanium/debug/rhino/c;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "stepOver"

    iget-object v3, p0, Lti/modules/titanium/debug/rhino/handlers/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "stepReturn"

    iget-object v3, p0, Lti/modules/titanium/debug/rhino/handlers/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
