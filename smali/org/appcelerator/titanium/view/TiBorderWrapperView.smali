.class public Lorg/appcelerator/titanium/view/TiBorderWrapperView;
.super Landroid/widget/FrameLayout;
.source "TiBorderWrapperView.java"


# static fields
.field public static final SOLID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TiBorderWrapperView"


# instance fields
.field private alpha:I

.field private borderPath:Landroid/graphics/Path;

.field private borderWidth:F

.field private color:I

.field private innerPath:Landroid/graphics/Path;

.field private innerRect:Landroid/graphics/RectF;

.field private outerRect:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput v2, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->color:I

    .line 34
    iput v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    .line 35
    iput v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderWidth:F

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->alpha:I

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setWillNotDraw(Z)V

    .line 49
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 109
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->alpha:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    return-void
.end method

.method private updateBorderPath()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/high16 v7, 0x4000

    const/4 v10, 0x0

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 73
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, padding:I
    const/4 v2, 0x0

    .line 78
    .local v2, maxPadding:I
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v7

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v2, v5

    .line 79
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderWidth:F

    int-to-float v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v4, v5

    .line 80
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    int-to-float v8, v8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_1

    .line 83
    new-array v3, v11, [F

    .line 84
    .local v3, outerRadii:[F
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 85
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    .line 86
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v3, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 87
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 88
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    .line 89
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 90
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    int-to-float v6, v4

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    .line 91
    new-array v1, v11, [F

    .line 92
    .local v1, innerRadii:[F
    iget v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    int-to-float v6, v4

    sub-float/2addr v5, v6

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 93
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v1, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 94
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v1, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 105
    .end local v1           #innerRadii:[F
    .end local v3           #outerRadii:[F
    :goto_0
    return-void

    .line 96
    .restart local v3       #outerRadii:[F
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 97
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 100
    .end local v3           #outerRadii:[F
    :cond_1
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    .line 101
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->outerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 102
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 103
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->updateBorderPath()V

    .line 55
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 57
    iget v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TiBorderWrapperView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clipPath failed on canvas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->innerRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public setBorderAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 133
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->alpha:I

    .line 134
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .parameter "borderWidth"

    .prologue
    .line 128
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->borderWidth:F

    .line 129
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 118
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->color:I

    .line 119
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 123
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->radius:F

    .line 124
    return-void
.end method
