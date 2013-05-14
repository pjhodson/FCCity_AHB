.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApiBinding"
.end annotation


# instance fields
.field private logging:Lorg/appcelerator/kroll/KrollLogging;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)V
    .locals 1
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-static {}, Lorg/appcelerator/kroll/KrollLogging;->getDefault()Lorg/appcelerator/kroll/KrollLogging;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;->logging:Lorg/appcelerator/kroll/KrollLogging;

    .line 299
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 3
    .parameter "arg"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;->logging:Lorg/appcelerator/kroll/KrollLogging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->debug([Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 3
    .parameter "arg"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;->logging:Lorg/appcelerator/kroll/KrollLogging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->error([Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 3
    .parameter "arg"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;->logging:Lorg/appcelerator/kroll/KrollLogging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->info([Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "level"
    .parameter "arg"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;->logging:Lorg/appcelerator/kroll/KrollLogging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollLogging;->log(Ljava/lang/String;[Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 3
    .parameter "arg"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;->logging:Lorg/appcelerator/kroll/KrollLogging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->trace([Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 3
    .parameter "arg"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$ApiBinding;->logging:Lorg/appcelerator/kroll/KrollLogging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->warn([Ljava/lang/String;)V

    .line 335
    return-void
.end method
