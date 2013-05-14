.class public Lti/modules/titanium/debug/DebugModule;
.super Lorg/appcelerator/kroll/KrollModule;


# static fields
.field public static a:Z


# instance fields
.field private b:Lti/modules/titanium/debug/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lti/modules/titanium/debug/DebugModule;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    new-instance v0, Lti/modules/titanium/debug/a;

    invoke-direct {v0}, Lti/modules/titanium/debug/a;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/debug/DebugModule;->b:Lti/modules/titanium/debug/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/DebugModule;->b:Lti/modules/titanium/debug/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/debug/DebugModule;->b:Lti/modules/titanium/debug/a;

    invoke-virtual {v0}, Lti/modules/titanium/debug/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lti/modules/titanium/debug/DebugModule;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DebugModule"

    const-string v1, "Stopping debugger"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lti/modules/titanium/debug/DebugModule;->b:Lti/modules/titanium/debug/a;

    invoke-virtual {v0}, Lti/modules/titanium/debug/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/debug/DebugModule;->b:Lti/modules/titanium/debug/a;

    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    instance-of v0, p1, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/debug/DebugModule;->b()V

    :cond_0
    return-void
.end method

.method public startDebugger()V
    .locals 3

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployData()Lorg/appcelerator/kroll/common/TiDeployData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiDeployData;->isDebuggerEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lti/modules/titanium/debug/DebugModule;->b:Lti/modules/titanium/debug/a;

    const-string v2, "10.0.2.2"

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiDeployData;->getDebuggerPort()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/debug/a;->a(Ljava/lang/String;I)Z

    goto :goto_0
.end method
