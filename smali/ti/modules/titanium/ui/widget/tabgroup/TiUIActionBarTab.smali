.class public Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
.super Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;
.source "TiUIActionBarTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIActionBarTab"


# instance fields
.field fragment:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

.field tab:Landroid/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabProxy;Landroid/app/ActionBar$Tab;)V
    .locals 4
    .parameter "proxy"
    .parameter "tab"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;-><init>(Lti/modules/titanium/ui/TabProxy;)V

    .line 51
    iput-object p2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/app/ActionBar$Tab;

    .line 53
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TabProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 57
    invoke-virtual {p2, p0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 59
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    .local v1, title:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 63
    :cond_0
    const-string v3, "icon"

    invoke-virtual {p1, v3}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, url:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 65
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v0}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    .line 69
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method


# virtual methods
.method initializeFragment()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    invoke-direct {v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->fragment:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    .line 92
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->fragment:Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;->setContentView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 73
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 76
    :cond_0
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_1

    .line 79
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    .line 83
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method
