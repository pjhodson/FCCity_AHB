.class Lti/modules/titanium/ui/widget/TiUISwitch$2;
.super Landroid/widget/ToggleButton;
.source "TiUISwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUISwitch;->setStyle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUISwitch;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUISwitch;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 159
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUISwitch$2;->this$0:Lti/modules/titanium/ui/widget/TiUISwitch;

    invoke-direct {p0, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

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
    .line 163
    invoke-super/range {p0 .. p5}, Landroid/widget/ToggleButton;->onLayout(ZIIII)V

    .line 164
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch$2;->this$0:Lti/modules/titanium/ui/widget/TiUISwitch;

    #getter for: Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->access$100(Lti/modules/titanium/ui/widget/TiUISwitch;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 165
    return-void
.end method
