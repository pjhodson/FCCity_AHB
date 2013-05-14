.class Lti/modules/titanium/ui/widget/TiUIScrollableView$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "TiUIScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildViewPager(Landroid/content/Context;Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;)Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isValidScroll:Z

.field private justFiredDragEnd:Z

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 97
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->isValidScroll:Z

    .line 98
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->justFiredDragEnd:Z

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5
    .parameter "scrollState"

    .prologue
    .line 103
    if-nez p1, :cond_4

    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->isValidScroll:Z

    if-eqz v1, :cond_4

    .line 104
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v0

    .line 106
    .local v0, oldIndex:I
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 107
    if-ltz v0, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireFocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireUnfocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 116
    if-ltz v0, :cond_1

    .line 121
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$300(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/ScrollableViewProxy;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v3

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v3, v2}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireScrollEnd(ILorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 124
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #calls: Lti/modules/titanium/ui/widget/TiUIScrollableView;->shouldShowPager()Z
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$400(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 133
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->isValidScroll:Z

    .line 141
    .end local v0           #oldIndex:I
    :cond_3
    :goto_0
    return-void

    .line 134
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 135
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$500(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/ScrollableViewProxy;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v3

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v3, v2}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireDragEnd(ILorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->justFiredDragEnd:Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .parameter "positionRoundedDown"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->isValidScroll:Z

    .line 180
    int-to-float v1, p1

    add-float v0, p2, v1

    .line 186
    .local v0, positionFloat:F
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    #setter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v1, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$102(Lti/modules/titanium/ui/widget/TiUIScrollableView;I)I

    .line 187
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$700(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/ScrollableViewProxy;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v3

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v3, v0, v2}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireScroll(IFLorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->justFiredDragEnd:Z

    .line 192
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "page"

    .prologue
    .line 154
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->justFiredDragEnd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$600(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/ScrollableViewProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I
    invoke-static {v3}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v2, v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireScrollEnd(ILorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 157
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #calls: Lti/modules/titanium/ui/widget/TiUIScrollableView;->shouldShowPager()Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$400(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 161
    :cond_0
    return-void
.end method
