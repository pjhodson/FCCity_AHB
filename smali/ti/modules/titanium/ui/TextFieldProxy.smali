.class public Lti/modules/titanium/ui/TextFieldProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TextFieldProxy.java"


# static fields
.field private static final MSG_FIRST_ID:I = 0x4bb

.field private static final MSG_SET_SELECTION:I = 0x584


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 50
    iget-object v0, p0, Lti/modules/titanium/ui/TextFieldProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "value"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lti/modules/titanium/ui/TextFieldProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "maxLength"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 57
    invoke-direct {p0}, Lti/modules/titanium/ui/TextFieldProxy;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "activity"

    .prologue
    .line 69
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIText;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 0
    .parameter "createdInModule"
    .parameter "args"

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 97
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    :goto_0
    return v3

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 100
    .local v2, v:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v2, :cond_0

    .line 101
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .local v1, argsObj:Ljava/lang/Object;
    instance-of v3, v1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 103
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 104
    .local v0, args:Lorg/appcelerator/kroll/KrollDict;
    check-cast v2, Lti/modules/titanium/ui/widget/TiUIText;

    .end local v2           #v:Lorg/appcelerator/titanium/view/TiUIView;
    const-string v3, "start"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "stop"

    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lti/modules/titanium/ui/widget/TiUIText;->setSelection(II)V

    .line 107
    .end local v0           #args:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #argsObj:Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x584
        :pswitch_0
    .end packed-switch
.end method

.method public hasText()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 75
    const-string v1, "value"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TextFieldProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, text:Ljava/lang/Object;
    const-string v1, ""

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelection(II)V
    .locals 4
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 83
    .local v1, v:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    check-cast v1, Lti/modules/titanium/ui/widget/TiUIText;

    .end local v1           #v:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v1, p1, p2}, Lti/modules/titanium/ui/widget/TiUIText;->setSelection(II)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v1       #v:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 89
    .local v0, args:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "start"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v2, "stop"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x584

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
