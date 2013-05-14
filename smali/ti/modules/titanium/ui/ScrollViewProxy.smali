.class public Lti/modules/titanium/ui/ScrollViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ScrollViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FIRST_ID:I = 0xd3

.field protected static final MSG_LAST_ID:I = 0x4ba

.field private static final MSG_SCROLL_TO:I = 0x137

.field private static final MSG_SCROLL_TO_BOTTOM:I = 0x138


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "overScrollMode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Lti/modules/titanium/ui/ScrollViewProxy;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 55
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView;

    return-object v0
.end method

.method public getScrollingEnabled()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 101
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x137

    if-ne v2, v3, :cond_0

    .line 102
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollTo(II)V

    .line 103
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 104
    .local v0, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 112
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :goto_0
    return v1

    .line 106
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x138

    if-ne v2, v3, :cond_1

    .line 107
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollToBottom()V

    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 109
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public handleScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 116
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollTo(II)V

    .line 117
    return-void
.end method

.method public handleScrollToBottom()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollToBottom()V

    .line 121
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 64
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x137

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollTo(II)V

    goto :goto_0
.end method

.method public scrollToBottom()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollToBottom()V

    goto :goto_0
.end method

.method public setScrollingEnabled(Ljava/lang/Object;)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 78
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setScrollingEnabled(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
