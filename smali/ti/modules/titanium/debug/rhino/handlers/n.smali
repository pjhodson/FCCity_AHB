.class public final Lti/modules/titanium/debug/rhino/handlers/n;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "terminate"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 2

    const-string v0, "TerminateHandler"

    const-string v1, "Handling terminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/o;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/debug/rhino/handlers/o;-><init>(Lti/modules/titanium/debug/rhino/handlers/n;Lti/modules/titanium/debug/b;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Lti/modules/titanium/debug/rhino/c;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    return-object v0
.end method
