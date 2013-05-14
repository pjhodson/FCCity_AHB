.class Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
.super Ljava/lang/Object;
.source "TiUIImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWithIndex"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter
    .parameter "b"
    .parameter "i"

    .prologue
    .line 253
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->bitmap:Landroid/graphics/Bitmap;

    .line 255
    iput p3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->index:I

    .line 256
    return-void
.end method
