.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewCallback"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 188
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->id:I

    .line 190
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    const-string v1, ""

    .line 204
    .end local p1
    .local v1, dataString:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ti.executeListener("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, code:Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;
    invoke-static {v3}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/Stack;

    move-result-object v4

    monitor-enter v4

    .line 206
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    #getter for: Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->codeSnippets:Ljava/util/Stack;
    invoke-static {v3}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    return-void

    .line 197
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #dataString:Ljava/lang/String;
    .restart local p1
    :cond_0
    instance-of v3, p1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 198
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    .line 199
    .local v2, json:Lorg/json/JSONObject;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1       #dataString:Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v1           #dataString:Ljava/lang/String;
    .end local v2           #json:Lorg/json/JSONObject;
    .restart local p1
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dataString:Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local p1
    .restart local v0       #code:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
