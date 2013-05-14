.class public Lorg/appcelerator/titanium/view/TiBackgroundDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "TiBackgroundDrawable.java"


# static fields
.field private static final NOT_SET:I = -0x1


# instance fields
.field private alpha:I

.field private background:Landroid/graphics/drawable/Drawable;

.field private innerRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    .line 38
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "stateSet"
    .parameter "drawable"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 43
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 50
    iget v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 57
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 123
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 126
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 106
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 109
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 63
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->innerRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 64
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onLevelChange(I)Z

    move-result v1

    .line 95
    .local v1, changed:Z
    const/4 v0, 0x0

    .line 96
    .local v0, backgroundChanged:Z
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->setLevel(I)Z

    move-result v0

    .line 99
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .parameter "stateSet"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v0

    .line 69
    .local v0, changed:Z
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setState([I)Z

    move-result v0

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, drawableChanged:Z
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->invalidateSelf()V

    .line 82
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseDelegate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 136
    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 159
    iput p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->alpha:I

    .line 160
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "backgroundColor"

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 141
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 142
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 151
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->onStateChange([I)Z

    .line 153
    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "backgroundImage"

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 146
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 147
    return-void
.end method
