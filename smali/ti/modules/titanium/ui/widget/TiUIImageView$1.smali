.class Lti/modules/titanium/ui/widget/TiUIImageView$1;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadTaskFailed(Ljava/net/URI;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const-string v1, "Download Failed"

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->fireError(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$200(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public downloadTaskFinished(Ljava/net/URI;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 101
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->getInstance()Lorg/appcelerator/titanium/util/TiLoadImageManager;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$000(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/ImageViewProxy;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$100(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiLoadImageListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->load(Lorg/appcelerator/titanium/view/TiDrawableReference;Lorg/appcelerator/titanium/util/TiLoadImageListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method public postDownload(Ljava/net/URI;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 120
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$000(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/ImageViewProxy;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v1

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->handleCacheAndSetImage(Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$300(Lti/modules/titanium/ui/widget/TiUIImageView;Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    .line 123
    :cond_0
    return-void
.end method
