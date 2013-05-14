.class Lti/modules/titanium/ui/widget/TiImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TiImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiImageView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiImageView;

.field final synthetic val$me:Lti/modules/titanium/ui/widget/TiImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiImageView;Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$000(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->onClick(Landroid/view/View;)V

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 100
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$000(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$100(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 102
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$300(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    #calls: Lti/modules/titanium/ui/widget/TiImageView;->getViewMatrix()Landroid/graphics/Matrix;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiImageView;->access$200(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 103
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 104
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    #calls: Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$400(Lti/modules/titanium/ui/widget/TiImageView;)V

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 114
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->onClick(Landroid/view/View;)V

    .line 115
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
