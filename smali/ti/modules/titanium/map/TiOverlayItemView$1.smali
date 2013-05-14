.class Lti/modules/titanium/map/TiOverlayItemView$1;
.super Landroid/widget/TextView;
.source "TiOverlayItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/map/TiOverlayItemView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/map/TiOverlayItemView;


# direct methods
.method constructor <init>(Lti/modules/titanium/map/TiOverlayItemView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 80
    iput-object p1, p0, Lti/modules/titanium/map/TiOverlayItemView$1;->this$0:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Lti/modules/titanium/map/TiOverlayItemView$1;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0xe6

    if-le v0, v1, :cond_0

    .line 88
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lti/modules/titanium/map/TiOverlayItemView$1;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/map/TiOverlayItemView$1;->setMeasuredDimension(II)V

    .line 90
    :cond_0
    return-void
.end method
