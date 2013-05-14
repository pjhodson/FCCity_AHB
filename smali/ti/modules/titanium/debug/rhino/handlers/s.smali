.class public final Lti/modules/titanium/debug/rhino/handlers/s;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "version"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 3

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0.0.1"

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    return-object v0
.end method
