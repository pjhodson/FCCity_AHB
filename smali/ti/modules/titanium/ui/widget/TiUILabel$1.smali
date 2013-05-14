.class Lti/modules/titanium/ui/widget/TiUILabel$1;
.super Landroid/widget/TextView;
.source "TiUILabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUILabel;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUILabel;

.field final synthetic val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUILabel;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    iput-object p3, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "postlayout"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "postlayout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 63
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    #getter for: Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUILabel;->access$000(Lti/modules/titanium/ui/widget/TiUILabel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    #getter for: Lti/modules/titanium/ui/widget/TiUILabel;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUILabel;->access$100(Lti/modules/titanium/ui/widget/TiUILabel;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel$1;->this$0:Lti/modules/titanium/ui/widget/TiUILabel;

    #getter for: Lti/modules/titanium/ui/widget/TiUILabel;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUILabel;->access$200(Lti/modules/titanium/ui/widget/TiUILabel;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-nez v0, :cond_0

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 52
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 53
    return-void
.end method
