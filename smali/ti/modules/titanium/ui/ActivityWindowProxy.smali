.class public Lti/modules/titanium/ui/ActivityWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "ActivityWindowProxy.java"


# static fields
.field private static final MSG_FINISH_OPEN:I = 0x51f

.field private static final MSG_FIRST_ID:I = 0x4bb

.field protected static final MSG_LAST_ID:I = 0x8a2

.field private static final TAG:Ljava/lang/String; = "ActivityWindowProxy"


# instance fields
.field protected useCurrentActivity:Z

.field protected windowId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 53
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "titlePrompt"

    const-string v2, "titlepromptid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method

.method public getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to getView on an ActivityWindow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTab()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getTabGroup()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->tabGroup:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method protected getWindow()Lti/modules/titanium/ui/TiUIActivityWindow;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/TiUIActivityWindow;

    return-object v0
.end method

.method protected getWindowActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->getWindow()Lti/modules/titanium/ui/TiUIActivityWindow;

    move-result-object v0

    .line 179
    .local v0, window:Lti/modules/titanium/ui/TiUIActivityWindow;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lti/modules/titanium/ui/TiUIActivityWindow;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "options"

    .prologue
    .line 114
    const-string v1, "ActivityWindowProxy"

    const-string v2, "handleClose"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->getWindow()Lti/modules/titanium/ui/TiUIActivityWindow;

    move-result-object v0

    .line 118
    .local v0, window:Lti/modules/titanium/ui/TiUIActivityWindow;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/TiUIActivityWindow;->close(Lorg/appcelerator/kroll/KrollDict;)V

    .line 121
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 43
    const-string v1, "useCurrentActivity"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, useCurrentActivity:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->useCurrentActivity:Z

    .line 47
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 76
    :pswitch_0
    iget-object v1, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ActivityWindowProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 78
    iget-object v1, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v1, :cond_0

    .line 82
    :cond_0
    iput-boolean v0, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->opened:Z

    .line 83
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->handlePostOpen()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x51f
        :pswitch_0
    .end packed-switch
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .parameter "options"

    .prologue
    const/16 v5, 0x51f

    .line 96
    const-string v2, "ActivityWindowProxy"

    const-string v3, "handleOpen"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Landroid/os/Messenger;

    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityWindowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 100
    .local v1, messenger:Landroid/os/Messenger;
    iget-boolean v2, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->useCurrentActivity:Z

    if-eqz v2, :cond_1

    .line 101
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Lti/modules/titanium/ui/TiUIActivityWindow;

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-direct {v2, p0, v0, v1, v5}, Lti/modules/titanium/ui/TiUIActivityWindow;-><init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Messenger;I)V

    iput-object v2, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v2, Lti/modules/titanium/ui/TiUIActivityWindow;

    invoke-direct {v2, p0, p1, v1, v5}, Lti/modules/titanium/ui/TiUIActivityWindow;-><init>(Lti/modules/titanium/ui/ActivityWindowProxy;Lorg/appcelerator/kroll/KrollDict;Landroid/os/Messenger;I)V

    iput-object v2, p0, Lti/modules/titanium/ui/ActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    goto :goto_0
.end method
