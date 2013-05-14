.class Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;-><init>(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 612
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 600
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 601
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget-boolean v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->reversing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->reversing:Z

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget-boolean v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->reversing:Z

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget v1, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->duration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 608
    :goto_1
    return-void

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget v1, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->duration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 593
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->view:Landroid/view/View;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->duration:I

    .line 595
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    iget v1, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->duration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 596
    return-void
.end method
