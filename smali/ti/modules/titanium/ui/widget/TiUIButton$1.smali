.class Lti/modules/titanium/ui/widget/TiUIButton$1;
.super Landroid/widget/Button;
.source "TiUIButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIButton;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIButton;

.field final synthetic val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIButton;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIButton$1;->this$0:Lti/modules/titanium/ui/widget/TiUIButton;

    iput-object p3, p0, Lti/modules/titanium/ui/widget/TiUIButton$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIButton$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 44
    return-void
.end method
