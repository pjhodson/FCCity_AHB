.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
.super Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.source "TiTableViewRowProxyItem.java"


# static fields
.field private static ICS_OR_GREATER:Z = false

.field private static final LEFT_MARGIN:I = 0x5

.field private static final RIGHT_MARGIN:I = 0x7

.field private static final TAG:Ljava/lang/String; = "TitaniumTableViewItem"

.field private static filteredProperties:[Ljava/lang/String;


# instance fields
.field private content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private height:Lorg/appcelerator/titanium/TiDimension;

.field private item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

.field private leftImage:Landroid/widget/ImageView;

.field private rightImage:Landroid/widget/ImageView;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorSource:Ljava/lang/Object;

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->ICS_OR_GREATER:Z

    .line 439
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "backgroundImage"

    aput-object v3, v0, v2

    const-string v2, "backgroundColor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "backgroundSelectedImage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "backgroundSelectedColor"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 60
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Landroid/app/Activity;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->handler:Landroid/os/Handler;

    .line 63
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 77
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method private filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .parameter "d"

    .prologue
    .line 444
    if-nez p1, :cond_1

    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 452
    :cond_0
    return-object v0

    .line 446
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 447
    .local v0, filtered:Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 448
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addViewToOldRow(ILorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 4
    .parameter "index"
    .parameter "titleView"
    .parameter "newViewProxy"

    .prologue
    .line 95
    const-string v1, "TitaniumTableViewItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was added an old style row, reusing the title TiUILabel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lti/modules/titanium/ui/LabelProxy;

    invoke-direct {v0}, Lti/modules/titanium/ui/LabelProxy;-><init>()V

    .line 97
    .local v0, label:Lti/modules/titanium/ui/LabelProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/LabelProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 98
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/LabelProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 99
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/LabelProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 100
    invoke-virtual {p2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 102
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getControls()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-object v0
.end method

.method protected applyChildProperties(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 6
    .parameter "viewProxy"
    .parameter "view"

    .prologue
    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, i:I
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 167
    .local v0, childProxies:[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiUIView;

    .line 168
    .local v2, childView:Lorg/appcelerator/titanium/view/TiUIView;
    aget-object v1, v0, v3

    .line 169
    .local v1, childProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 170
    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->applyChildProperties(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    goto :goto_0

    .line 173
    .end local v1           #childProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2           #childView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    return-void
.end method

.method protected associateProxies([Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/util/List;)V
    .locals 6
    .parameter "proxies"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p2, views:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/titanium/view/TiUIView;>;"
    const/4 v0, 0x0

    .line 506
    .local v0, i:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/TiUIView;

    .line 507
    .local v3, view:Lorg/appcelerator/titanium/view/TiUIView;
    array-length v4, p1

    add-int/lit8 v5, v0, 0x1

    if-ge v4, v5, :cond_1

    .line 517
    .end local v3           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    return-void

    .line 510
    .restart local v3       #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    aget-object v2, p1, v0

    .line 511
    .local v2, proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 512
    invoke-virtual {v3, v2}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 513
    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 514
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->associateProxies([Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/util/List;)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    .line 516
    goto :goto_0
.end method

.method protected createControls()V
    .locals 9

    .prologue
    .line 113
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v7

    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewRowProxy;->getControls()Ljava/util/ArrayList;

    move-result-object v3

    .line 114
    .local v3, proxies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 116
    .local v2, len:I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 117
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 128
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_9

    .line 129
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v0, :cond_7

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/view/TiUIView;

    move-object v6, v7

    .line 130
    .local v6, view:Lorg/appcelerator/titanium/view/TiUIView;
    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 131
    .local v4, proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v7

    instance-of v7, v7, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v7, :cond_1

    .line 132
    invoke-virtual {p0, v0, v6, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addViewToOldRow(ILorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 135
    :cond_1
    if-nez v6, :cond_2

    .line 145
    invoke-static {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 146
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->forceCreateView(Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    .line 147
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_8

    .line 148
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_2
    :goto_3
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v5

    .line 155
    .local v5, v:Landroid/view/View;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 156
    invoke-virtual {p0, v4, v6}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->applyChildProperties(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 157
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_3

    .line 158
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .end local v0           #i:I
    .end local v4           #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v5           #v:Landroid/view/View;
    .end local v6           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_4
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v2, :cond_0

    .line 119
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiUIView;

    .line 120
    .restart local v6       #view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    .line 121
    .restart local v5       #v:Landroid/view/View;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 122
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v7, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 125
    .end local v5           #v:Landroid/view/View;
    .end local v6           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 129
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v0       #i:I
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 150
    .restart local v4       #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .restart local v6       #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_8
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 161
    .end local v4           #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v6           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_9
    return-void
.end method

.method public getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    return-object v0
.end method

.method protected getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    return-object v0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 464
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v2

    .line 465
    .local v2, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 466
    const-string v4, "backgroundSelectedImage"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    const-string v4, "backgroundSelectedImage"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, path:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 471
    :cond_1
    const-string v4, "backgroundSelectedColor"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 472
    const-string v4, "backgroundSelectedColor"

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    .line 473
    .local v0, color:I
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;

    invoke-direct {v4, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;-><init>(I)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public hasSelector()Z
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 458
    .local v0, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v1, "backgroundSelectedImage"

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "backgroundSelectedColor"

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasView(Lorg/appcelerator/titanium/view/TiUIView;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v2

    .line 314
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 315
    .local v1, v:Lorg/appcelerator/titanium/view/TiUIView;
    if-ne v1, p1, :cond_2

    .line 316
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 390
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v10

    .line 391
    .local v10, rp:Lti/modules/titanium/ui/TableViewRowProxy;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setTableViewItem(Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v12, v12, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v12}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiUIView;

    .line 395
    .local v2, childView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v10}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 396
    invoke-virtual {v2, v10}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 402
    .end local v2           #childView:Lorg/appcelerator/titanium/view/TiUIView;
    :goto_0
    move/from16 v3, p2

    .line 403
    .local v3, contentLeft:I
    move/from16 v4, p4

    .line 404
    .local v4, contentRight:I
    sub-int p5, p5, p3

    .line 405
    const/16 p3, 0x0

    .line 407
    sub-int v6, p5, p3

    .line 409
    .local v6, height:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    .line 411
    .local v11, w:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    .line 412
    .local v5, h:I
    const/4 v7, 0x5

    .line 414
    .local v7, leftMargin:I
    add-int v12, v11, v7

    add-int/2addr v3, v12

    .line 415
    sub-int v12, v6, v5

    div-int/lit8 v8, v12, 0x2

    .line 416
    .local v8, offset:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    add-int v13, p2, v7

    add-int v14, p3, v8

    add-int v15, p2, v7

    add-int/2addr v15, v11

    add-int v16, p3, v8

    add-int v16, v16, v5

    invoke-virtual/range {v12 .. v16}, Landroid/widget/ImageView;->layout(IIII)V

    .line 419
    .end local v5           #h:I
    .end local v7           #leftMargin:I
    .end local v8           #offset:I
    .end local v11           #w:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    .line 420
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    .line 421
    .restart local v11       #w:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    .line 422
    .restart local v5       #h:I
    const/4 v9, 0x7

    .line 424
    .local v9, rightMargin:I
    add-int v12, v11, v9

    sub-int/2addr v4, v12

    .line 425
    sub-int v12, v6, v5

    div-int/lit8 v8, v12, 0x2

    .line 426
    .restart local v8       #offset:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    sub-int v13, p4, v11

    sub-int/2addr v13, v9

    add-int v14, p3, v8

    sub-int v15, p4, v9

    add-int v16, p3, v8

    add-int v16, v16, v5

    invoke-virtual/range {v12 .. v16}, Landroid/widget/ImageView;->layout(IIII)V

    .line 434
    .end local v5           #h:I
    .end local v8           #offset:I
    .end local v9           #rightMargin:I
    .end local v11           #w:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v12, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v12, v3, v0, v4, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->layout(IIII)V

    .line 437
    :cond_2
    return-void

    .line 399
    .end local v3           #contentLeft:I
    .end local v4           #contentRight:I
    .end local v6           #height:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v12, v12, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v12}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->associateProxies([Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 325
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 326
    .local v13, w:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 327
    .local v14, wMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 328
    .local v4, h:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 329
    .local v5, hMode:I
    const/4 v6, 0x0

    .line 331
    .local v6, imageHMargin:I
    const/4 v8, 0x0

    .line 332
    .local v8, leftImageWidth:I
    const/4 v7, 0x0

    .line 333
    .local v7, leftImageHeight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 335
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 337
    add-int/lit8 v6, v6, 0x5

    .line 340
    :cond_0
    const/4 v11, 0x0

    .line 341
    .local v11, rightImageWidth:I
    const/4 v10, 0x0

    .line 342
    .local v10, rightImageHeight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 344
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    .line 346
    add-int/lit8 v6, v6, 0x7

    .line 349
    :cond_1
    sub-int v15, v13, v8

    sub-int/2addr v15, v11

    sub-int v3, v15, v6

    .line 352
    .local v3, adjustedWidth:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v15, :cond_4

    .line 356
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v15, v15, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v15, Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual {v15}, Lti/modules/titanium/ui/TableViewRowProxy;->hasControls()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMinimumHeight(I)V

    .line 362
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 363
    if-nez v5, :cond_4

    .line 364
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object v15, v15, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v15, Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual {v15}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v12

    .line 365
    .local v12, table:Lti/modules/titanium/ui/TableViewProxy;
    const/4 v9, -0x1

    .line 366
    .local v9, minRowHeight:I
    if-eqz v12, :cond_2

    const-string v15, "minRowHeight"

    invoke-virtual {v12, v15}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 367
    const-string v15, "minRowHeight"

    invoke-virtual {v12, v15}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x7

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v9

    .line 370
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    if-nez v15, :cond_6

    .line 371
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v15}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight()I

    move-result v15

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 372
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 376
    :goto_1
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 377
    const-string v15, "TitaniumTableViewItem"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Row content measure ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "DEBUG_MODE"

    invoke-static/range {v15 .. v17}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 383
    .end local v9           #minRowHeight:I
    .end local v12           #table:Lti/modules/titanium/ui/TableViewProxy;
    :cond_4
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setMeasuredDimension(II)V

    .line 384
    return-void

    .line 359
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v16, 0x30

    invoke-virtual/range {v15 .. v16}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMinimumHeight(I)V

    goto/16 :goto_0

    .line 374
    .restart local v9       #minRowHeight:I
    .restart local v12       #table:Lti/modules/titanium/ui/TableViewProxy;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1
.end method

.method protected refreshOldStyleRow()V
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4014

    const/4 v6, 0x0

    .line 177
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 178
    .local v1, rp:Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v4, "touchEnabled"

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    sget-boolean v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->ICS_OR_GREATER:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 184
    :cond_0
    const-string v4, "touchEnabled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 189
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    new-instance v5, Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-direct {v5, v1}, Lti/modules/titanium/ui/widget/TiUILabel;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_2
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/TiUILabel;

    .line 192
    .local v2, t:Lti/modules/titanium/ui/widget/TiUILabel;
    invoke-virtual {v2, v1}, Lti/modules/titanium/ui/widget/TiUILabel;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 193
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/widget/TiUILabel;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 194
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 195
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    .line 196
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUILabel;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    .line 197
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v4, v7, v8, v6}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 198
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    const/4 v5, 0x2

    invoke-direct {v4, v7, v8, v5}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 199
    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 200
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v4, v3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .end local v0           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 481
    invoke-super {p0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->release()V

    .line 482
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 483
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 484
    .local v1, view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    goto :goto_0

    .line 486
    .end local v1           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 488
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v2, :cond_2

    .line 489
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 490
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 492
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 493
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 494
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 496
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    .line 497
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 498
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 501
    :cond_4
    return-void
.end method

.method public setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 13
    .parameter "rp"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 207
    const/4 v4, 0x0

    .line 208
    .local v4, newSelectorSource:Ljava/lang/Object;
    const-string v8, "backgroundSelectedImage"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 209
    const-string v8, "backgroundSelectedImage"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 213
    .end local v4           #newSelectorSource:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 214
    :cond_1
    iput-object v11, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    :cond_2
    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    .line 217
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v8, :cond_3

    .line 218
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUITableView;->getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->enableCustomSelector()V

    .line 221
    :cond_3
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setBackgroundFromProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 223
    const/4 v1, 0x1

    .line 225
    .local v1, clearRightImage:Z
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 226
    .local v6, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "hasCheck"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 227
    const-string v8, "hasCheck"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 228
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_4

    .line 229
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createHasCheckDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 231
    :cond_4
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    const/4 v1, 0x0

    .line 236
    :cond_5
    const-string v8, "hasChild"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 237
    const-string v8, "hasChild"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 238
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_6

    .line 239
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createHasChildDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 241
    :cond_6
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    const/4 v1, 0x0

    .line 246
    :cond_7
    const-string v8, "rightImage"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 247
    const-string v8, "rightImage"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p1, v11, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, url:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 250
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_8

    .line 251
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    const/4 v1, 0x0

    .line 257
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_9

    .line 258
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :cond_9
    const-string v8, "leftImage"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 264
    const-string v8, "leftImage"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .restart local v5       #path:Ljava/lang/String;
    invoke-virtual {p1, v11, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 267
    .restart local v7       #url:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 268
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_a

    .line 269
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_a
    :goto_1
    const-string v8, "height"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 278
    const-string v8, "height"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "auto"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "height"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "size"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 280
    const-string v8, "height"

    invoke-static {v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v8

    iput-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:Lorg/appcelerator/titanium/TiDimension;

    .line 284
    :cond_b
    const-string v8, "layout"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 285
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v9, "layout"

    invoke-static {v6, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 287
    :cond_c
    const-string v8, "horizontalWrap"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 288
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v9, "horizontalWrap"

    invoke-static {v6, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setEnableHorizontalWrap(Z)V

    .line 292
    :cond_d
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasControls()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 293
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createControls()V

    .line 299
    :goto_2
    sget-boolean v8, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->ICS_OR_GREATER:Z

    if-eqz v8, :cond_e

    .line 300
    const-string v8, "accessibilityHidden"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, accessibilityHiddenVal:Ljava/lang/Object;
    if-eqz v0, :cond_e

    .line 302
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 303
    .local v3, hidden:Z
    if-eqz v3, :cond_12

    .line 304
    const/4 v8, 0x2

    invoke-static {p0, v8}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 310
    .end local v0           #accessibilityHiddenVal:Ljava/lang/Object;
    .end local v3           #hidden:Z
    :cond_e
    :goto_3
    return-void

    .line 210
    .end local v1           #clearRightImage:Z
    .end local v6           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #newSelectorSource:Ljava/lang/Object;
    :cond_f
    const-string v8, "backgroundSelectedColor"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 211
    const-string v8, "backgroundSelectedColor"

    invoke-virtual {p1, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 273
    .end local v4           #newSelectorSource:Ljava/lang/Object;
    .restart local v1       #clearRightImage:Z
    .restart local v6       #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 296
    :cond_11
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->refreshOldStyleRow()V

    goto :goto_2

    .line 306
    .restart local v0       #accessibilityHiddenVal:Ljava/lang/Object;
    .restart local v3       #hidden:Z
    :cond_12
    invoke-static {p0, v10}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_3
.end method

.method public setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 85
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 86
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 87
    .local v0, rp:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 88
    return-void
.end method
