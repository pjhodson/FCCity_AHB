.class public final Lti/modules/titanium/debug/rhino/handlers/j;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "resume"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 4

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/i;->c()Lorg/mozilla/javascript/tools/debugger/Dim;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->go()V

    check-cast p1, Lti/modules/titanium/debug/rhino/j;

    const-string v1, "resumed"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/i;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "resume"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lti/modules/titanium/debug/rhino/j;->a(Lti/modules/titanium/debug/rhino/b;)V

    const/4 v0, 0x0

    return-object v0
.end method
