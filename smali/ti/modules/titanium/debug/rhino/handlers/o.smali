.class final Lti/modules/titanium/debug/rhino/handlers/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lti/modules/titanium/debug/b;


# direct methods
.method constructor <init>(Lti/modules/titanium/debug/rhino/handlers/n;Lti/modules/titanium/debug/b;)V
    .locals 0

    iput-object p2, p0, Lti/modules/titanium/debug/rhino/handlers/o;->a:Lti/modules/titanium/debug/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/handlers/o;->a:Lti/modules/titanium/debug/b;

    invoke-virtual {v0}, Lti/modules/titanium/debug/b;->b()Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
