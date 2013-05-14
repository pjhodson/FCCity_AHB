.class public Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;
.super Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;
.source "TiUITabHostTab.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUITabHostTab"


# instance fields
.field private defaultTabBackground:Landroid/graphics/drawable/Drawable;

.field final id:Ljava/lang/String;

.field private indicatorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;-><init>(Lti/modules/titanium/ui/TabProxy;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->id:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TabProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onSelectionChange(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 61
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 64
    .local v1, tabProxy:Lti/modules/titanium/ui/TabProxy;
    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->getActiveTabColor()I

    move-result v0

    .line 75
    .local v0, backgroundColor:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->setBackgroundColor(I)V

    .line 78
    :cond_1
    return-void

    .line 68
    .end local v0           #backgroundColor:I
    :cond_2
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->getTabColor()I

    move-result v0

    .line 69
    .restart local v0       #backgroundColor:I
    if-nez v0, :cond_0

    .line 71
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->indicatorView:Landroid/view/View;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->defaultTabBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 82
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->indicatorView:Landroid/view/View;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, titleView:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 85
    if-eqz p3, :cond_3

    .line 86
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #titleView:Landroid/view/View;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    :goto_0
    const-string v3, "icon"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->indicatorView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, iconView:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_1

    .line 99
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    :cond_1
    check-cast v1, Landroid/widget/ImageView;

    .end local v1           #iconView:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void

    .line 88
    .restart local v2       #titleView:Landroid/view/View;
    :cond_3
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #titleView:Landroid/view/View;
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    .restart local v2       #titleView:Landroid/view/View;
    :cond_4
    const-string v3, "TiUITabHostTab"

    const-string v4, "Did not find a title View inside indicatorView to update "

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    .end local v2           #titleView:Landroid/view/View;
    .restart local v1       #iconView:Landroid/view/View;
    :cond_5
    const-string v3, "TiUITabHostTab"

    const-string v4, "Did not find a image View inside indicatorView to update "

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 37
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->indicatorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    return-void
.end method

.method setIndicatorView(Landroid/view/View;)V
    .locals 2
    .parameter "indicatorView"

    .prologue
    .line 49
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->indicatorView:Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->defaultTabBackground:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->getTabColor()I

    move-result v0

    .line 54
    .local v0, tabBackgroundColor:I
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->setBackgroundColor(I)V

    .line 57
    :cond_0
    return-void
.end method

.method setupTabSpec(Landroid/widget/TabHost$TabSpec;)V
    .locals 5
    .parameter "spec"

    .prologue
    .line 41
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUITabHostTab;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 43
    .local v1, properties:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "title"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, title:Ljava/lang/String;
    const-string v3, "icon"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, icon:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
