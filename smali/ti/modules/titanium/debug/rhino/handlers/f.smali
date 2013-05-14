.class public final Lti/modules/titanium/debug/rhino/handlers/f;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "exception"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v5}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/debug/rhino/i;->c()Lorg/mozilla/javascript/tools/debugger/Dim;

    move-result-object v2

    const-string v3, "create"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->addExceptionBreakpoint(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "created"

    aput-object v1, v0, v4

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "change"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "changed"

    aput-object v1, v0, v4

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "remove"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->removeExceptionBreakpoint(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "removed"

    aput-object v1, v0, v4

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v0, v4, [Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Lti/modules/titanium/debug/rhino/c;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    goto :goto_0
.end method
