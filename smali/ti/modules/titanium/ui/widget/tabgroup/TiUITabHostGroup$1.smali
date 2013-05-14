.class Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;
.super Ljava/lang/Object;
.source "TiUITabHostGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->addTab(Lti/modules/titanium/ui/TabProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;

.field final synthetic val$tab:Lti/modules/titanium/ui/TabProxy;

.field final synthetic val$tabIndex:I


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;ILti/modules/titanium/ui/TabProxy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;

    iput p2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;->val$tabIndex:I

    iput-object p3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;->val$tab:Lti/modules/titanium/ui/TabProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;

    #getter for: Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->tabHost:Landroid/widget/TabHost;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->access$000(Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;)Landroid/widget/TabHost;

    move-result-object v0

    iget v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;->val$tabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 128
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$1;->val$tab:Lti/modules/titanium/ui/TabProxy;

    const-string v1, "click"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TabProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 129
    return-void
.end method
