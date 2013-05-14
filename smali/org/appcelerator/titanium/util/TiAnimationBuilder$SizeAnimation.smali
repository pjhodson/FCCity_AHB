.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
.super Landroid/view/animation/Animation;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SizeAnimation"
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "TiSizeAnimation"


# instance fields
.field protected fromHeight:F

.field protected fromWidth:F

.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected toHeight:F

.field protected toWidth:F

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;Landroid/view/View;FFFF)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "fromWidth"
    .parameter "fromHeight"
    .parameter "toWidth"
    .parameter "toHeight"

    .prologue
    .line 462
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 463
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    .line 464
    iput p3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    .line 465
    iput p4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    .line 466
    iput p5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    .line 467
    iput p6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    .line 469
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "TiSizeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animate view from ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "transformation"

    .prologue
    const/4 v8, 0x0

    .line 478
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 480
    const/4 v3, 0x0

    .line 481
    .local v3, width:I
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 482
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    float-to-int v3, v4

    .line 488
    :goto_0
    const/4 v0, 0x0

    .line 489
    .local v0, height:I
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 490
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    float-to-int v0, v4

    .line 496
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 497
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 498
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 500
    instance-of v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 501
    check-cast v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 502
    .local v2, tiParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v5, v0

    const/4 v7, 0x7

    invoke-direct {v4, v5, v6, v7}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 503
    iget-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 504
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v5, v3

    const/4 v7, 0x6

    invoke-direct {v4, v5, v6, v7}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 505
    iget-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 508
    .end local v2           #tiParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    return-void

    .line 485
    .end local v0           #height:I
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->floor(F)F

    move-result v4

    float-to-int v3, v4

    goto :goto_0

    .line 493
    .restart local v0       #height:I
    :cond_2
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->floor(F)F

    move-result v4

    float-to-int v0, v4

    goto :goto_1
.end method
