.class public Lti/modules/titanium/ui/AlertDialogProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "AlertDialogProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 40
    invoke-direct {p0}, Lti/modules/titanium/ui/AlertDialogProxy;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 55
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIDialog;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 46
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "ok"

    const-string v2, "okid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "message"

    const-string v2, "messageid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/ui/AlertDialogProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIDialog;

    .line 83
    .local v0, d:Lti/modules/titanium/ui/widget/TiUIDialog;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIDialog;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 84
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 61
    move-object v0, p1

    .line 67
    .local v0, fOptions:Lorg/appcelerator/kroll/KrollDict;
    new-instance v1, Lti/modules/titanium/ui/AlertDialogProxy$1;

    invoke-direct {v1, p0, v0}, Lti/modules/titanium/ui/AlertDialogProxy$1;-><init>(Lti/modules/titanium/ui/AlertDialogProxy;Lorg/appcelerator/kroll/KrollDict;)V

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->runUiDelayedIfBlock(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method
