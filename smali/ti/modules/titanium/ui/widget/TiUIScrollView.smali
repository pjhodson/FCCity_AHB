.class public Lti/modules/titanium/ui/widget/TiUIScrollView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;,
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;,
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIScrollView"

.field public static final TYPE_HORIZONTAL:I = 0x1

.field public static final TYPE_VERTICAL:I


# instance fields
.field private mScrollingEnabled:Z

.field private offsetX:I

.field private offsetY:I

.field private setInitialOffset:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 38
    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 39
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    .line 40
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z

    .line 375
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 376
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 377
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIScrollView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    return v0
.end method

.method static synthetic access$202(Lti/modules/titanium/ui/widget/TiUIScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    return p1
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    return v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    return v0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 599
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 601
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->requestLayout()V

    .line 603
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 607
    :cond_0
    return-void
.end method

.method public getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .locals 2

    .prologue
    .line 542
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 543
    .local v0, nativeView:Landroid/view/View;
    instance-of v1, v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v1, :cond_0

    .line 544
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v0           #nativeView:Landroid/view/View;
    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->access$500(Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    .restart local v0       #nativeView:Landroid/view/View;
    :cond_0
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v0           #nativeView:Landroid/view/View;
    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->access$600(Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    goto :goto_0
.end method

.method public getScrollingEnabled()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z

    return v0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 17
    .parameter "d"

    .prologue
    .line 433
    const/4 v9, 0x0

    .line 434
    .local v9, showHorizontalScrollBar:Z
    const/4 v10, 0x0

    .line 436
    .local v10, showVerticalScrollBar:Z
    const-string v14, "scrollingEnabled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 437
    const-string v14, "scrollingEnabled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setScrollingEnabled(Ljava/lang/Object;)V

    .line 440
    :cond_0
    const-string v14, "showHorizontalScrollIndicator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 441
    const-string v14, "showHorizontalScrollIndicator"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v9

    .line 443
    :cond_1
    const-string v14, "showVerticalScrollIndicator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 444
    const-string v14, "showVerticalScrollIndicator"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v10

    .line 447
    :cond_2
    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 448
    const-string v14, "TiUIScrollView"

    const-string v15, "Both scroll bars cannot be shown. Defaulting to vertical shown"

    invoke-static {v14, v15}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v9, 0x0

    .line 452
    :cond_3
    const-string v14, "contentOffset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 453
    const-string v14, "contentOffset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 454
    .local v6, offset:Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setContentOffset(Ljava/lang/Object;)V

    .line 457
    .end local v6           #offset:Ljava/lang/Object;
    :cond_4
    const/4 v11, 0x0

    .line 458
    .local v11, type:I
    const/4 v4, 0x0

    .line 460
    .local v4, deduced:Z
    const-string v14, "width"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "contentWidth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 461
    const-string v14, "width"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 462
    .local v13, width:Ljava/lang/Object;
    const-string v14, "contentWidth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 463
    .local v3, contentWidth:Ljava/lang/Object;
    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    if-eqz v10, :cond_6

    .line 464
    :cond_5
    const/4 v11, 0x0

    .line 465
    const/4 v4, 0x1

    .line 469
    .end local v3           #contentWidth:Ljava/lang/Object;
    .end local v13           #width:Ljava/lang/Object;
    :cond_6
    const-string v14, "height"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "contentHeight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 470
    const-string v14, "height"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 471
    .local v5, height:Ljava/lang/Object;
    const-string v14, "contentHeight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 472
    .local v2, contentHeight:Ljava/lang/Object;
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    if-eqz v9, :cond_8

    .line 473
    :cond_7
    const/4 v11, 0x1

    .line 474
    const/4 v4, 0x1

    .line 479
    .end local v2           #contentHeight:Ljava/lang/Object;
    .end local v5           #height:Ljava/lang/Object;
    :cond_8
    const-string v14, "scrollType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 480
    const-string v14, "scrollType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 481
    .local v7, scrollType:Ljava/lang/Object;
    const-string v14, "vertical"

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 482
    const/4 v11, 0x0

    .line 496
    .end local v7           #scrollType:Ljava/lang/Object;
    :cond_9
    :goto_0
    const/4 v12, 0x0

    .line 497
    .local v12, view:Landroid/view/View;
    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 499
    .local v1, arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v14, "layout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "layout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "vertical"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 500
    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 505
    :cond_a
    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 513
    const-string v14, "TiUIScrollView"

    const-string v15, "creating vertical scroll view"

    const-string v16, "DEBUG_MODE"

    invoke-static/range {v14 .. v16}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v12, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v12           #view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v14

    invoke-virtual {v14}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .restart local v12       #view:Landroid/view/View;
    move-object v14, v12

    .line 515
    check-cast v14, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    invoke-virtual {v14}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v8

    .line 518
    .local v8, scrollViewLayout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    :goto_2
    const-string v14, "canCancelEvents"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 519
    const-string v14, "canCancelEvents"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v8, v14}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setCanCancelEvents(Z)V

    .line 522
    :cond_b
    const-string v14, "horizontalWrap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 523
    const-string v14, "horizontalWrap"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v8, v14}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setEnableHorizontalWrap(Z)V

    .line 526
    :cond_c
    const-string v14, "overScrollMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 527
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x9

    if-lt v14, v15, :cond_d

    .line 528
    const-string v14, "overScrollMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/View;->setOverScrollMode(I)V

    .line 532
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setNativeView(Landroid/view/View;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    invoke-virtual {v14, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    invoke-virtual {v14, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 537
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 538
    return-void

    .line 483
    .end local v1           #arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .end local v8           #scrollViewLayout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .end local v12           #view:Landroid/view/View;
    .restart local v7       #scrollType:Ljava/lang/Object;
    :cond_e
    const-string v14, "horizontal"

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 484
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 486
    :cond_f
    const-string v14, "TiUIScrollView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "scrollType value \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' is invalid. Only \'vertical\' and \'horizontal\' are supported."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 489
    .end local v7           #scrollType:Ljava/lang/Object;
    :cond_10
    if-nez v4, :cond_9

    if-nez v11, :cond_9

    .line 490
    const-string v14, "TiUIScrollView"

    const-string v15, "Scroll direction could not be determined based on the provided view properties. Default VERTICAL scroll direction being used. Use the \'scrollType\' property to explicitly set the scrolling direction."

    invoke-static {v14, v15}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 501
    .restart local v1       #arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .restart local v12       #view:Landroid/view/View;
    :cond_11
    const-string v14, "layout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, "layout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "horizontal"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 502
    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto/16 :goto_1

    .line 507
    :pswitch_0
    const-string v14, "TiUIScrollView"

    const-string v15, "creating horizontal scroll view"

    const-string v16, "DEBUG_MODE"

    invoke-static/range {v14 .. v16}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v12, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v12           #view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v14

    invoke-virtual {v14}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .restart local v12       #view:Landroid/view/View;
    move-object v14, v12

    .line 509
    check-cast v14, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    invoke-virtual {v14}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v8

    .line 510
    .restart local v8       #scrollViewLayout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    goto/16 :goto_2

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 403
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const-string v2, "TiUIScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    const-string v2, "contentOffset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setContentOffset(Ljava/lang/Object;)V

    .line 408
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollTo(II)V

    .line 410
    :cond_1
    const-string v2, "canCancelEvents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 412
    .local v1, view:Landroid/view/View;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 413
    .local v0, canCancelEvents:Z
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    if-eqz v2, :cond_5

    .line 414
    check-cast v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setCanCancelEvents(Z)V

    .line 419
    .end local v0           #canCancelEvents:Z
    :cond_2
    :goto_0
    const-string v2, "scrollingEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setScrollingEnabled(Ljava/lang/Object;)V

    .line 422
    :cond_3
    const-string v2, "overScrollMode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 423
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    .line 424
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p3, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 427
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 428
    return-void

    .line 415
    .restart local v0       #canCancelEvents:Z
    .restart local v1       #view:Landroid/view/View;
    :cond_5
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v2, :cond_2

    .line 416
    check-cast v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setCanCancelEvents(Z)V

    goto :goto_0
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 612
    if-eqz p1, :cond_0

    .line 613
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 614
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    .line 616
    .local v1, nv:Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 617
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #nv:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 618
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 619
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 623
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 580
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 581
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->computeScroll()V

    .line 582
    return-void
.end method

.method public scrollToBottom()V
    .locals 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 587
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 588
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .line 589
    .local v0, scrollView:Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->fullScroll(I)Z

    .line 594
    .end local v0           #scrollView:Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 591
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .line 592
    .local v0, scrollView:Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;
    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->fullScroll(I)Z

    goto :goto_0
.end method

.method public setContentOffset(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 381
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 382
    .local v0, offset:Lorg/appcelerator/kroll/KrollDict;
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    .line 383
    iput p2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 384
    const-string v1, "x"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "y"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "contentOffset"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public setContentOffset(Ljava/lang/Object;)V
    .locals 3
    .parameter "hashMap"

    .prologue
    .line 391
    instance-of v1, p1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 392
    check-cast v0, Ljava/util/HashMap;

    .line 393
    .local v0, contentOffset:Ljava/util/HashMap;
    const-string v1, "x"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    .line 394
    const-string v1, "y"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 398
    .end local v0           #contentOffset:Ljava/util/HashMap;
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v1, "TiUIScrollView"

    const-string v2, "ContentOffset must be an instance of HashMap"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setOnClickListener(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 553
    move-object v0, p1

    .line 555
    .local v0, targetView:Landroid/view/View;
    instance-of v1, p1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    check-cast v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->access$500(Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    .line 558
    :cond_0
    instance-of v1, p1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    check-cast v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->access$600(Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    .line 561
    :cond_1
    invoke-super {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setOnClickListener(Landroid/view/View;)V

    .line 562
    return-void
.end method

.method public setScrollingEnabled(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 567
    :try_start_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z

    goto :goto_0
.end method
