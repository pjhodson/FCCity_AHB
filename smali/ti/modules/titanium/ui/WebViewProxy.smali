.class public Lti/modules/titanium/ui/WebViewProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "WebViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field private static final MSG_FIRST_ID:I = 0x4bb

.field private static final MSG_GO_BACK:I = 0x520

.field private static final MSG_GO_FORWARD:I = 0x521

.field protected static final MSG_LAST_ID:I = 0x8a2

.field private static final MSG_RELOAD:I = 0x522

.field private static final MSG_SET_HTML:I = 0x524

.field private static final MSG_STOP_LOADING:I = 0x523

.field public static final OPTIONS_IN_SETHTML:Ljava/lang/String; = "optionsInSetHtml"

.field private static final TAG:Ljava/lang/String; = "WebViewProxy"

.field private static fpassword:Ljava/lang/String;

.field private static fusername:Ljava/lang/String;


# instance fields
.field private postCreateMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxy;-><init>()V

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "overScrollMode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Lti/modules/titanium/ui/WebViewProxy;-><init>()V

    .line 65
    return-void
.end method

.method private static sendPostCreateMessage(Landroid/webkit/WebView;Landroid/os/Message;)V
    .locals 1
    .parameter "view"
    .parameter "postCreateMessage"

    .prologue
    .line 315
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 316
    .local v0, transport:Landroid/webkit/WebView$WebViewTransport;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 320
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoBack()Z

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoForward()Z

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearBasicAuthentication()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 290
    sput-object v0, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    .line 291
    sput-object v0, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .parameter "activity"

    .prologue
    .line 70
    check-cast p1, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local p1
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 71
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 73
    .local v0, webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    iget-object v1, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    invoke-static {v1, v2}, Lti/modules/titanium/ui/WebViewProxy;->sendPostCreateMessage(Landroid/webkit/WebView;Landroid/os/Message;)V

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    .line 78
    :cond_0
    return-object v0
.end method

.method public evalJS(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "code"

    .prologue
    .line 94
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 95
    .local v0, view:Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-nez v0, :cond_0

    .line 96
    const-string v1, "WebViewProxy"

    const-string v2, "WebView not available, returning null for evalJS result."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBasicAuthenticationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    return-object v0
.end method

.method public getBasicAuthenticationUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableZoomControls()Z
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x1

    .line 282
    .local v0, enabled:Z
    const-string v1, "enableZoomControls"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "enableZoomControls"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 285
    :cond_0
    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const-string v0, "html"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    const-string v1, "document.documentElement.outerHTML"

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "html"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPluginState()I
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, pluginState:I
    const-string v1, "pluginState"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "pluginState"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 237
    :cond_0
    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    .line 183
    .local v0, currWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x520

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 133
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lti/modules/titanium/ui/ViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_0
    return v2

    .line 135
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->goBack()V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->goForward()V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reload()V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->stopLoading()V

    goto :goto_0

    .line 147
    :pswitch_4
    const-string v3, "html"

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, html:Ljava/lang/String;
    const-string v3, "optionsInSetHtml"

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 149
    .local v0, d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x520
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 354
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 355
    .local v1, webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->destroyWebViewBinding()V

    .line 364
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 365
    .local v0, nativeWebView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 370
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->releaseViews()V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 346
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 342
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 338
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 350
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->pauseWebView()V

    .line 260
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->releaseViews()V

    .line 334
    return-void
.end method

.method public releaseViews()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->resumeWebView()V

    .line 268
    :cond_0
    return-void
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 159
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    sput-object p1, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    .line 162
    sput-object p2, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->clearBasicAuthentication()V

    .line 166
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableZoomControls(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 274
    const-string v0, "enableZoomControls"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 275
    return-void
.end method

.method public setHtml(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "html"
    .end parameter
    .parameter "d"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 114
    const-string v1, "html"

    invoke-virtual {p0, v1, p1}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v1, "optionsInSetHtml"

    invoke-virtual {p0, v1, p2}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 120
    .local v0, v:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .end local v0           #v:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v0       #v:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x524

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setPluginState(I)V
    .locals 3
    .parameter "pluginState"

    .prologue
    const/4 v2, 0x1

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 250
    const-string v0, "pluginState"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 252
    :goto_0
    return-void

    .line 247
    :pswitch_0
    const-string v0, "pluginState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPostCreateMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "postCreateMessage"

    .prologue
    .line 306
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lti/modules/titanium/ui/WebViewProxy;->sendPostCreateMessage(Landroid/webkit/WebView;Landroid/os/Message;)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 173
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    .line 174
    .local v0, currWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    return-void
.end method
