.class Lti/modules/titanium/ui/widget/TiUISwitch$1;
.super Landroid/widget/CheckBox;
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
    .line 145
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUISwitch$1;->this$0:Lti/modules/titanium/ui/widget/TiUISwitch;

    invoke-direct {p0, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

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
    .line 149
    invoke-super/range {p0 .. p5}, Landroid/widget/CheckBox;->onLayout(ZIIII)V

    .line 150
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch$1;->this$0:Lti/modules/titanium/ui/widget/TiUISwitch;

    #getter for: Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->access$000(Lti/modules/titanium/ui/widget/TiUISwitch;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 151
    return-void
.end method
