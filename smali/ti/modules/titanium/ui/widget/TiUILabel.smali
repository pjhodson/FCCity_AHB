.class public Lti/modules/titanium/ui/widget/TiUILabel;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUILabel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUILabel"


# instance fields
.field private defaultColor:I

.field private wordWrap:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 6
    .parameter "proxy"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 37
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    .line 38
    const-string v1, "TiUILabel"

    const-string v2, "Creating a text label"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Lti/modules/titanium/ui/widget/TiUILabel$1;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUILabel$1;-><init>(Lti/modules/titanium/ui/widget/TiUILabel;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 65
    .local v0, tv:Landroid/widget/TextView;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 68
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 69
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 71
    invoke-static {v0, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUILabel;->defaultColor:I

    .line 73
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUILabel;->setNativeView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUILabel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    return v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUILabel;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUILabel;)Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUILabel;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method


# virtual methods
.method public clearOpacity(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 189
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 190
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 192
    :cond_0
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "d"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    .local v3, tv:Landroid/widget/TextView;
    const-string v7, "html"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 86
    const-string v7, "html"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, html:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 88
    const-string v1, ""

    .line 90
    :cond_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 97
    .end local v1           #html:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v7, "color"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    const-string v7, "color"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, color:Ljava/lang/Object;
    if-nez v0, :cond_b

    .line 100
    iget v7, p0, Lti/modules/titanium/ui/widget/TiUILabel;->defaultColor:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .end local v0           #color:Ljava/lang/Object;
    :cond_2
    :goto_1
    const-string v7, "highlightedColor"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 106
    const-string v7, "highlightedColor"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 108
    :cond_3
    const-string v7, "font"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 109
    const-string v7, "font"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-static {v3, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 111
    :cond_4
    const-string v7, "textAlign"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "verticalAlign"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 112
    :cond_5
    const-string v7, "textAlign"

    const-string v8, "left"

    invoke-virtual {p1, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, textAlign:Ljava/lang/String;
    const-string v7, "verticalAlign"

    const-string v8, "middle"

    invoke-virtual {p1, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, verticalAlign:Ljava/lang/String;
    invoke-static {v3, v2, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v2           #textAlign:Ljava/lang/String;
    .end local v4           #verticalAlign:Ljava/lang/String;
    :cond_6
    const-string v7, "ellipsize"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 117
    const-string v7, "ellipsize"

    invoke-static {p1, v7, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 118
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    :cond_7
    :goto_2
    const-string v7, "wordWrap"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 124
    const-string v7, "wordWrap"

    invoke-static {p1, v7, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    .line 125
    iget-boolean v7, p0, Lti/modules/titanium/ui/widget/TiUILabel;->wordWrap:Z

    if-nez v7, :cond_d

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 128
    :cond_8
    const-string v5, "autoLink"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 130
    return-void

    .line 91
    :cond_9
    const-string v7, "text"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 92
    const-string v7, "text"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 93
    :cond_a
    const-string v7, "title"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    const-string v7, "title"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 102
    .restart local v0       #color:Ljava/lang/Object;
    :cond_b
    const-string v7, "color"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 120
    .end local v0           #color:Ljava/lang/Object;
    :cond_c
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    :cond_d
    move v5, v6

    .line 125
    goto :goto_3
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    .local v0, tv:Landroid/widget/TextView;
    const-string v3, "html"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 138
    const-string v1, "autoLink"

    invoke-virtual {p4, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 170
    .end local p3
    :goto_0
    return-void

    .line 140
    .restart local p3
    :cond_0
    const-string v3, "text"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    :cond_1
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const-string v1, "autoLink"

    invoke-virtual {p4, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 144
    :cond_2
    const-string v3, "color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 146
    .restart local p3
    :cond_3
    const-string v3, "highlightedColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto :goto_0

    .line 148
    .restart local p3
    :cond_4
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 151
    :cond_5
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 154
    :cond_6
    const-string v3, "font"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 155
    check-cast p3, Ljava/util/HashMap;

    .end local p3
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 157
    .restart local p3
    :cond_7
    const-string v3, "ellipsize"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 158
    invoke-static {p3, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 159
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 161
    :cond_8
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 163
    :cond_9
    const-string v3, "wordWrap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 164
    invoke-static {p3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_1

    .line 165
    :cond_b
    const-string v1, "autoLink"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 166
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto/16 :goto_0

    .line 168
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public setClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 173
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 174
    return-void
.end method

.method protected setOpacity(Landroid/view/View;F)V
    .locals 1
    .parameter "view"
    .parameter "opacity"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 180
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setPaintOpacity(Landroid/graphics/Paint;F)V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    .line 183
    return-void
.end method
