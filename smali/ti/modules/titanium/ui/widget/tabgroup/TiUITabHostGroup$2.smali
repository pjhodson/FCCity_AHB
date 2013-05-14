.class Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$2;
.super Ljava/lang/Object;
.source "TiUITabHostGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$2;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$2;->this$0:Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;

    #getter for: Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;->access$100(Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostGroup$2;->val$v:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V

    .line 194
    return-void
.end method
