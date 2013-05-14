.class Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiVerticalScrollView"
.end annotation


# instance fields
.field private layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "arrangement"

    .prologue
    const/4 v2, -0x1

    .line 165
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    .line 166
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->setScrollBarStyle(I)V

    .line 169
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-direct {v1, p1, p2, p3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    .line 170
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-super {p0, v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    return-void
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 207
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void
.end method

.method public getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$200(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$300(Lti/modules/titanium/ui/widget/TiUIScrollView;)I

    move-result v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$400(Lti/modules/titanium/ui/widget/TiUIScrollView;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->scrollTo(II)V

    .line 216
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    const/4 v1, 0x1

    #setter for: Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z
    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$202(Lti/modules/titanium/ui/widget/TiUIScrollView;Z)Z

    .line 219
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 197
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 236
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setParentHeight(I)V

    .line 237
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setParentWidth(I)V

    .line 238
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 244
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 245
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getMeasuredHeight()I

    move-result v3

    .line 247
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v5, v6}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 251
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    .line 252
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 257
    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 258
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 261
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v3           #height:I
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 226
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 227
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "y"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-virtual {v1, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setContentOffset(II)V

    .line 230
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "scroll"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$100(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    :goto_0
    return v1

    .line 189
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
