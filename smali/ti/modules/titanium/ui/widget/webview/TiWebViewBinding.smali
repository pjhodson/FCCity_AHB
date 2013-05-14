.class public Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$1;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;,
        Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;
    }
.end annotation


# static fields
.field protected static final INJECTION_CODE:Ljava/lang/String; = null

.field protected static POLLING_CODE:Ljava/lang/String; = null

.field protected static final SCRIPT_INJECTION_ID:Ljava/lang/String; = "__ti_injection"

.field protected static final SCRIPT_TAG_INJECTION_CODE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "TiWebViewBinding"


# instance fields
.field private apiBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;

.field private appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

.field private codeSnippets:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private destroyed:Z

.field private returnSemaphore:Ljava/util/concurrent/Semaphore;

.field private returnValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 46
    const-string v5, ""

    sput-object v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->POLLING_CODE:Ljava/lang/String;

    .line 48
    const-string v5, "json2.js"

    invoke-static {v5}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    .local v1, jsonCode:Ljava/lang/StringBuilder;
    const-string v5, "binding.min.js"

    invoke-static {v5}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50
    .local v4, tiCode:Ljava/lang/StringBuilder;
    const-string v5, "polling.min.js"

    invoke-static {v5}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    .local v2, pollingCode:Ljava/lang/StringBuilder;
    if-nez v2, :cond_0

    .line 53
    const-string v5, "TiWebViewBinding"

    const-string v6, "Unable to read polling code"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v3, scriptCode:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, injectionCode:Ljava/lang/StringBuilder;
    const-string v5, "\n<script id=\"__ti_injection\">\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    if-nez v1, :cond_1

    .line 62
    const-string v5, "TiWebViewBinding"

    const-string v6, "Unable to read JSON code for injection"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_1
    if-nez v4, :cond_2

    .line 69
    const-string v5, "TiWebViewBinding"

    const-string v6, "Unable to read Titanium binding code for injection"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_2
    const-string v5, "\n</script>\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v1, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->SCRIPT_TAG_INJECTION_CODE:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    .line 80
    const/4 v3, 0x0

    .line 82
    return-void

    .line 55
    .end local v0           #injectionCode:Ljava/lang/StringBuilder;
    .end local v3           #scriptCode:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->POLLING_CODE:Ljava/lang/String;

    goto :goto_0

    .line 64
    .restart local v0       #injectionCode:Ljava/lang/StringBuilder;
    .restart local v3       #scriptCode:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    :cond_2
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webView"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    .line 92
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;

    .line 94
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->apiBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;

    .line 95
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    .line 96
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    const-string v1, "TiApp"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->apiBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;

    const-string v1, "TiAPI"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$TiReturn;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$1;)V

    const-string v1, "_TiReturn"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "tiContext"
    .parameter "webView"

    .prologue
    .line 103
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;-><init>(Landroid/webkit/WebView;)V

    .line 104
    return-void
.end method

.method static synthetic access$102(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroyed:Z

    return v0
.end method

.method private static readResourceFile(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 119
    const-class v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ti/modules/titanium/ui/widget/webview/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 121
    .local v4, stream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 122
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, code:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 131
    :cond_0
    if-eqz v4, :cond_1

    .line 133
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .end local v0           #code:Ljava/lang/StringBuilder;
    .end local v2           #line:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 134
    .restart local v0       #code:Ljava/lang/StringBuilder;
    .restart local v2       #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TiWebViewBinding"

    const-string v6, "Problem closing input stream."

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #line:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 128
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "TiWebViewBinding"

    const-string v6, "Error reading input stream"

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    const/4 v0, 0x0

    .line 131
    .end local v0           #code:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_1

    .line 133
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 134
    :catch_2
    move-exception v1

    .line 135
    const-string v5, "TiWebViewBinding"

    const-string v6, "Problem closing input stream."

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 131
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #code:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 133
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 136
    :cond_2
    :goto_2
    throw v5

    .line 134
    :catch_3
    move-exception v1

    .line 135
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "TiWebViewBinding"

    const-string v7, "Problem closing input stream."

    invoke-static {v6, v7, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->appBinding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->clearEventListeners()V

    .line 112
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroyed:Z

    .line 115
    return-void
.end method

.method public declared-synchronized getJSValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "expression"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroyed:Z

    if-nez v2, :cond_1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_TiReturn.setValue((function(){try{return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+\"\";}catch(ti_eval_err){return \'\';}})());"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, code:Ljava/lang/String;
    const-string v2, "TiWebViewBinding"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJSValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 153
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0xdac

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    :try_start_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->removeElement(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 161
    :try_start_4
    const-string v2, "TiWebViewBinding"

    const-string v3, "Timeout waiting to evaluate JS"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->returnValue:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 168
    .end local v0           #code:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 155
    .restart local v0       #code:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 148
    .end local v0           #code:Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 160
    .restart local v0       #code:Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_9
    const-string v2, "TiWebViewBinding"

    const-string v3, "Interrupted"

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 168
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
