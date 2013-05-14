.class public Lti/modules/titanium/ui/widget/TiView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiView.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 23
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 25
    .local v0, arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v2, "layout"

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const-string v2, "layout"

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, layoutProperty:Ljava/lang/String;
    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 33
    .end local v1           #layoutProperty:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiView;->setNativeView(Landroid/view/View;)V

    .line 34
    return-void

    .line 29
    .restart local v1       #layoutProperty:Ljava/lang/String;
    :cond_1
    const-string v2, "vertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method


# virtual methods
.method protected setOpacity(Landroid/view/View;F)V
    .locals 1
    .parameter "view"
    .parameter "opacity"

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiView;->nativeView:Landroid/view/View;

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 41
    .local v0, layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    invoke-virtual {v0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setAlphaCompat(F)V

    .line 42
    return-void
.end method
