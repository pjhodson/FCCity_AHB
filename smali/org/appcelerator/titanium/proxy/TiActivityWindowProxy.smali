.class public Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TiActivityWindowProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiActivityWindowProxy"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->opened:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method protected getWindowActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->getActivity()Lti/modules/titanium/android/TiJSActivity;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 46
    const-string v0, "TiActivityWindowProxy"

    const-string v1, "handleClose"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "close"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->close()V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->releaseViews()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->opened:Z

    .line 55
    return-void
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "options"

    .prologue
    .line 60
    return-void
.end method

.method public setView(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 40
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 41
    return-void
.end method
