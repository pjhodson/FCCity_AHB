.class public Lti/modules/titanium/ui/OptionDialogProxy;
.super Lti/modules/titanium/ui/TiDialogProxy;
.source "OptionDialogProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lti/modules/titanium/ui/TiDialogProxy;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 36
    invoke-direct {p0}, Lti/modules/titanium/ui/OptionDialogProxy;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 49
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIDialog;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 42
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lti/modules/titanium/ui/TiDialogProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 64
    invoke-virtual {p0}, Lti/modules/titanium/ui/OptionDialogProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    .line 65
    .local v0, d:Lti/modules/titanium/ui/widget/TiUIDialog;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIDialog;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 66
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lti/modules/titanium/ui/TiDialogProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 56
    invoke-virtual {p0}, Lti/modules/titanium/ui/OptionDialogProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    .line 57
    .local v0, d:Lti/modules/titanium/ui/widget/TiUIDialog;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIDialog;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 58
    return-void
.end method
