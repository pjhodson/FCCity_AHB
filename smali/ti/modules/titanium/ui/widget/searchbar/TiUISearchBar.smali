.class public Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
.super Lti/modules/titanium/ui/widget/TiUIText;
.source "TiUISearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;
    }
.end annotation


# instance fields
.field protected cancelBtn:Landroid/widget/ImageButton;

.field protected searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 10
    .parameter "proxy"

    .prologue
    const/16 v9, 0x65

    const/16 v8, 0xf

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 35
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    .line 40
    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    .line 41
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isFocusable()Z

    .line 42
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setId(I)V

    .line 43
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const v4, 0x108002c

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 45
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .local v2, scale:F
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/high16 v4, 0x4240

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 47
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    const/high16 v4, 0x41a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    .line 48
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    new-instance v4, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;-><init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$2;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, p0, v3, p1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$2;-><init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 72
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 73
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 75
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    invoke-virtual {v1, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 80
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    iget-object v3, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setNativeView(Landroid/view/View;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;->filterBy(Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiUIText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 97
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/TiUIText;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 104
    const-string v2, "showCancel"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    const-string v2, "showCancel"

    invoke-static {p1, v2, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, showCancel:Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 110
    .end local v0           #showCancel:Z
    :cond_0
    :goto_1
    return-void

    .line 106
    .restart local v0       #showCancel:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 107
    .end local v0           #showCancel:Z
    :cond_2
    const-string v1, "barColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    const-string v2, "barColor"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 115
    const-string v1, "showCancel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    .local v0, showCancel:Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    .end local v0           #showCancel:Z
    :goto_1
    return-void

    .line 117
    .restart local v0       #showCancel:Z
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 118
    .end local v0           #showCancel:Z
    :cond_1
    const-string v1, "barColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->nativeView:Landroid/view/View;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 121
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/TiUIText;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_1
.end method

.method public setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 126
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .line 127
    return-void
.end method
