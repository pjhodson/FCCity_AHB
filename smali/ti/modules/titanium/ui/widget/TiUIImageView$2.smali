.class Lti/modules/titanium/ui/widget/TiUIImageView$2;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiLoadImageListener;


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
    .line 127
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadImageFailed()V
    .locals 3

    .prologue
    .line 151
    const-string v0, "TiUIImageView"

    const-string v1, "Unable to load image"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public loadImageFinished(ILandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "hash"
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x1

    .line 132
    if-eqz p2, :cond_1

    .line 133
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiImageLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/titanium/util/TiImageLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 139
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$600(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const-string v1, "image"

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$800(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #setter for: Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z
    invoke-static {v0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$702(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    .line 146
    :cond_1
    return-void
.end method
