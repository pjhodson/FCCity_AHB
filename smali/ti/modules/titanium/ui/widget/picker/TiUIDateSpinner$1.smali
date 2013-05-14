.class Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$1;
.super Landroid/widget/LinearLayout;
.source "TiUIDateSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->createNativeView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 83
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$1;->this$0:Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

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
    .line 87
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$1;->this$0:Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;

    #getter for: Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->access$000(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 89
    return-void
.end method
