.class public Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "TiWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$2;
    }
.end annotation


# static fields
.field private static final CONSOLE_TAG:Ljava/lang/String; = "TiWebChromeClient.console"

.field private static final TAG:Ljava/lang/String; = "TiWebChromeClient"


# instance fields
.field private tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 35
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 36
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 46
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$2;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    const-string v0, "TiWebChromeClient.console"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 48
    :pswitch_0
    const-string v0, "TiWebChromeClient.console"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 9
    .parameter "view"
    .parameter "isDialog"
    .parameter "isUserGesture"
    .parameter "resultMsg"

    .prologue
    const/4 v6, 0x0

    .line 78
    iget-object v7, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    .line 79
    .local v4, proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-nez v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v6

    .line 83
    :cond_1
    const-string v7, "onCreateWindow"

    invoke-virtual {v4, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, onCreateWindow:Ljava/lang/Object;
    instance-of v7, v2, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_0

    move-object v3, v2

    .line 88
    check-cast v3, Lorg/appcelerator/kroll/KrollFunction;

    .line 89
    .local v3, onCreateWindowFunction:Lorg/appcelerator/kroll/KrollFunction;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, args:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "isDialog"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v7, "isUserGesture"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v7

    invoke-interface {v3, v7, v0}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v5

    .line 94
    .local v5, result:Ljava/lang/Object;
    instance-of v7, v5, Lti/modules/titanium/ui/WebViewProxy;

    if-eqz v7, :cond_0

    move-object v1, v5

    .line 95
    check-cast v1, Lti/modules/titanium/ui/WebViewProxy;

    .line 96
    .local v1, newProxy:Lti/modules/titanium/ui/WebViewProxy;
    invoke-virtual {v1, p4}, Lti/modules/titanium/ui/WebViewProxy;->setPostCreateMessage(Landroid/os/Message;)V

    .line 97
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 41
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 59
    const-string v0, "Alert"

    new-instance v1, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;

    invoke-direct {v1, p0, p4}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-static {v0, p3, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method
