.class public Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIActivityIndicator.java"


# static fields
.field public static final BIG:I = 0x101007a

.field public static final BIG_DARK:I = 0x1010289

.field public static final DARK:I = 0x1010288

.field public static final PLAIN:I = 0x1010079

.field private static final TAG:Ljava/lang/String; = "TiUIActivityIndicator"


# instance fields
.field protected currentStyle:I

.field private label:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private view:Landroid/widget/LinearLayout;

.field protected visible:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 44
    const-string v0, "TiUIActivityIndicator"

    const-string v1, "Creating an activity indicator"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 55
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->getStyle()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->currentStyle:I

    .line 56
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->currentStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progress:Landroid/widget/ProgressBar;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->setNativeView(Landroid/view/View;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected getStyle()I
    .locals 5

    .prologue
    const v1, 0x1010079

    .line 129
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "style"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "style"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 131
    .local v0, style:I
    if-eq v0, v1, :cond_0

    const v2, 0x101007a

    if-eq v0, v2, :cond_0

    const v2, 0x1010288

    if-eq v0, v2, :cond_0

    const v2, 0x1010289

    if-eq v0, v2, :cond_0

    .line 132
    const-string v2, "TiUIActivityIndicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" for style."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 137
    .end local v0           #style:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->hide()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 71
    const-string v0, "style"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "style"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->setStyle(I)V

    .line 74
    :cond_0
    const-string v0, "font"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    const-string v1, "font"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 77
    :cond_1
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    const-string v1, "message"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    const-string v1, "color"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    :cond_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 85
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 90
    const-string v0, "TiUIActivityIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->setStyle(I)V

    .line 105
    .end local p3
    :goto_0
    return-void

    .line 94
    .restart local p3
    :cond_0
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    check-cast p3, Ljava/util/HashMap;

    .end local p3
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 96
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 97
    .restart local p3
    :cond_1
    const-string v0, "message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 103
    .restart local p3
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method protected setStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 142
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->currentStyle:I

    if-ne p1, v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_0
    const v0, 0x1010079

    if-eq p1, v0, :cond_1

    const v0, 0x101007a

    if-eq p1, v0, :cond_1

    const v0, 0x1010288

    if-eq p1, v0, :cond_1

    const v0, 0x1010289

    if-eq p1, v0, :cond_1

    .line 146
    const-string v0, "TiUIActivityIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" for style."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 151
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progress:Landroid/widget/ProgressBar;

    .line 152
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->currentStyle:I

    .line 153
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->show()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    goto :goto_0
.end method
