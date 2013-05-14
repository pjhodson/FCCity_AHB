.class public Lti/modules/titanium/ui/ActivityIndicatorProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ActivityIndicatorProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 38
    invoke-direct {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 44
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 50
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "message"

    const-string v2, "messageid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 68
    iget-object v1, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    .line 70
    .local v0, ai:Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->hide()V

    .line 74
    .end local v0           #ai:Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 57
    iget-object v1, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    .line 59
    .local v0, ai:Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->show()V

    .line 63
    .end local v0           #ai:Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method
