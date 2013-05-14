.class Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Lti/modules/titanium/network/TiHTTPClient$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;


# direct methods
.method constructor <init>(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1233
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(I)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 1235
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1236
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "progress"

    int-to-double v2, p1

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    #getter for: Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:I
    invoke-static {v4}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->access$1900(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;->this$1:Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    iget-object v1, v1, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const-string v2, "onsendstream"

    #calls: Lti/modules/titanium/network/TiHTTPClient;->dispatchCallback(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    invoke-static {v1, v2, v0}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 1238
    return-void
.end method
