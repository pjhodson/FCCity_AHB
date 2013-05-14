.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;


# direct methods
.method protected constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .parameter "a"

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 621
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-boolean v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    if-eqz v4, :cond_2

    .line 622
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 623
    .local v3, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Ljava/util/HashMap;

    invoke-static {v4, v3}, Lorg/appcelerator/titanium/util/TiConvert;->fillLayout(Ljava/util/HashMap;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z

    .line 624
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 626
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iput-boolean v8, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 628
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 629
    .local v2, key:Ljava/lang/Object;
    const-string v4, "top"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "bottom"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "left"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "right"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "center"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "width"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "height"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "backgroundColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 633
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v5, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v6, v6, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 638
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-boolean v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 642
    :cond_3
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 643
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_7

    .line 644
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 659
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iput-boolean v8, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 662
    :cond_4
    instance-of v4, p1, Landroid/view/animation/AnimationSet;

    if-eqz v4, :cond_6

    .line 663
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v4, :cond_5

    .line 664
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v5, v5, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v7}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 667
    :cond_5
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v4, :cond_6

    .line 673
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_9

    .line 674
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    const-string v5, "complete"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/titanium/view/TiAnimation;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 686
    :cond_6
    :goto_2
    return-void

    .line 647
    :cond_7
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v9, :cond_8

    .line 648
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 652
    :cond_8
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v5, v5, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 653
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 654
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 655
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v5, v5, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 676
    .end local v0           #aa:Landroid/view/animation/AlphaAnimation;
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v4

    new-instance v5, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener$1;

    invoke-direct {v5, p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener$1;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;)V

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 690
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 694
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiAnimation;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 697
    :cond_0
    return-void
.end method
