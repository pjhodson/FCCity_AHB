.class public Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
.super Ljava/lang/Object;
.source "Ti2DMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/Ti2DMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Operation"
.end annotation


# static fields
.field protected static final TYPE_INVERT:I = 0x4

.field protected static final TYPE_MULTIPLY:I = 0x3

.field protected static final TYPE_ROTATE:I = 0x2

.field protected static final TYPE_SCALE:I = 0x0

.field protected static final TYPE_TRANSLATE:I = 0x1


# instance fields
.field protected anchorX:F

.field protected anchorY:F

.field protected multiplyWith:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected rotateFrom:F

.field protected rotateTo:F

.field protected rotationFromValueSpecified:Z

.field protected scaleFromValuesSpecified:Z

.field protected scaleFromX:F

.field protected scaleFromY:F

.field protected scaleToX:F

.field protected scaleToY:F

.field protected translateX:F

.field protected translateY:F

.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f00

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    iput v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    .line 42
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    .line 43
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotationFromValueSpecified:Z

    .line 47
    iput p1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    .line 48
    return-void
.end method


# virtual methods
.method public apply(FLandroid/graphics/Matrix;IIFF)V
    .locals 6
    .parameter "interpolatedTime"
    .parameter "matrix"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    const/high16 v1, -0x4080

    .line 53
    cmpl-float v0, p5, v1

    if-nez v0, :cond_0

    iget p5, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    .line 54
    :cond_0
    cmpl-float v0, p6, v1

    if-nez v0, :cond_1

    iget p6, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    .line 55
    :cond_1
    iget v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iget v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    add-float/2addr v1, v2

    int-to-float v2, p3

    mul-float/2addr v2, p5

    int-to-float v3, p4

    mul-float/2addr v3, p6

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto :goto_0

    .line 63
    :pswitch_1
    iget v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateX:F

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateY:F

    mul-float/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    .line 65
    :pswitch_2
    iget v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    add-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v1, p5

    int-to-float v2, p4

    mul-float/2addr v2, p6

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_0

    .line 67
    :pswitch_3
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->multiplyWith:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->interpolate(FIIFF)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 69
    :pswitch_4
    invoke-virtual {p2, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
