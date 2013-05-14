.class public Lorg/appcelerator/titanium/view/TiCompositeLayout;
.super Landroid/view/ViewGroup;
.source "TiCompositeLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;,
        Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    }
.end annotation


# static fields
.field private static final HAS_SIZE_FILL_CONFLICT:I = 0x1

.field public static final NOT_SET:I = -0x80000000

.field private static final NO_SIZE_FILL_CONFLICT:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "TiCompositeLayout"


# instance fields
.field private alpha:F

.field protected arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

.field private enableHorizontalWrap:Z

.field private horizontalLayoutCurrentLeft:I

.field private horizontalLayoutLastIndexBeforeWrap:I

.field private horizontalLayoutLineHeight:I

.field private horizontalLayoutTopBuffer:I

.field private horiztonalLayoutPreviousRight:I

.field private needsSort:Z

.field private proxy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field private viewSorter:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "set"

    .prologue
    .line 103
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "context"
    .parameter "proxy"

    .prologue
    .line 113
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    invoke-direct {p0, p1, v0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 2
    .parameter "context"
    .parameter "arrangement"

    .prologue
    .line 98
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "context"
    .parameter "arrangement"
    .parameter "proxy"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 65
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 66
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 67
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 68
    iput-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    .line 69
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    .line 70
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    .line 72
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->alpha:F

    .line 125
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 126
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;

    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;-><init>(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    .line 172
    iput-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 173
    invoke-virtual {p0, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->proxy:Ljava/lang/ref/WeakReference;

    .line 175
    return-void
.end method

.method private calculateHeightFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I
    .locals 7
    .parameter "params"
    .parameter "parentTop"
    .parameter "parentBottom"
    .parameter "parentHeight"
    .parameter "measuredHeight"

    .prologue
    .line 439
    move v2, p5

    .line 442
    .local v2, height:I
    iget-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    if-eqz v5, :cond_1

    :cond_0
    move v3, v2

    .line 460
    .end local v2           #height:I
    .local v3, height:I
    :goto_0
    return v3

    .line 446
    .end local v3           #height:I
    .restart local v2       #height:I
    :cond_1
    iget-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 447
    .local v4, top:Lorg/appcelerator/titanium/TiDimension;
    iget-object v1, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    .line 448
    .local v1, centerY:Lorg/appcelerator/titanium/TiDimension;
    iget-object v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 450
    .local v0, bottom:Lorg/appcelerator/titanium/TiDimension;
    if-eqz v4, :cond_4

    .line 451
    if-eqz v1, :cond_3

    .line 452
    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, p2

    invoke-virtual {v4, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v2, v5, 0x2

    :cond_2
    :goto_1
    move v3, v2

    .line 460
    .end local v2           #height:I
    .restart local v3       #height:I
    goto :goto_0

    .line 453
    .end local v3           #height:I
    .restart local v2       #height:I
    :cond_3
    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {v4, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p4, v5

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int v2, v5, v6

    goto :goto_1

    .line 456
    :cond_4
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v2, v5, 0x2

    goto :goto_1
.end method

.method private calculateWidthFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I
    .locals 7
    .parameter "params"
    .parameter "parentLeft"
    .parameter "parentRight"
    .parameter "parentWidth"
    .parameter "measuredWidth"

    .prologue
    .line 412
    move v3, p5

    .line 414
    .local v3, width:I
    iget-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    if-eqz v5, :cond_1

    :cond_0
    move v4, v3

    .line 431
    .end local v3           #width:I
    .local v4, width:I
    :goto_0
    return v4

    .line 418
    .end local v4           #width:I
    .restart local v3       #width:I
    :cond_1
    iget-object v1, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 419
    .local v1, left:Lorg/appcelerator/titanium/TiDimension;
    iget-object v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 420
    .local v0, centerX:Lorg/appcelerator/titanium/TiDimension;
    iget-object v2, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 422
    .local v2, right:Lorg/appcelerator/titanium/TiDimension;
    if-eqz v1, :cond_4

    .line 423
    if-eqz v0, :cond_3

    .line 424
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, p2

    mul-int/lit8 v3, v5, 0x2

    :cond_2
    :goto_1
    move v4, v3

    .line 431
    .end local v3           #width:I
    .restart local v4       #width:I
    goto :goto_0

    .line 425
    .end local v4           #width:I
    .restart local v3       #width:I
    :cond_3
    if-eqz v2, :cond_2

    .line 426
    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p4, v5

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_1

    .line 428
    :cond_4
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 429
    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v3, v5, 0x2

    goto :goto_1
.end method

.method private computeHorizontalLayoutPosition(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIIII[I[II)V
    .locals 15
    .parameter "params"
    .parameter "measuredWidth"
    .parameter "measuredHeight"
    .parameter "layoutRight"
    .parameter "layoutTop"
    .parameter "layoutBottom"
    .parameter "hpos"
    .parameter "vpos"
    .parameter "currentIndex"

    .prologue
    .line 674
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 675
    .local v11, optionLeft:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 676
    .local v13, optionRight:Lorg/appcelerator/titanium/TiDimension;
    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    iget v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    add-int v10, v2, v3

    .line 677
    .local v10, left:I
    const/4 v12, 0x0

    .line 678
    .local v12, optionLeftValue:I
    if-eqz v11, :cond_0

    .line 679
    invoke-virtual {v11, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v12

    .line 680
    add-int/2addr v10, v12

    .line 682
    :cond_0
    if-nez v13, :cond_4

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    .line 684
    add-int v14, v10, p2

    .line 685
    .local v14, right:I
    iget-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    add-int/2addr v2, v14

    move/from16 v0, p4

    if-le v2, v0, :cond_1

    .line 687
    move v10, v12

    .line 688
    add-int v14, p2, v10

    .line 689
    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    iget v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 690
    const/4 v2, 0x0

    iput v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 692
    :cond_1
    const/4 v2, 0x0

    aput v10, p7, v2

    .line 693
    const/4 v2, 0x1

    aput v14, p7, v2

    .line 694
    iput v14, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 696
    iget-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    if-eqz v2, :cond_3

    .line 698
    if-eqz p9, :cond_2

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    move/from16 v0, p9

    if-le v0, v2, :cond_2

    .line 699
    move/from16 v0, p4

    move/from16 v1, p9

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->updateRowForHorizontalWrap(II)V

    .line 701
    :cond_2
    iget v4, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    iget v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    add-int v5, v2, v3

    iget v6, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->calculateHeightFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I

    move-result p3

    .line 703
    iget v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    move/from16 p6, v0

    .line 707
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object v2, p0

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-static/range {v2 .. v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 710
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p8, v3

    iget v4, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    add-int/2addr v3, v4

    aput v3, p8, v2

    .line 711
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, p8, v3

    iget v4, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    add-int/2addr v3, v4

    aput v3, p8, v2

    .line 712
    return-void

    .line 682
    .end local v14           #right:I
    :cond_4
    invoke-virtual {v13, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    goto :goto_0
.end method

.method public static computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V
    .locals 9
    .parameter "parent"
    .parameter "leftOrTop"
    .parameter "optionCenter"
    .parameter "rightOrBottom"
    .parameter "measuredSize"
    .parameter "layoutPosition0"
    .parameter "layoutPosition1"
    .parameter "pos"

    .prologue
    .line 596
    sub-int v0, p6, p5

    .line 597
    .local v0, dist:I
    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    .line 600
    .local v2, leftOrTopPixels:I
    const/4 v5, 0x0

    add-int v6, p5, v2

    aput v6, p7, v5

    .line 601
    const/4 v5, 0x1

    add-int v6, p5, v2

    add-int/2addr v6, p4

    aput v6, p7, v5

    .line 618
    .end local v2           #leftOrTopPixels:I
    :goto_0
    return-void

    .line 602
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_1

    .line 604
    div-int/lit8 v1, p4, 0x2

    .line 605
    .local v1, halfSize:I
    const/4 v5, 0x0

    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, p5

    sub-int/2addr v6, v1

    aput v6, p7, v5

    .line 606
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, p7, v6

    add-int/2addr v6, p4

    aput v6, p7, v5

    goto :goto_0

    .line 607
    .end local v1           #halfSize:I
    :cond_1
    if-eqz p3, :cond_2

    .line 609
    invoke-virtual {p3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    .line 610
    .local v4, rightOrBottomPixels:I
    const/4 v5, 0x0

    sub-int v6, v0, v4

    sub-int/2addr v6, p4

    aput v6, p7, v5

    .line 611
    const/4 v5, 0x1

    sub-int v6, v0, v4

    aput v6, p7, v5

    goto :goto_0

    .line 614
    .end local v4           #rightOrBottomPixels:I
    :cond_2
    sub-int v5, v0, p4

    div-int/lit8 v3, v5, 0x2

    .line 615
    .local v3, offset:I
    const/4 v5, 0x0

    add-int v6, p5, v3

    aput v6, p7, v5

    .line 616
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, p7, v6

    add-int/2addr v6, p4

    aput v6, p7, v5

    goto :goto_0
.end method

.method private computeVerticalLayoutPosition(ILorg/appcelerator/titanium/TiDimension;II[II)V
    .locals 3
    .parameter "currentHeight"
    .parameter "optionTop"
    .parameter "measuredHeight"
    .parameter "layoutTop"
    .parameter "pos"
    .parameter "maxBottom"

    .prologue
    .line 659
    add-int v1, p4, p1

    .line 660
    .local v1, top:I
    if-eqz p2, :cond_0

    .line 661
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 665
    :cond_0
    add-int v2, v1, p3

    invoke-static {v2, p6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 666
    .local v0, bottom:I
    const/4 v2, 0x0

    aput v1, p5, v2

    .line 667
    const/4 v2, 0x1

    aput v0, p5, v2

    .line 668
    return-void
.end method

.method private static getAsPercentageValue(DI)I
    .locals 4
    .parameter "percentage"
    .parameter "value"

    .prologue
    .line 215
    const-wide/high16 v0, 0x4059

    div-double v0, p0, v0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private hasSizeFillConflict(Landroid/view/View;[IZ)Z
    .locals 8
    .parameter "parent"
    .parameter "conflicts"
    .parameter "firstIteration"

    .prologue
    const/4 v7, 0x2

    const/high16 v6, -0x8000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 750
    instance-of v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v5, :cond_8

    move-object v0, p1

    .line 751
    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 752
    .local v0, currentLayout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 755
    .local v1, currentParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    if-eqz p3, :cond_1

    iget-boolean v5, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-nez v5, :cond_0

    iget-object v5, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v5, :cond_1

    .line 756
    :cond_0
    aput v7, p2, v4

    .line 758
    :cond_1
    if-eqz p3, :cond_3

    iget-boolean v5, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-nez v5, :cond_2

    iget-object v5, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v5, :cond_3

    .line 759
    :cond_2
    aput v7, p2, v3

    .line 766
    :cond_3
    iget-boolean v5, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v5, :cond_4

    iget-object v5, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-nez v5, :cond_4

    aget v5, p2, v4

    if-ne v5, v6, :cond_4

    .line 767
    aput v3, p2, v4

    .line 769
    :cond_4
    iget-boolean v5, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-eqz v5, :cond_5

    iget-object v5, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-nez v5, :cond_5

    aget v5, p2, v3

    if-ne v5, v6, :cond_5

    .line 770
    aput v3, p2, v3

    .line 774
    :cond_5
    aget v5, p2, v4

    if-eq v5, v6, :cond_7

    aget v5, p2, v3

    if-eq v5, v6, :cond_7

    .line 794
    .end local v0           #currentLayout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .end local v1           #currentParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_6
    :goto_0
    return v3

    .line 780
    .restart local v0       #currentLayout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .restart local v1       #currentParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_7
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 781
    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->hasSizeFillConflict(Landroid/view/View;[IZ)Z

    move-result v5

    if-nez v5, :cond_6

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 788
    .end local v0           #currentLayout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .end local v1           #currentParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v2           #i:I
    :cond_8
    if-eqz p3, :cond_9

    aget v5, p2, v4

    if-ne v5, v6, :cond_9

    .line 789
    aput v7, p2, v4

    .line 791
    :cond_9
    if-eqz p3, :cond_a

    aget v5, p2, v3

    if-ne v5, v6, :cond_a

    .line 792
    aput v7, p2, v3

    :cond_a
    move v3, v4

    .line 794
    goto :goto_0
.end method

.method private updateRowForHorizontalWrap(II)V
    .locals 7
    .parameter "maxRight"
    .parameter "currentIndex"

    .prologue
    .line 716
    const/4 v4, 0x0

    .line 717
    .local v4, rowWidth:I
    const/4 v3, 0x0

    .line 718
    .local v3, rowHeight:I
    const/4 v1, 0x0

    .line 719
    .local v1, i:I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getHeight()I

    move-result v2

    .line 720
    .local v2, parentHeight:I
    const/4 v5, 0x0

    iput v5, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 722
    move v1, p2

    :goto_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 723
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 725
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 726
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v0, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;I)I

    move-result v6

    add-int v3, v5, v6

    .line 728
    if-le v4, p1, :cond_0

    .line 729
    add-int/lit8 v5, v1, -0x1

    iput v5, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    .line 745
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-void

    .line 732
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    if-ne v4, p1, :cond_3

    .line 741
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v5, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    if-ge v5, v3, :cond_2

    .line 742
    iput v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 744
    :cond_2
    iput v1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    goto :goto_1

    .line 736
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    iget v5, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    if-ge v5, v3, :cond_4

    .line 737
    iput v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 722
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "view"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 204
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return v0
.end method

.method protected constrainChild(Landroid/view/View;IIII)V
    .locals 10
    .parameter "child"
    .parameter "width"
    .parameter "wMode"
    .parameter "height"
    .parameter "hMode"

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 350
    .local v4, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v8, 0x2

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 351
    .local v5, sizeFillConflicts:[I
    const/4 v0, 0x0

    .line 354
    .local v0, checkedForConflict:Z
    const/4 v1, -0x2

    .line 355
    .local v1, childDimension:I
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v8, :cond_3

    .line 356
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v8

    if-eqz v8, :cond_2

    if-lez p2, :cond_2

    .line 357
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v8

    invoke-static {v8, v9, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v1

    .line 374
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;I)I

    move-result v6

    .line 375
    .local v6, widthPadding:I
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v8, v6, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 378
    .local v7, widthSpec:I
    const/4 v1, -0x2

    .line 379
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v8, :cond_6

    .line 380
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v8

    if-eqz v8, :cond_5

    if-lez p4, :cond_5

    .line 381
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v8

    invoke-static {v8, v9, p4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v1

    .line 397
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;I)I

    move-result v2

    .line 398
    .local v2, heightPadding:I
    invoke-static {p4, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v8, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 401
    .local v3, heightSpec:I
    invoke-virtual {p1, v7, v3}, Landroid/view/View;->measure(II)V

    .line 405
    return-void

    .line 359
    .end local v2           #heightPadding:I
    .end local v3           #heightSpec:I
    .end local v6           #widthPadding:I
    .end local v7           #widthSpec:I
    :cond_2
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v8, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    .line 362
    :cond_3
    iget-boolean v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v8, :cond_4

    .line 363
    const/4 v1, -0x1

    goto :goto_0

    .line 366
    :cond_4
    const/4 v8, 0x1

    invoke-direct {p0, p1, v5, v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->hasSizeFillConflict(Landroid/view/View;[IZ)Z

    .line 367
    const/4 v0, 0x1

    .line 368
    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 369
    const/4 v1, -0x1

    goto :goto_0

    .line 383
    .restart local v6       #widthPadding:I
    .restart local v7       #widthSpec:I
    :cond_5
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v8, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    .line 387
    :cond_6
    iget-boolean v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-nez v8, :cond_7

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 388
    :cond_7
    const/4 v1, -0x1

    goto :goto_1

    .line 389
    :cond_8
    if-nez v0, :cond_1

    .line 390
    const/4 v8, 0x1

    invoke-direct {p0, p1, v5, v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->hasSizeFillConflict(Landroid/view/View;[IZ)Z

    .line 391
    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 392
    const/4 v1, -0x1

    goto :goto_1

    .line 350
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x3f80

    .line 640
    iget v1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->alpha:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 641
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 642
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 643
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->alpha:F

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v3, 0x1f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 646
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 648
    iget v1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->alpha:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 652
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 654
    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->generateDefaultLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method protected getHeightMeasureSpec(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 802
    const/high16 v0, 0x4000

    return v0
.end method

.method protected getMeasuredHeight(II)I
    .locals 1
    .parameter "maxHeight"
    .parameter "heightSpec"

    .prologue
    .line 470
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method protected getMeasuredWidth(II)I
    .locals 1
    .parameter "maxWidth"
    .parameter "widthSpec"

    .prologue
    .line 465
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method protected getViewHeightPadding(Landroid/view/View;I)I
    .locals 4
    .parameter "child"
    .parameter "parentHeight"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 242
    .local v0, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 243
    .local v1, padding:I
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v2

    add-int/2addr v1, v2

    .line 250
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v2

    add-int/2addr v1, v2

    .line 257
    :cond_1
    :goto_1
    return v1

    .line 247
    :cond_2
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 254
    :cond_3
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected getViewWidthPadding(Landroid/view/View;I)I
    .locals 4
    .parameter "child"
    .parameter "parentWidth"

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 221
    .local v0, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 222
    .local v1, padding:I
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v2

    add-int/2addr v1, v2

    .line 229
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v2

    add-int/2addr v1, v2

    .line 236
    :cond_1
    :goto_1
    return v1

    .line 226
    :cond_2
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 233
    :cond_3
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected getWidthMeasureSpec(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 798
    const/high16 v0, 0x4000

    return v0
.end method

.method protected isDefaultArrangement()Z
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHorizontalArrangement()Z
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalArrangement()Z
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 190
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 191
    const-string v0, "TiCompositeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 197
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "TiCompositeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 34
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 476
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v22

    .line 478
    .local v22, count:I
    const/16 v27, 0x0

    .line 479
    .local v27, left:I
    const/4 v8, 0x0

    .line 480
    .local v8, top:I
    sub-int v7, p4, p2

    .line 481
    .local v7, right:I
    sub-int v9, p5, p3

    .line 483
    .local v9, bottom:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    if-eqz v3, :cond_2

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    .line 485
    const/4 v3, 0x1

    move/from16 v0, v22

    if-le v0, v3, :cond_1

    .line 486
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    .line 487
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 488
    .local v21, child:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 490
    .local v4, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput v12, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 486
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 494
    .end local v4           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v21           #child:Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->detachAllViewsFromParent()V

    .line 495
    const/4 v12, 0x0

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 497
    .restart local v21       #child:Landroid/view/View;
    add-int/lit8 v25, v12, 0x1

    .end local v12           #i:I
    .local v25, i:I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move/from16 v12, v25

    .end local v25           #i:I
    .restart local v12       #i:I
    goto :goto_1

    .line 500
    .end local v12           #i:I
    .end local v21           #child:Landroid/view/View;
    .end local v26           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 504
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    .line 506
    const/4 v3, 0x2

    new-array v10, v3, [I

    .line 507
    .local v10, horizontal:[I
    const/4 v3, 0x2

    new-array v11, v3, [I

    .line 509
    .local v11, vertical:[I
    const/16 v24, 0x0

    .line 511
    .local v24, currentHeight:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_c

    .line 512
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 513
    .restart local v21       #child:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 515
    .restart local v4       #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v13, 0x8

    if-eq v3, v13, :cond_b

    .line 518
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 519
    .local v6, childMeasuredHeight:I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 521
    .local v5, childMeasuredWidth:I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 522
    if-nez v12, :cond_3

    .line 523
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 524
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 525
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 526
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    .line 527
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    .line 528
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->updateRowForHorizontalWrap(II)V

    :cond_3
    move-object/from16 v3, p0

    .line 530
    invoke-direct/range {v3 .. v12}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computeHorizontalLayoutPosition(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIIII[I[II)V

    .line 552
    :cond_4
    :goto_3
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 553
    const-string v3, "TiCompositeLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " {"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v3, v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_5
    const/4 v3, 0x1

    aget v3, v10, v3

    const/4 v13, 0x0

    aget v13, v10, v13

    sub-int v30, v3, v13

    .line 558
    .local v30, newWidth:I
    const/4 v3, 0x1

    aget v3, v11, v3

    const/4 v13, 0x0

    aget v13, v11, v13

    sub-int v28, v3, v13

    .line 561
    .local v28, newHeight:I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v30

    if-ne v0, v3, :cond_6

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move/from16 v0, v28

    if-eq v0, v3, :cond_7

    .line 563
    :cond_6
    const/high16 v3, 0x4000

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 564
    .local v31, newWidthSpec:I
    const/high16 v3, 0x4000

    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 565
    .local v29, newHeightSpec:I
    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 568
    .end local v29           #newHeightSpec:I
    .end local v31           #newWidthSpec:I
    :cond_7
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRootActivityAvailable()Z

    move-result v3

    if-nez v3, :cond_a

    .line 569
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v23

    .line 570
    .local v23, currentActivity:Landroid/app/Activity;
    move-object/from16 v0, v23

    instance-of v3, v0, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-eqz v3, :cond_a

    .line 571
    check-cast v23, Lorg/appcelerator/titanium/TiLaunchActivity;

    .end local v23           #currentActivity:Landroid/app/Activity;
    invoke-virtual/range {v23 .. v23}, Lorg/appcelerator/titanium/TiLaunchActivity;->isJSActivity()Z

    move-result v3

    if-nez v3, :cond_a

    .line 572
    const-string v3, "TiCompositeLayout"

    const-string v13, "The root activity is no longer available.  Skipping layout pass."

    const-string v14, "DEBUG_MODE"

    invoke-static {v3, v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .end local v4           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v5           #childMeasuredWidth:I
    .end local v6           #childMeasuredHeight:I
    .end local v21           #child:Landroid/view/View;
    .end local v28           #newHeight:I
    .end local v30           #newWidth:I
    :goto_4
    return-void

    .line 535
    .restart local v4       #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .restart local v5       #childMeasuredWidth:I
    .restart local v6       #childMeasuredHeight:I
    .restart local v21       #child:Landroid/view/View;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getHeight()I

    move-result v17

    move-object/from16 v13, p0

    move-object v14, v4

    move v15, v8

    move/from16 v16, v9

    move/from16 v18, v6

    invoke-direct/range {v13 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->calculateHeightFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I

    move-result v6

    .line 536
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getWidth()I

    move-result v17

    move-object/from16 v13, p0

    move-object v14, v4

    move/from16 v15, v27

    move/from16 v16, v7

    move/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->calculateWidthFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I

    move-result v5

    .line 538
    iget-object v14, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    iget-object v15, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v16, v0

    move-object/from16 v13, p0

    move/from16 v17, v5

    move/from16 v18, v27

    move/from16 v19, v7

    move-object/from16 v20, v10

    invoke-static/range {v13 .. v20}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 539
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 540
    iget-object v15, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v13, p0

    move/from16 v14, v24

    move/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v18, v11

    move/from16 v19, v9

    invoke-direct/range {v13 .. v19}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computeVerticalLayoutPosition(ILorg/appcelerator/titanium/TiDimension;II[II)V

    .line 543
    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v32, v0

    .line 544
    .local v32, optionBottom:Lorg/appcelerator/titanium/TiDimension;
    if-eqz v32, :cond_4

    .line 545
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int v24, v24, v3

    goto/16 :goto_3

    .line 548
    .end local v32           #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    :cond_9
    iget-object v14, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    iget-object v15, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v16, v0

    move-object/from16 v13, p0

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v11

    invoke-static/range {v13 .. v20}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    goto/16 :goto_3

    .line 578
    .restart local v28       #newHeight:I
    .restart local v30       #newWidth:I
    :cond_a
    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v13, 0x0

    aget v13, v11, v13

    const/4 v14, 0x1

    aget v14, v10, v14

    const/4 v15, 0x1

    aget v15, v11, v15

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 580
    add-int v24, v24, v28

    .line 581
    iget-object v3, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_b

    .line 582
    iget-object v3, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int v24, v24, v3

    .line 511
    .end local v5           #childMeasuredWidth:I
    .end local v6           #childMeasuredHeight:I
    .end local v28           #newHeight:I
    .end local v30           #newWidth:I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 587
    .end local v4           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v21           #child:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->proxy:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_d

    const/16 v33, 0x0

    .line 588
    .local v33, viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_5
    invoke-static/range {v33 .. v33}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto/16 :goto_4

    .line 587
    .end local v33           #viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->proxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v33, v3

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 263
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v9

    .line 264
    .local v9, childCount:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 265
    .local v21, wFromSpec:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 266
    .local v12, hFromSpec:I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumWidth()I

    move-result v22

    .line 267
    .local v22, wSuggested:I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumHeight()I

    move-result v13

    .line 268
    .local v13, hSuggested:I
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 269
    .local v5, w:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 270
    .local v6, wMode:I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 271
    .local v7, h:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 273
    .local v8, hMode:I
    const/16 v18, 0x0

    .line 274
    .local v18, maxWidth:I
    const/16 v17, 0x0

    .line 277
    .local v17, maxHeight:I
    const/4 v15, 0x0

    .line 278
    .local v15, horizontalRowWidth:I
    const/4 v14, 0x0

    .line 280
    .local v14, horizontalRowHeight:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v9, :cond_6

    .line 281
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 282
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v3, v0, :cond_0

    move-object/from16 v3, p0

    .line 283
    invoke-virtual/range {v3 .. v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->constrainChild(Landroid/view/View;IIII)V

    .line 286
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 287
    .local v11, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 288
    .local v10, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v3, v0, :cond_1

    .line 289
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v11, v3

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v10, v3

    .line 293
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    if-eqz v3, :cond_3

    .line 296
    add-int v3, v15, v11

    if-le v3, v5, :cond_2

    .line 297
    move v15, v11

    .line 298
    add-int v17, v17, v14

    .line 299
    move v14, v10

    .line 310
    :goto_1
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 280
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 302
    :cond_2
    add-int/2addr v15, v11

    .line 303
    move/from16 v0, v18

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    goto :goto_1

    .line 308
    :cond_3
    add-int v18, v18, v11

    goto :goto_1

    .line 313
    :cond_4
    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 315
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 316
    add-int v17, v17, v10

    goto :goto_2

    .line 318
    :cond_5
    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto :goto_2

    .line 324
    .end local v4           #child:Landroid/view/View;
    .end local v10           #childHeight:I
    .end local v11           #childWidth:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 325
    add-int v17, v17, v14

    .line 329
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingRight()I

    move-result v23

    add-int v3, v3, v23

    add-int v18, v18, v3

    .line 330
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingBottom()I

    move-result v23

    add-int v3, v3, v23

    add-int v17, v17, v3

    .line 338
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 339
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 341
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredWidth(II)I

    move-result v20

    .line 342
    .local v20, measuredWidth:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight(II)I

    move-result v19

    .line 343
    .local v19, measuredHeight:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMeasuredDimension(II)V

    .line 344
    return-void
.end method

.method public resort()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 184
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->requestLayout()V

    .line 185
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->invalidate()V

    .line 186
    return-void
.end method

.method public setAlphaCompat(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 631
    iput p1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->alpha:F

    .line 632
    return-void
.end method

.method public setEnableHorizontalWrap(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 880
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    .line 881
    return-void
.end method

.method public setLayoutArrangement(Ljava/lang/String;)V
    .locals 1
    .parameter "arrangementProperty"

    .prologue
    .line 869
    if-eqz p1, :cond_0

    const-string v0, "horizontal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 876
    :goto_0
    return-void

    .line 871
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "vertical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0

    .line 874
    :cond_1
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 885
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->proxy:Ljava/lang/ref/WeakReference;

    .line 886
    return-void
.end method
