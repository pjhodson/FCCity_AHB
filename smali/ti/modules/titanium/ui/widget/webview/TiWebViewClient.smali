.class public Lti/modules/titanium/ui/widget/webview/TiWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TiWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiWVC"


# instance fields
.field private binding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "tiWebView"
    .parameter "webView"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 37
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 38
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {v0, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->binding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    .line 39
    return-void
.end method

.method private shouldHandleMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "mimeType"
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 132
    const-string v2, "video/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lti/modules/titanium/media/TiVideoActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    const-string v2, "contentURL"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v2, "play"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 141
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->binding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changeProxyUrl(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 48
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "load"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 50
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 52
    .local v1, nativeWebView:Landroid/webkit/WebView;
    if-eqz v1, :cond_1

    .line 53
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->shouldInjectBindingCode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->POLLING_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 59
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBindingCodeInjected(Z)V

    .line 60
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 72
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 73
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "beforeload"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 83
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "errorCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, p2, p3}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 86
    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 149
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->username:Ljava/lang/String;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->password:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 168
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    .line 170
    .local v2, webViewProxy:Lorg/appcelerator/kroll/KrollProxy;
    const/4 v1, 0x0

    .line 172
    .local v1, ignoreSslError:Z
    :try_start_0
    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    const-string v4, "ignoreSslError"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 179
    const-string v3, "TiWVC"

    const-string v4, "ran into SSL error but ignoring..."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 185
    :goto_1
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "TiWVC"

    const-string v4, "ignoreSslError property does not contain a boolean value, ignoring"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v3, "TiWVC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSL error occurred: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    .line 156
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->username:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->password:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 94
    const-string v6, "TiWVC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p2}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    :cond_0
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    :goto_0
    return v5

    .line 100
    :cond_1
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    const-string v6, "TiWVC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching dialer for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "Choose Dialer"

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, dialer:Landroid/content/Intent;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    .end local v0           #dialer:Landroid/content/Intent;
    :cond_2
    const-string v6, "mailto:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    const-string v6, "TiWVC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching mailer for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "Send Message"

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 108
    .local v3, mailer:Landroid/content/Intent;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    .end local v3           #mailer:Landroid/content/Intent;
    :cond_3
    const-string v6, "geo:0,0?q="

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    const-string v6, "TiWVC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching app for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "Choose Viewer"

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 118
    .local v2, geoviewer:Landroid/content/Intent;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 121
    .end local v2           #geoviewer:Landroid/content/Intent;
    :cond_4
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, mimeType:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 124
    invoke-direct {p0, v4, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->shouldHandleMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    .line 126
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method
