.class public Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
.super Landroid/app/Fragment;
.source "TiUIActionBarTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabFragment"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 35
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 30
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->contentView:Landroid/view/View;

    .line 31
    return-void
.end method
