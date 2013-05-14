.class public Lti/modules/titanium/ui/widget/TiUIScrollableView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;,
        Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final PAGE_LEFT:I = 0xc8

.field private static final PAGE_RIGHT:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TiUIScrollableView"


# instance fields
.field private final mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

.field private final mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private mCurIndex:I

.field private mEnabled:Z

.field private final mPager:Landroid/support/v4/view/ViewPager;

.field private final mPagingControl:Landroid/widget/RelativeLayout;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/ScrollableViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    .line 57
    invoke-virtual {p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 58
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    .line 60
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildViewPager(Landroid/content/Context;Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    .line 62
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;

    invoke-direct {v1, p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 63
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildPagingControl(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setNativeView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return v0
.end method

.method static synthetic access$102(Lti/modules/titanium/ui/widget/TiUIScrollableView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return p1
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->shouldShowPager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 209
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 210
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 211
    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 212
    return-object v0
.end method

.method private buildPagingControl(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x50

    const/4 v5, -0x2

    .line 217
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 219
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 221
    new-instance v1, Lti/modules/titanium/ui/widget/TiArrowView;

    invoke-direct {v1, p1}, Lti/modules/titanium/ui/widget/TiArrowView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v1, left:Lti/modules/titanium/ui/widget/TiArrowView;
    invoke-virtual {v1, v8}, Lti/modules/titanium/ui/widget/TiArrowView;->setVisibility(I)V

    .line 223
    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setId(I)V

    .line 224
    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumWidth(I)V

    .line 225
    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumHeight(I)V

    .line 226
    new-instance v4, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 234
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v3, Lti/modules/titanium/ui/widget/TiArrowView;

    invoke-direct {v3, p1}, Lti/modules/titanium/ui/widget/TiArrowView;-><init>(Landroid/content/Context;)V

    .line 239
    .local v3, right:Lti/modules/titanium/ui/widget/TiArrowView;
    invoke-virtual {v3, v7}, Lti/modules/titanium/ui/widget/TiArrowView;->setLeft(Z)V

    .line 240
    invoke-virtual {v3, v8}, Lti/modules/titanium/ui/widget/TiArrowView;->setVisibility(I)V

    .line 241
    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setId(I)V

    .line 242
    invoke-virtual {v3, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumWidth(I)V

    .line 243
    invoke-virtual {v3, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumHeight(I)V

    .line 244
    new-instance v4, Lti/modules/titanium/ui/widget/TiUIScrollableView$4;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$4;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 254
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    return-object v0
.end method

.method private buildViewPager(Landroid/content/Context;Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;)Landroid/support/v4/view/ViewPager;
    .locals 2
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 73
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V

    .line 94
    .local v0, pager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 95
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 194
    return-object v0
.end method

.method private clearViewsList()V
    .locals 3

    .prologue
    .line 411
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 415
    .local v1, viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_1

    .line 417
    .end local v1           #viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private move(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 372
    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 373
    :cond_0
    const-string v0, "TiUIScrollableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to move to index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored, as it is out-of-bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_1
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    .line 377
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method private shouldShowPager()Z
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "showPagingControl"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, showPagingControl:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 203
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 322
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "views"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 327
    :cond_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    return v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hidePager()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 358
    return-void
.end method

.method public moveNext()V
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(I)V

    .line 363
    return-void
.end method

.method public movePrevious()V
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(I)V

    .line 368
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 265
    const-string v1, "views"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "views"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setViews(Ljava/lang/Object;)V

    .line 269
    :cond_0
    const-string v1, "currentPage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    const-string v1, "currentPage"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, page:I
    if-lez v0, :cond_1

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(Ljava/lang/Object;)V

    .line 276
    .end local v0           #page:I
    :cond_1
    const-string v1, "showPagingControl"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    const-string v1, "showPagingControl"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 282
    :cond_2
    const-string v1, "scrollingEnabled"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    const-string v1, "scrollingEnabled"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    .line 286
    :cond_3
    const-string v1, "overScrollMode"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_4

    .line 288
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    const-string v2, "overScrollMode"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    .line 292
    :cond_4
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 294
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 300
    const-string v1, "currentPage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(Ljava/lang/Object;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v1, "showPagingControl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 304
    .local v0, show:Z
    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->hidePager()V

    goto :goto_0

    .line 309
    .end local v0           #show:Z
    :cond_3
    const-string v1, "scrollingEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 310
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    goto :goto_0

    .line 311
    :cond_4
    const-string v1, "overScrollMode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 312
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 313
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-static {p3, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    goto :goto_0

    .line 316
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 448
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 450
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 449
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 453
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 454
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 455
    .local v2, viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_1

    .line 457
    .end local v2           #viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 459
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 460
    return-void
.end method

.method public removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 331
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "views"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 336
    :cond_0
    return-void
.end method

.method public scrollTo(Ljava/lang/Object;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 382
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 383
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(I)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(I)V

    goto :goto_0
.end method

.method public setCurrentPage(Ljava/lang/Object;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->scrollTo(Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 401
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    .line 402
    return-void
.end method

.method public setViews(Ljava/lang/Object;)V
    .locals 5
    .parameter "viewsObject"

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, changed:Z
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->clearViewsList()V

    .line 425
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 426
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 427
    .local v3, views:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 428
    aget-object v4, v3, v1

    instance-of v4, v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_0

    .line 429
    aget-object v2, v3, v1

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 430
    .local v2, tv:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const/4 v0, 0x1

    .line 427
    .end local v2           #tv:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v1           #i:I
    .end local v3           #views:[Ljava/lang/Object;
    :cond_1
    if-eqz v0, :cond_2

    .line 436
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 438
    :cond_2
    return-void
.end method

.method public showPager()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v4, 0xc9

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_2

    .line 348
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->setPagerTimeout()V

    .line 353
    return-void

    :cond_3
    move v1, v3

    .line 343
    goto :goto_0
.end method
