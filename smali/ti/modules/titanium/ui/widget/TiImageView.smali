.class public Lti/modules/titanium/ui/widget/TiImageView;
.super Landroid/view/ViewGroup;
.source "TiImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONTROL_TIMEOUT:I = 0xfa0

.field private static final MSG_HIDE_CONTROLS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "TiImageView"


# instance fields
.field private baseMatrix:Landroid/graphics/Matrix;

.field private changeMatrix:Landroid/graphics/Matrix;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private enableScale:Z

.field private enableZoomControls:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;

.field private orientation:I

.field private scaleFactor:F

.field private scaleIncrement:F

.field private scaleMax:F

.field private scaleMin:F

.field private viewHeightDefined:Z

.field private viewWidthDefined:Z

.field private zoomControls:Landroid/widget/ZoomControls;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 65
    move-object v0, p0

    .line 67
    .local v0, me:Lti/modules/titanium/ui/widget/TiImageView;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    .line 69
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    .line 70
    iput v3, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 71
    const v1, 0x3dcccccd

    iput v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    .line 72
    iput v3, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    .line 73
    const/high16 v1, 0x40a0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    .line 74
    iput v4, p0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    .line 76
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    .line 79
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    .line 80
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->addView(Landroid/view/View;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableScale(Z)V

    .line 83
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lti/modules/titanium/ui/widget/TiImageView$1;

    invoke-direct {v3, p0, v0}, Lti/modules/titanium/ui/widget/TiImageView$1;-><init>(Lti/modules/titanium/ui/widget/TiImageView;Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 118
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 120
    new-instance v1, Landroid/widget/ZoomControls;

    invoke-direct {v1, p1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    .line 121
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->addView(Landroid/view/View;)V

    .line 122
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const-wide/16 v2, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 124
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v2, Lti/modules/titanium/ui/widget/TiImageView$2;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiImageView$2;-><init>(Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v2, Lti/modules/titanium/ui/widget/TiImageView$3;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiImageView$3;-><init>(Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    return-void
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleScaleUp()V

    return-void
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleScaleDown()V

    return-void
.end method

.method private computeBaseMatrix()V
    .locals 17

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 243
    .local v1, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    .line 245
    if-eqz v1, :cond_2

    .line 250
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 251
    .local v8, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lti/modules/titanium/ui/widget/TiImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 252
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 253
    .local v6, intrinsicWidth:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 254
    .local v5, intrinsicHeight:I
    move v4, v6

    .line 255
    .local v4, dwidth:I
    move v3, v5

    .line 257
    .local v3, dheight:I
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    if-lez v13, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v14, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 259
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_1

    .line 260
    :cond_0
    move v4, v5

    .line 261
    move v3, v6

    .line 265
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v12, v13

    .line 266
    .local v12, vwidth:F
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v11, v13

    .line 268
    .local v11, vheight:F
    const/4 v2, 0x0

    .line 269
    .local v2, dRectF:Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v13, v14, v12, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 270
    .local v10, vRectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    if-nez v13, :cond_3

    .line 271
    new-instance v2, Landroid/graphics/RectF;

    .end local v2           #dRectF:Landroid/graphics/RectF;
    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v4

    int-to-float v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 283
    .restart local v2       #dRectF:Landroid/graphics/RectF;
    :goto_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 285
    .local v7, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->viewWidthDefined:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->viewHeightDefined:Z

    if-eqz v13, :cond_7

    .line 286
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 290
    .local v9, scaleType:Landroid/graphics/Matrix$ScaleToFit;
    :goto_1
    invoke-virtual {v7, v2, v10, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 293
    .end local v2           #dRectF:Landroid/graphics/RectF;
    .end local v3           #dheight:I
    .end local v4           #dwidth:I
    .end local v5           #intrinsicHeight:I
    .end local v6           #intrinsicWidth:I
    .end local v7           #m:Landroid/graphics/Matrix;
    .end local v8           #r:Landroid/graphics/Rect;
    .end local v9           #scaleType:Landroid/graphics/Matrix$ScaleToFit;
    .end local v10           #vRectF:Landroid/graphics/RectF;
    .end local v11           #vheight:F
    .end local v12           #vwidth:F
    :cond_2
    :goto_2
    return-void

    .line 272
    .restart local v2       #dRectF:Landroid/graphics/RectF;
    .restart local v3       #dheight:I
    .restart local v4       #dwidth:I
    .restart local v5       #intrinsicHeight:I
    .restart local v6       #intrinsicWidth:I
    .restart local v8       #r:Landroid/graphics/Rect;
    .restart local v10       #vRectF:Landroid/graphics/RectF;
    .restart local v11       #vheight:F
    .restart local v12       #vwidth:F
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_4

    .line 273
    new-instance v2, Landroid/graphics/RectF;

    .end local v2           #dRectF:Landroid/graphics/RectF;
    neg-int v13, v4

    int-to-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2       #dRectF:Landroid/graphics/RectF;
    goto :goto_0

    .line 274
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0xb4

    if-ne v13, v14, :cond_5

    .line 275
    new-instance v2, Landroid/graphics/RectF;

    .end local v2           #dRectF:Landroid/graphics/RectF;
    neg-int v13, v4

    int-to-float v13, v13

    neg-int v14, v3

    int-to-float v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2       #dRectF:Landroid/graphics/RectF;
    goto :goto_0

    .line 276
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_6

    .line 277
    new-instance v2, Landroid/graphics/RectF;

    .end local v2           #dRectF:Landroid/graphics/RectF;
    const/4 v13, 0x0

    neg-int v14, v3

    int-to-float v14, v14

    int-to-float v15, v4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2       #dRectF:Landroid/graphics/RectF;
    goto :goto_0

    .line 279
    :cond_6
    const-string v13, "TiImageView"

    const-string v14, "Invalid value for orientation. Cannot compute the base matrix for the image."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 288
    .restart local v7       #m:Landroid/graphics/Matrix;
    :cond_7
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .restart local v9       #scaleType:Landroid/graphics/Matrix$ScaleToFit;
    goto :goto_1
.end method

.method private getViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 307
    .local v0, m:Landroid/graphics/Matrix;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 308
    return-object v0
.end method

.method private handleHideControls()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 215
    return-void
.end method

.method private handleScaleDown()V
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 208
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    neg-float v0, v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiImageView;->onViewChanged(F)V

    .line 210
    :cond_0
    return-void
.end method

.method private handleScaleUp()V
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 201
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiImageView;->onViewChanged(F)V

    .line 203
    :cond_0
    return-void
.end method

.method private manageControls()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 225
    :goto_0
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 230
    :goto_1
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    goto :goto_1
.end method

.method private onViewChanged(F)V
    .locals 0
    .parameter "dscale"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiImageView;->updateChangeMatrix(F)V

    .line 235
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->manageControls()V

    .line 236
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 237
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    .line 238
    return-void
.end method

.method private scheduleControlTimeout()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 313
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 315
    return-void
.end method

.method private updateChangeMatrix(F)V
    .locals 5
    .parameter "dscale"

    .prologue
    .line 297
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 298
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    add-float/2addr v0, p1

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 299
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 300
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 301
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 302
    return-void
.end method

.method private updateScaleType()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 396
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 409
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 410
    return-void

    .line 398
    :cond_1
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewWidthDefined:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewHeightDefined:Z

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 400
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 401
    :cond_2
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableScale:Z

    if-nez v0, :cond_3

    .line 402
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 403
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 405
    :cond_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 406
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method


# virtual methods
.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 179
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 175
    :pswitch_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleHideControls()V

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 184
    const/4 v0, 0x1

    .line 185
    .local v0, sendClick:Z
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 188
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->manageControls()V

    .line 189
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 191
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    .line 193
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 196
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 370
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->computeBaseMatrix()V

    .line 371
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, parentLeft:I
    sub-int v2, p4, p2

    .line 375
    .local v2, parentRight:I
    const/4 v3, 0x0

    .line 376
    .local v3, parentTop:I
    sub-int v0, p5, p3

    .line 379
    .local v0, parentBottom:I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 380
    iget-boolean v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v6}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 381
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v6}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v5

    .line 382
    .local v5, zoomWidth:I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v6}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v4

    .line 383
    .local v4, zoomHeight:I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    sub-int v7, v2, v5

    sub-int v8, v0, v4

    invoke-virtual {v6, v7, v8, v2, v0}, Landroid/widget/ZoomControls;->layout(IIII)V

    .line 385
    .end local v4           #zoomHeight:I
    .end local v5           #zoomWidth:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 336
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, maxWidth:I
    const/4 v0, 0x0

    .line 352
    .local v0, maxHeight:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p1, p2}, Lti/modules/titanium/ui/widget/TiImageView;->measureChild(Landroid/view/View;II)V

    .line 354
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 355
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 358
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v2, p1, p2}, Lti/modules/titanium/ui/widget/TiImageView;->measureChild(Landroid/view/View;II)V

    .line 360
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v2}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 361
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v2}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 364
    :cond_0
    invoke-static {v1, p1}, Lti/modules/titanium/ui/widget/TiImageView;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lti/modules/titanium/ui/widget/TiImageView;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/TiImageView;->setMeasuredDimension(II)V

    .line 365
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, handled:Z
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1, p1}, Landroid/widget/ZoomControls;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 325
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 327
    :cond_1
    if-nez v0, :cond_2

    .line 328
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 330
    :cond_2
    return v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 389
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 390
    return-void
.end method

.method public setEnableScale(Z)V
    .locals 0
    .parameter "enableScale"

    .prologue
    .line 144
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableScale:Z

    .line 145
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 146
    return-void
.end method

.method public setEnableZoomControls(Z)V
    .locals 0
    .parameter "enableZoomControls"

    .prologue
    .line 150
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    .line 151
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 152
    return-void
.end method

.method public setHeightDefined(Z)V
    .locals 0
    .parameter "defined"

    .prologue
    .line 420
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewHeightDefined:Z

    .line 421
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 422
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 163
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 168
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 169
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 426
    iput p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    .line 427
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 428
    return-void
.end method

.method public setWidthDefined(Z)V
    .locals 0
    .parameter "defined"

    .prologue
    .line 414
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewWidthDefined:Z

    .line 415
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 416
    return-void
.end method
