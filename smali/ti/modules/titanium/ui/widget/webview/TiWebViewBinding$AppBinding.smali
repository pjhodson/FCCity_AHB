.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBinding"
.end annotation


# instance fields
.field private appListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private code:Ljava/lang/String;

.field private counter:I

.field private module:Lorg/appcelerator/kroll/KrollModule;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->appListeners:Ljava/util/HashMap;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->counter:I

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->code:Ljava/lang/String;

    .line 220
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "App"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getModuleByName(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lorg/appcelerator/kroll/KrollModule;

    .line 221
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;I)I
    .locals 4
    .parameter "event"
    .parameter "id"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {v0, v2, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;I)V

    .line 242
    .local v0, callback:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lorg/appcelerator/kroll/KrollModule;

    invoke-virtual {v2, p1, v0}, Lorg/appcelerator/kroll/KrollModule;->addEventListener(Ljava/lang/String;Lorg/appcelerator/kroll/KrollEventCallback;)I

    move-result v1

    .line 243
    .local v1, result:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->appListeners:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return v1
.end method

.method public clearEventListeners()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 257
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->appListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, event:Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->appListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->removeEventListener(Ljava/lang/String;I)V

    goto :goto_0

    .line 260
    .end local v0           #event:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "json"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 227
    :try_start_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 228
    .local v0, dict:Lorg/appcelerator/kroll/KrollDict;
    if-eqz p2, :cond_0

    const-string v2, "undefined"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #dict:Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Lorg/json/JSONObject;)V

    .line 231
    .restart local v0       #dict:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lorg/appcelerator/kroll/KrollModule;

    invoke-virtual {v2, p1, v0}, Lorg/appcelerator/kroll/KrollModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0           #dict:Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "TiWebViewBinding"

    const-string v3, "Error parsing event JSON"

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getJSCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroyed:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$400(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->code:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasResult()I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 274
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroyed:Z
    invoke-static {v1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$400(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const/4 v0, -0x1

    .line 286
    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    .line 278
    .local v0, result:I
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 279
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    const-string v1, ""

    iput-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->code:Ljava/lang/String;

    .line 285
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 282
    :cond_1
    const/4 v0, 0x1

    .line 283
    :try_start_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->code:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removeEventListener(Ljava/lang/String;I)V
    .locals 1
    .parameter "event"
    .parameter "id"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lorg/appcelerator/kroll/KrollModule;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollModule;->removeEventListener(Ljava/lang/String;I)V

    .line 252
    return-void
.end method
