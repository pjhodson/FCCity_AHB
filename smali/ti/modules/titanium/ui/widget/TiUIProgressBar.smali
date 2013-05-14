.class public Lti/modules/titanium/ui/widget/TiUIProgressBar;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIProgressBar.java"


# instance fields
.field private label:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 32
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIProgressBar$1;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUIProgressBar$1;-><init>(Lti/modules/titanium/ui/widget/TiUIProgressBar;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    .line 41
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 51
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->setNativeView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method private convertRange(DDDI)I
    .locals 4
    .parameter "min"
    .parameter "max"
    .parameter "value"
    .parameter "base"

    .prologue
    .line 111
    sub-double v0, p3, p1

    div-double v0, p5, v0

    int-to-double v2, p7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getMax()D
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "max"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 94
    const-wide/16 v1, 0x0

    .line 97
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0
.end method

.method private getMin()D
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "min"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 85
    const-wide/16 v1, 0x0

    .line 88
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0
.end method

.method private getValue()D
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 103
    const-wide/16 v1, 0x0

    .line 106
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0
.end method


# virtual methods
.method public handleSetMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 121
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 123
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 61
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "message"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->handleSetMessage(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->updateProgress()V

    .line 65
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 72
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "min"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->updateProgress()V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    const-string v1, "message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, message:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->handleSetMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateProgress()V
    .locals 9

    .prologue
    .line 116
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIProgressBar;->progress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getMin()D

    move-result-wide v1

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getMax()D

    move-result-wide v3

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->getValue()D

    move-result-wide v5

    const/16 v7, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lti/modules/titanium/ui/widget/TiUIProgressBar;->convertRange(DDDI)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 117
    return-void
.end method
