.class public Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiScrollViewLayout"
.end annotation


# static fields
.field private static final AUTO:I = 0x7fffffff


# instance fields
.field private canCancelEvents:Z

.field private parentHeight:I

.field private parentWidth:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "arrangement"

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    .line 51
    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {p1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 45
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    .line 46
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->canCancelEvents:Z

    .line 52
    return-void
.end method

.method private getContentProperty(Ljava/lang/String;)I
    .locals 6
    .parameter "property"

    .prologue
    const v3, 0x7fffffff

    .line 83
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 85
    const-string v4, "auto"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    .end local v2           #value:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 87
    .restart local v2       #value:Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 88
    check-cast v2, Ljava/lang/Number;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_0

    .line 90
    .restart local v2       #value:Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 92
    .local v1, type:I
    const-string v4, "contentHeight"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    const/4 v1, 0x7

    .line 97
    :cond_3
    :goto_1
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 98
    .local v0, dimension:Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiDimension;->getUnits()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiDimension;->getIntValue()I

    move-result v3

    goto :goto_0

    .line 94
    .end local v0           #dimension:Lorg/appcelerator/titanium/TiDimension;
    :cond_4
    const-string v4, "contentWidth"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    const/4 v1, 0x6

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 74
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->canCancelEvents:Z

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getHeightMeasureSpec(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 118
    const-string v1, "contentHeight"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, contentHeight:I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 122
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getHeightMeasureSpec(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method protected getMeasuredHeight(II)I
    .locals 2
    .parameter "maxHeight"
    .parameter "heightSpec"

    .prologue
    .line 145
    const-string v1, "contentHeight"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, contentHeight:I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 147
    move v0, p1

    .line 151
    :cond_0
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    if-le v0, v1, :cond_1

    .line 154
    .end local v0           #contentHeight:I
    :goto_0
    return v0

    .restart local v0       #contentHeight:I
    :cond_1
    invoke-static {p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->resolveSize(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getMeasuredWidth(II)I
    .locals 2
    .parameter "maxWidth"
    .parameter "widthSpec"

    .prologue
    .line 129
    const-string v1, "contentWidth"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, contentWidth:I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 131
    move v0, p1

    .line 135
    :cond_0
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    if-le v0, v1, :cond_1

    .line 138
    .end local v0           #contentWidth:I
    :goto_0
    return v0

    .restart local v0       #contentWidth:I
    :cond_1
    invoke-static {p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->resolveSize(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getWidthMeasureSpec(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 107
    const-string v1, "contentWidth"

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->getContentProperty(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, contentWidth:I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 111
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getWidthMeasureSpec(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public setCanCancelEvents(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 66
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->canCancelEvents:Z

    .line 67
    return-void
.end method

.method public setParentHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 61
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentHeight:I

    .line 62
    return-void
.end method

.method public setParentWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 56
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->parentWidth:I

    .line 57
    return-void
.end method
