.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;
.super Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.source "TiTableViewHeaderItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;
    }
.end annotation


# instance fields
.field private headerView:Lorg/appcelerator/titanium/view/TiUIView;

.field private isHeaderView:Z

.field private item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

.field private rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, -0x1

    .line 79
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->handler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/high16 v0, 0x4190

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setMinimumHeight(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 2
    .parameter "activity"
    .parameter "headerView"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->handler:Landroid/os/Handler;

    .line 91
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const/high16 v0, 0x4190

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setMinimumHeight(I)V

    .line 94
    iput-object p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V
    .locals 0
    .parameter "tiContext"
    .parameter "activity"

    .prologue
    .line 100
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;-><init>(Landroid/app/Activity;)V

    .line 101
    return-void
.end method

.method private setHeaderData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 114
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 115
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v3, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 116
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getChildren()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 118
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 119
    .local v1, labelView:Lorg/appcelerator/titanium/view/TiUIView;
    iget-object v2, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    aget-object v0, v2, v4

    .line 120
    .local v0, labelProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 125
    .end local v0           #labelProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #labelView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    return-void
.end method


# virtual methods
.method public getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 145
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    if-nez v2, :cond_1

    .line 146
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    sub-int v3, p5, p3

    invoke-virtual {v2, p2, v4, p4, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->layout(IIII)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v0, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 152
    .local v0, proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 153
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 154
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 157
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, view:Landroid/view/View;
    sub-int v2, p5, p3

    invoke-virtual {v1, p2, v4, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 160
    instance-of v2, v1, Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->headerView:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    sub-int v3, p5, p3

    invoke-virtual {v2, p2, v4, p4, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->measureChildren(II)V

    .line 136
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 137
    .local v1, w:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 138
    .local v0, h:I
    invoke-static {v1, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setMeasuredDimension(II)V

    .line 140
    return-void
.end method

.method public setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 105
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->isHeaderView:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->rowView:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;->setHeaderData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    goto :goto_0
.end method
