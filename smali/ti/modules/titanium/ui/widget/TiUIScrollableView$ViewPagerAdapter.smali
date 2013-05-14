.class public Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TiUIScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final mViewProxies:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, viewProxies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 467
    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->mViewProxies:Ljava/util/ArrayList;

    .line 468
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 473
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 474
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->mViewProxies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 475
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->mViewProxies:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 476
    .local v0, proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 478
    .end local v0           #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 481
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->mViewProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 525
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->mViewProxies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const/4 v0, -0x2

    .line 528
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "position"

    .prologue
    .line 492
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 493
    .local v0, pager:Landroid/support/v4/view/ViewPager;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->mViewProxies:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 494
    .local v1, tiProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 495
    .local v2, tiView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v3

    .line 496
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 497
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 499
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge p2, v4, :cond_1

    .line 500
    invoke-virtual {v0, v3, p2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 504
    :goto_0
    return-object v3

    .line 502
    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 510
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 514
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 520
    return-void
.end method
