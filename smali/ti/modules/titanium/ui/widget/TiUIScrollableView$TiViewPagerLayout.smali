.class public Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiUIScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiViewPagerLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 536
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .line 537
    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$800(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 538
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setFocusable(Z)V

    .line 539
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setFocusableInTouchMode(Z)V

    .line 540
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->setDescendantFocusability(I)V

    .line 541
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 592
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 581
    :pswitch_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->movePrevious()V

    .line 582
    const/4 v0, 0x1

    .line 583
    goto :goto_0

    .line 586
    :pswitch_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->moveNext()V

    .line 587
    const/4 v0, 0x1

    goto :goto_0

    .line 592
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 579
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 557
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 559
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 571
    .end local v0           #action:I
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 561
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 566
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 547
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #calls: Lti/modules/titanium/ui/widget/TiUIScrollableView;->shouldShowPager()Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$400(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->access$900(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 550
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
