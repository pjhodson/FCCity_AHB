.class Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;
.super Landroid/widget/FrameLayout;
.source "TiCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/TiCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewLayout"
.end annotation


# instance fields
.field private aspectRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const-wide v0, 0x3ff5555555555555L

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->setAspectRatio(D)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    const-wide/high16 v8, 0x3fe0

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 75
    .local v1, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 78
    .local v0, previewHeight:I
    int-to-double v2, v1

    int-to-double v4, v0

    iget-wide v6, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 79
    int-to-double v2, v0

    iget-wide v4, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v8

    double-to-int v1, v2

    .line 85
    :goto_0
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 87
    return-void

    .line 82
    :cond_0
    int-to-double v2, v1

    iget-wide v4, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    double-to-int v0, v2

    goto :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 0
    .parameter "aspectRatio"

    .prologue
    .line 69
    iput-wide p1, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    .line 70
    return-void
.end method
