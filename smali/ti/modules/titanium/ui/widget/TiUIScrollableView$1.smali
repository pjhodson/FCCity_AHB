.class Lti/modules/titanium/ui/widget/TiUIScrollableView$1;
.super Landroid/support/v4/view/ViewPager;
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
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 74
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 86
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 77
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
