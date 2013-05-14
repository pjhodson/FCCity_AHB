.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
.super Landroid/graphics/drawable/Drawable;
.source "TiTableViewSelector.java"


# instance fields
.field private alpha:I

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private dither:Z

.field private listView:Landroid/widget/ListView;

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    const/16 v0, 0xff

    iput v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->alpha:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->dither:Z

    .line 35
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    .line 37
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 77
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 78
    .local v0, currentBounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    .line 80
    .local v1, currentPosition:I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getRowDrawable(Landroid/view/View;)V

    .line 81
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 84
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;

    const-string v4, "opacity"

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    .local v2, opacity:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 87
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v4

    const/high16 v5, 0x437f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 93
    .end local v2           #opacity:Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->dither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 94
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 96
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 97
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 98
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->alpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRowDrawable(Landroid/view/View;)V
    .locals 2
    .parameter "row"

    .prologue
    .line 56
    instance-of v1, p1, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .line 59
    .local v0, rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;

    .line 70
    .end local v0           #rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedRowProxy:Lti/modules/titanium/ui/TableViewRowProxy;

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->invalidateSelf()V

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 129
    iput p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->alpha:I

    .line 130
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "colorFilter"

    .prologue
    .line 136
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->colorFilter:Landroid/graphics/ColorFilter;

    .line 137
    return-void
.end method

.method public setDither(Z)V
    .locals 0
    .parameter "dither"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 144
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;->dither:Z

    .line 145
    return-void
.end method
