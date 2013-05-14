.class public Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$1;,
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;,
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;
    }
.end annotation


# static fields
.field public static final PLUGIN_STATE_OFF:I = 0x0

.field public static final PLUGIN_STATE_ON:I = 0x1

.field public static final PLUGIN_STATE_ON_DEMAND:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TiUIWebView"

.field private static enumPluginStateOff:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static enumPluginStateOn:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static enumPluginStateOnDemand:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static final escapeChars:[C

.field private static internalSetPluginState:Ljava/lang/reflect/Method;

.field private static internalWebViewPause:Ljava/lang/reflect/Method;

.field private static internalWebViewResume:Ljava/lang/reflect/Method;


# instance fields
.field private bindingCodeInjected:Z

.field private client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

.field private isLocalHTML:Z

.field private reloadData:Ljava/lang/Object;

.field private reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeChars:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x25t 0x0t
        0x23t 0x0t
        0x27t 0x0t
        0x3ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 11
    .parameter "proxy"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 128
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 51
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    .line 52
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isLocalHTML:Z

    .line 69
    sget-object v8, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->DEFAULT:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v8, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 70
    const/4 v8, 0x0

    iput-object v8, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 130
    new-instance v7, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V

    .line 131
    .local v7, webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    invoke-virtual {v7, v10}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setVerticalScrollbarOverlay(Z)V

    .line 133
    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 134
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 135
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 136
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 137
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 138
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 139
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 140
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 141
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiApplication;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 142
    .local v3, path:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 149
    :cond_0
    const/4 v0, 0x1

    .line 151
    .local v0, enableZoom:Z
    const-string v8, "enableZoomControls"

    invoke-virtual {p1, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    const-string v8, "enableZoomControls"

    invoke-virtual {p1, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 155
    :cond_1
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 156
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 159
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x7

    if-le v8, v9, :cond_2

    .line 160
    invoke-direct {p0, v7}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->initializePluginAPI(Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;)V

    .line 163
    :cond_2
    new-instance v8, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

    invoke-direct {v8, p0}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)V

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 164
    new-instance v8, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-direct {v8, p0, v7}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/webkit/WebView;)V

    iput-object v8, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    .line 165
    iget-object v8, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 166
    iget-object v8, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    iput-object v8, v7, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    .line 168
    instance-of v8, p1, Lti/modules/titanium/ui/WebViewProxy;

    if-eqz v8, :cond_4

    move-object v6, p1

    .line 169
    check-cast v6, Lti/modules/titanium/ui/WebViewProxy;

    .line 170
    .local v6, webProxy:Lti/modules/titanium/ui/WebViewProxy;
    invoke-virtual {v6}, Lti/modules/titanium/ui/WebViewProxy;->getBasicAuthenticationUserName()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, username:Ljava/lang/String;
    invoke-virtual {v6}, Lti/modules/titanium/ui/WebViewProxy;->getBasicAuthenticationPassword()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, password:Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {p0, v5, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_3
    invoke-virtual {v6}, Lti/modules/titanium/ui/WebViewProxy;->clearBasicAuthentication()V

    .line 178
    .end local v2           #password:Ljava/lang/String;
    .end local v5           #username:Ljava/lang/String;
    .end local v6           #webProxy:Lti/modules/titanium/ui/WebViewProxy;
    :cond_4
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v1

    .line 179
    .local v1, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v10, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 180
    iput-boolean v10, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 182
    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setNativeView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private escapeContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "content"

    .prologue
    .line 401
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeChars:[C

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 402
    .local v1, escapeChar:C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, regex:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v1           #escapeChar:C
    .end local v4           #regex:Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private initializePluginAPI(Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;)V
    .locals 8
    .parameter "webView"

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 195
    :try_start_1
    sget-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    if-nez v4, :cond_0

    .line 196
    const-string v4, "android.webkit.WebSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 197
    .local v3, webSettings:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "android.webkit.WebSettings$PluginState"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 199
    .local v2, pluginState:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "OFF"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 200
    .local v1, f:Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    .line 201
    const-string v4, "ON"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 202
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOn:Ljava/lang/Enum;

    .line 203
    const-string v4, "ON_DEMAND"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 204
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOnDemand:Ljava/lang/Enum;

    .line 205
    const-string v4, "setPluginState"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "onPause"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewPause:Ljava/lang/reflect/Method;

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "onResume"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewResume:Ljava/lang/reflect/Method;

    .line 211
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v2           #pluginState:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #webSettings:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    monitor-exit v5

    .line 221
    :goto_0
    return-void

    .line 211
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFound: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 214
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchMethod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchField: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccess: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private mightBeHtml(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 295
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, mime:Ljava/lang/String;
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 298
    :cond_1
    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHtmlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "html"
    .parameter "baseUrl"
    .parameter "mimeType"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 452
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 453
    .local v0, webView:Landroid/webkit/WebView;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "scalesPageToFit"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 458
    :cond_0
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isLocalHTML:Z

    .line 460
    const-string v1, "__ti_injection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    const-string v4, "utf-8"

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 466
    :cond_1
    const-string v1, "<html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 467
    .local v8, tagStart:I
    const/4 v7, -0x1

    .line 468
    .local v7, tagEnd:I
    if-ltz v8, :cond_3

    .line 469
    const-string v1, ">"

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 471
    if-le v7, v8, :cond_3

    .line 472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x9c4

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 473
    .local v6, sb:Ljava/lang/StringBuilder;
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    sget-object v1, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->SCRIPT_TAG_INJECTION_CODE:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 476
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "utf-8"

    move-object v1, p2

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    goto :goto_0

    .line 484
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const-string v4, "utf-8"

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public changeProxyUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 381
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    const-string v0, "file:///android_asset/Resources/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->URL:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 384
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 386
    :cond_0
    return-void
.end method

.method public destroyWebViewBinding()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroy()V

    .line 531
    return-void
.end method

.method public getJSValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "expression"

    .prologue
    .line 520
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 611
    .local v0, currWebView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 627
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 632
    return-void
.end method

.method public pauseWebView()V
    .locals 4

    .prologue
    .line 564
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 565
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 566
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 568
    :try_start_0
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewPause:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 569
    .restart local v1       #v:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIWebView"

    const-string v3, "Method not supported"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 571
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 572
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIWebView"

    const-string v3, "Illegal Access"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "d"

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 228
    const-string v2, "scalesPageToFit"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 230
    .local v0, settings:Landroid/webkit/WebSettings;
    const-string v2, "scalesPageToFit"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 233
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_0
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "file:///android_asset/Resources/"

    const-string v3, "url"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 234
    const-string v2, "url"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 247
    :cond_1
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 251
    :cond_2
    const-string v2, "pluginState"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    const-string v2, "pluginState"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setPluginState(I)V

    .line 255
    :cond_3
    const-string v2, "overScrollMode"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    .line 257
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    const-string v3, "overScrollMode"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 260
    :cond_4
    return-void

    .line 235
    :cond_5
    const-string v2, "html"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 236
    const-string v2, "html"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "optionsInSetHtml"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {p0, v3, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 237
    :cond_6
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 239
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v2, :cond_1

    .line 240
    check-cast v1, Lorg/appcelerator/titanium/TiBlob;

    .end local v1           #value:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v2, 0x0

    .line 265
    const-string v3, "url"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 287
    .end local p3
    :cond_0
    :goto_0
    const-string v3, "background"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "border"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    const/4 v0, 0x1

    .line 288
    .local v0, isBgRelated:Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v3, :cond_2

    .line 289
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 291
    :cond_2
    return-void

    .line 267
    .end local v0           #isBgRelated:Z
    .restart local p3
    :cond_3
    const-string v3, "html"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_4
    const-string v3, "data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 270
    instance-of v3, p3, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_0

    .line 271
    check-cast p3, Lorg/appcelerator/titanium/TiBlob;

    .end local p3
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0

    .line 273
    .restart local p3
    :cond_5
    const-string v3, "scalesPageToFit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 274
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 275
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    goto :goto_0

    .line 276
    .end local v1           #settings:Landroid/webkit/WebSettings;
    :cond_6
    const-string v3, "overScrollMode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 277
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 278
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-static {p3, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_0

    .line 281
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .end local p3
    :cond_8
    move v0, v2

    .line 287
    goto :goto_1
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 636
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$1;->$SwitchMap$ti$modules$titanium$ui$widget$webview$TiUIWebView$reloadTypes:[I

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 665
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 667
    :goto_0
    return-void

    .line 638
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    instance-of v0, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0

    .line 641
    :cond_0
    const-string v0, "TiUIWebView"

    const-string v1, "reloadMethod points to data but reloadData is null or of wrong type. Calling default"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 647
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 648
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 650
    :cond_2
    const-string v0, "TiUIWebView"

    const-string v1, "reloadMethod points to html but reloadData is of wrong type. Calling default"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 656
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 657
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_3
    const-string v0, "TiUIWebView"

    const-string v1, "reloadMethod points to url but reloadData is null or of wrong type. Calling default"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resumeWebView()V
    .locals 4

    .prologue
    .line 580
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 581
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 582
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 584
    :try_start_0
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewResume:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 592
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 585
    .restart local v1       #v:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIWebView"

    const-string v3, "Method not supported"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 587
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 588
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIWebView"

    const-string v3, "Illegal Access"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 525
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public setBindingCodeInjected(Z)V
    .locals 0
    .parameter "injected"

    .prologue
    .line 681
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    .line 682
    return-void
.end method

.method public setData(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 5
    .parameter "blob"

    .prologue
    const/4 v4, 0x1

    .line 489
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->DATA:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 490
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 491
    const-string v1, "text/html"

    .line 496
    .local v1, mimeType:Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "scalesPageToFit"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 500
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 501
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, fullPath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 516
    .end local v0           #fullPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 508
    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 509
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 511
    :cond_2
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 512
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->toBase64()Ljava/lang/String;

    move-result-object v3

    const-string v4, "base64"

    invoke-virtual {v2, v3, v1, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v2, v3, v1, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableZoomControls(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 596
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 597
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 598
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 2
    .parameter "html"

    .prologue
    .line 410
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->HTML:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 412
    const-string v0, "file:///android_asset/Resources/"

    const-string v1, "text/html"

    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtmlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setHtml(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .parameter "html"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 422
    :cond_0
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->HTML:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 423
    iput-object p2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 424
    const-string v0, "file:///android_asset/Resources/"

    .line 425
    .local v0, baseUrl:Ljava/lang/String;
    const-string v1, "text/html"

    .line 426
    .local v1, mimeType:Ljava/lang/String;
    const-string v2, "baseURL"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    const-string v2, "baseURL"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_1
    const-string v2, "mimeType"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    const-string v2, "mimeType"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 433
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtmlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPluginState(I)V
    .locals 7
    .parameter "pluginState"

    .prologue
    .line 535
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    .line 536
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    .line 537
    .local v2, webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 538
    .local v1, webSettings:Landroid/webkit/WebSettings;
    if-eqz v2, :cond_0

    .line 540
    packed-switch p1, :pswitch_data_0

    .line 551
    :try_start_0
    const-string v3, "TiUIWebView"

    const-string v4, "Not a valid plugin state. Ignoring setPluginState request"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v1           #webSettings:Landroid/webkit/WebSettings;
    .end local v2           #webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    :cond_0
    :goto_0
    return-void

    .line 542
    .restart local v1       #webSettings:Landroid/webkit/WebSettings;
    .restart local v2       #webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    :pswitch_0
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "TiUIWebView"

    const-string v4, "Method not supported"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 545
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :pswitch_1
    :try_start_1
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOn:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 555
    :catch_1
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v3, "TiUIWebView"

    const-string v4, "Illegal Access"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 548
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :pswitch_2
    :try_start_2
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOnDemand:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 21
    .parameter "url"

    .prologue
    .line 307
    sget-object v17, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->URL:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 308
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 309
    move-object/from16 v6, p1

    .line 310
    .local v6, finalUrl:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 311
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    const/4 v10, 0x1

    .line 313
    .local v10, originalUrlHasScheme:Z
    :goto_0
    if-nez v10, :cond_0

    .line 314
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    :cond_0
    invoke-static {v6}, Lorg/appcelerator/titanium/io/TiFileFactory;->isLocalScheme(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->mightBeHtml(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 318
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v15

    .line 319
    .local v15, tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v15, :cond_7

    .line 320
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v11, out:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 323
    .local v7, fis:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v15}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 324
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-direct {v14, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 325
    .local v14, reader:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 326
    .local v4, breader:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, line:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_4

    .line 328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 329
    const-string v17, "<html"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 330
    .local v12, pos:I
    if-ltz v12, :cond_3

    .line 331
    const-string v17, ">"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 332
    .local v13, posEnd:I
    if-le v13, v12, :cond_3

    .line 333
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    sget-object v17, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->SCRIPT_TAG_INJECTION_CODE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 336
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_1
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    .line 340
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 341
    goto :goto_1

    .line 311
    .end local v4           #breader:Ljava/io/BufferedReader;
    .end local v7           #fis:Ljava/io/InputStream;
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #originalUrlHasScheme:Z
    .end local v11           #out:Ljava/lang/StringBuilder;
    .end local v12           #pos:I
    .end local v13           #posEnd:I
    .end local v14           #reader:Ljava/io/InputStreamReader;
    .end local v15           #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 345
    .restart local v4       #breader:Ljava/io/BufferedReader;
    .restart local v7       #fis:Ljava/io/InputStream;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #originalUrlHasScheme:Z
    .restart local v11       #out:Ljava/lang/StringBuilder;
    .restart local v14       #reader:Ljava/io/InputStreamReader;
    .restart local v15       #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 349
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    if-eqz v10, :cond_6

    move-object/from16 v17, p1

    :goto_2
    const-string v19, "text/html"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtmlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    if-eqz v7, :cond_5

    .line 359
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    .end local v4           #breader:Ljava/io/BufferedReader;
    .end local v7           #fis:Ljava/io/InputStream;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #out:Ljava/lang/StringBuilder;
    .end local v14           #reader:Ljava/io/InputStreamReader;
    .end local v15           #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_5
    :goto_3
    return-void

    .restart local v4       #breader:Ljava/io/BufferedReader;
    .restart local v7       #fis:Ljava/io/InputStream;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v11       #out:Ljava/lang/StringBuilder;
    .restart local v14       #reader:Ljava/io/InputStreamReader;
    .restart local v15       #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_6
    move-object/from16 v17, v6

    .line 349
    goto :goto_2

    .line 360
    :catch_0
    move-exception v5

    .line 361
    .local v5, e:Ljava/io/IOException;
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 353
    .end local v4           #breader:Ljava/io/BufferedReader;
    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #line:Ljava/lang/String;
    .end local v14           #reader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v8

    .line 354
    .local v8, ioe:Ljava/io/IOException;
    :try_start_2
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem reading from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Will let WebView try loading it directly."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    if-eqz v7, :cond_7

    .line 359
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 368
    .end local v7           #fis:Ljava/io/InputStream;
    .end local v8           #ioe:Ljava/io/IOException;
    .end local v11           #out:Ljava/lang/StringBuilder;
    .end local v15           #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_7
    :goto_4
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WebView will load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " directly without code injection."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    invoke-static/range {v17 .. v19}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v17, v0

    const-string v18, "scalesPageToFit"

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 373
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 375
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isLocalHTML:Z

    .line 376
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 360
    .restart local v7       #fis:Ljava/io/InputStream;
    .restart local v8       #ioe:Ljava/io/IOException;
    .restart local v11       #out:Ljava/lang/StringBuilder;
    .restart local v15       #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :catch_2
    move-exception v5

    .line 361
    .restart local v5       #e:Ljava/io/IOException;
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 357
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    if-eqz v7, :cond_9

    .line 359
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 362
    :cond_9
    :goto_5
    throw v17

    .line 360
    :catch_3
    move-exception v5

    .line 361
    .restart local v5       #e:Ljava/io/IOException;
    const-string v18, "TiUIWebView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Problem closing stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 2
    .parameter "userAgentString"

    .prologue
    .line 602
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 603
    .local v0, currWebView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 606
    :cond_0
    return-void
.end method

.method public shouldInjectBindingCode()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isLocalHTML:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 671
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 672
    return-void
.end method
