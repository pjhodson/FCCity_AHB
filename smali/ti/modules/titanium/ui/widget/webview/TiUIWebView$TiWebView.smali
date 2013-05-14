.class Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
.super Landroid/webkit/WebView;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiWebView"
.end annotation


# instance fields
.field public client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 77
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 78
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroy()V

    .line 87
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 88
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 121
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 122
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$200(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 123
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x0

    .line 103
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getHeight()I

    move-result v6

    invoke-direct {v1, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$100(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v5

    const-string v6, "click"

    iget-object v7, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    #calls: Lti/modules/titanium/ui/widget/webview/TiUIWebView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v7, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$000(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 112
    .end local v1           #r:Landroid/graphics/Rect;
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 114
    .local v2, superHandled:Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3
.end method
