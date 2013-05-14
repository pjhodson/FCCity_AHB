.class public Lti/modules/titanium/ui/widget/TiUIButton;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIButton"


# instance fields
.field private defaultColor:I


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 36
    const-string v1, "TiUIButton"

    const-string v2, "Creating a button"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIButton$1;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUIButton$1;-><init>(Lti/modules/titanium/ui/widget/TiUIButton;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 46
    .local v0, btn:Landroid/widget/Button;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 47
    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIButton;->defaultColor:I

    .line 48
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIButton;->setNativeView(Landroid/view/View;)V

    .line 49
    return-void
.end method


# virtual methods
.method public clearOpacity(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 180
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->clearOpacityForButton()V

    .line 181
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public clearOpacityForButton()V
    .locals 6

    .prologue
    .line 155
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 157
    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 158
    check-cast v3, Landroid/widget/Button;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    .local v1, drawables:[Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 160
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 161
    aget-object v0, v1, v2

    .line 162
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 160
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 11
    .parameter "d"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 54
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 56
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, btn:Landroid/widget/Button;
    const-string v7, "image"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 58
    const-string v7, "image"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 59
    .local v5, value:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 60
    .local v2, drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 61
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIButton;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v5, Ljava/lang/String;

    .end local v5           #value:Ljava/lang/Object;
    invoke-static {v7, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v2

    .line 66
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 68
    .local v3, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3, v8, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 75
    .end local v2           #drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    .end local v3           #image:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    const-string v7, "title"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    const-string v7, "title"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_2
    const-string v7, "color"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 79
    const-string v7, "color"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, color:Ljava/lang/Object;
    if-nez v1, :cond_a

    .line 81
    iget v7, p0, Lti/modules/titanium/ui/widget/TiUIButton;->defaultColor:I

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 86
    .end local v1           #color:Ljava/lang/Object;
    :cond_3
    :goto_2
    const-string v7, "font"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    const-string v7, "font"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 89
    :cond_4
    const-string v7, "textAlign"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 90
    const-string v7, "textAlign"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, textAlign:Ljava/lang/String;
    invoke-static {v0, v4, v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v4           #textAlign:Ljava/lang/String;
    :cond_5
    const-string v7, "verticalAlign"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 94
    const-string v7, "verticalAlign"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, verticalAlign:Ljava/lang/String;
    invoke-static {v0, v8, v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v6           #verticalAlign:Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    .line 98
    return-void

    .line 62
    .restart local v2       #drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    .restart local v5       #value:Ljava/lang/Object;
    :cond_7
    instance-of v7, v5, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v7, :cond_0

    .line 63
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIButton;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v5, Lorg/appcelerator/titanium/TiBlob;

    .end local v5           #value:Ljava/lang/Object;
    invoke-static {v7, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v2

    goto :goto_0

    .line 70
    .end local v2           #drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_8
    const-string v7, "backgroundColor"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "backgroundImage"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    :cond_9
    invoke-virtual {v0, v10, v9, v10, v9}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1

    .line 83
    .restart local v1       #color:Ljava/lang/Object;
    :cond_a
    const-string v7, "color"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 7
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const-string v3, "TiUIButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    .local v0, btn:Landroid/widget/Button;
    const-string v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 109
    .restart local p3
    :cond_2
    const-string v3, "color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v3, "font"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    check-cast p3, Ljava/util/HashMap;

    .end local p3
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    goto :goto_0

    .line 113
    .restart local p3
    :cond_4
    const-string v3, "textAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    goto :goto_0

    .line 116
    :cond_5
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v6, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    goto :goto_0

    .line 119
    :cond_6
    const-string v3, "image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 122
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {p4, p3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v1

    .line 126
    :cond_7
    :goto_1
    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    .local v2, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 123
    .end local v2           #image:Landroid/graphics/drawable/Drawable;
    .restart local p3
    :cond_8
    instance-of v3, p3, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_7

    .line 124
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast p3, Lorg/appcelerator/titanium/TiBlob;

    .end local p3
    invoke-static {v3, p3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v1

    goto :goto_1

    .line 131
    .end local v1           #drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    .restart local p3
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method protected setOpacity(Landroid/view/View;F)V
    .locals 0
    .parameter "view"
    .parameter "opacity"

    .prologue
    .line 173
    invoke-virtual {p0, p2}, Lti/modules/titanium/ui/widget/TiUIButton;->setOpacityForButton(F)V

    .line 174
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    .line 175
    return-void
.end method

.method public setOpacityForButton(F)V
    .locals 6
    .parameter "opacity"

    .prologue
    .line 137
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f80

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 138
    :cond_0
    const-string v3, "TiUIButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring invalid value for opacity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    return-void

    .line 141
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIButton;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 143
    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setPaintOpacity(Landroid/graphics/Paint;F)V

    .line 144
    check-cast v2, Landroid/widget/Button;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 147
    aget-object v3, v0, v1

    invoke-static {v3, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setDrawableOpacity(Landroid/graphics/drawable/Drawable;F)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
