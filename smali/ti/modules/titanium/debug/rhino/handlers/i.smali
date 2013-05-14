.class public final Lti/modules/titanium/debug/rhino/handlers/i;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "option"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/debug/rhino/i;->b()Lti/modules/titanium/debug/rhino/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lti/modules/titanium/debug/rhino/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-array v0, v3, [Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Lti/modules/titanium/debug/rhino/c;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    return-object v0
.end method
