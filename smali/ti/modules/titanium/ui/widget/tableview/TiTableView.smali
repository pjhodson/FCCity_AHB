.class public Lti/modules/titanium/ui/widget/tableview/TiTableView;
.super Landroid/widget/FrameLayout;
.source "TiTableView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;,
        Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;,
        Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
    }
.end annotation


# static fields
.field protected static final MAX_CLASS_NAMES:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TiTableView"

.field public static final TI_TABLE_VIEW_ID:I = 0x65


# instance fields
.field private adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

.field private filterAttribute:Ljava/lang/String;

.field private filterCaseInsensitive:Z

.field private filterText:Ljava/lang/String;

.field private itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

.field private itemLongClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

.field private listView:Landroid/widget/ListView;

.field private proxy:Lti/modules/titanium/ui/TableViewProxy;

.field private rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private rowTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Landroid/graphics/drawable/StateListDrawable;

.field private viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 0
    .parameter "tiContext"
    .parameter "proxy"

    .prologue
    .line 390
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 391
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 8
    .parameter "proxy"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 271
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    .line 272
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 274
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    .line 275
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 276
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__header__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__normal__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__default__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-direct {v2, p1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 281
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    .line 282
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    .line 284
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 285
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 286
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 287
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 288
    move-object v0, p1

    .line 289
    .local v0, fProxy:Lorg/appcelerator/kroll/KrollProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;

    invoke-direct {v3, p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lorg/appcelerator/kroll/KrollProxy;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 338
    const-string v2, "separatorColor"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const-string v2, "separatorColor"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setSeparatorColor(Ljava/lang/String;)V

    .line 341
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-direct {v2, p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lti/modules/titanium/ui/widget/tableview/TableViewModel;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    .line 342
    const-string v2, "headerView"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    const-string v2, "headerView"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 344
    .local v1, view:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 346
    .end local v1           #view:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    const-string v2, "footerView"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    const-string v2, "footerView"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 348
    .restart local v1       #view:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 351
    .end local v1           #view:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 352
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 365
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 385
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->addView(Landroid/view/View;)V

    .line 386
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    return v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    return-object v0
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemLongClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

    return-object v0
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/tableview/TiTableView;Landroid/view/View;)Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getParentTableViewItem(Landroid/view/View;)Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    move-result-object v0

    return-object v0
.end method

.method private getParentTableViewItem(Landroid/view/View;)Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    .locals 2
    .parameter "view"

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 396
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 397
    instance-of v1, v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    if-eqz v1, :cond_0

    .line 398
    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    .line 402
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .line 400
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 8
    .parameter "viewProxy"

    .prologue
    .line 458
    invoke-static {p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 459
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->forceCreateView(Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 460
    .local v4, tiView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, nativeView:Landroid/view/View;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    .line 463
    .local v3, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v5, -0x2

    .line 464
    .local v5, width:I
    const/4 v0, -0x2

    .line 465
    .local v0, height:I
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    if-eqz v6, :cond_2

    .line 466
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-eqz v6, :cond_0

    .line 467
    const/4 v0, -0x1

    .line 472
    :cond_0
    :goto_0
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    if-eqz v6, :cond_3

    .line 473
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v6, :cond_1

    .line 474
    const/4 v5, -0x1

    .line 479
    :cond_1
    :goto_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v5, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 480
    .local v2, p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    return-object v4

    .line 469
    .end local v2           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v6, :cond_0

    .line 470
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 476
    :cond_3
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v6, :cond_1

    .line 477
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public dataSetChanged()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->notifyDataSetChanged()V

    .line 488
    :cond_0
    return-void
.end method

.method public enableCustomSelector()V
    .locals 6

    .prologue
    .line 406
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 407
    .local v0, currentSelector:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Landroid/graphics/drawable/StateListDrawable;

    if-eq v0, v2, :cond_0

    .line 408
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Landroid/graphics/drawable/StateListDrawable;

    .line 409
    new-instance v1, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;-><init>(Landroid/widget/ListView;)V

    .line 410
    .local v1, selectorDrawable:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Landroid/graphics/drawable/StateListDrawable;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 413
    .end local v1           #selectorDrawable:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    :cond_0
    return-void
.end method

.method public filterBy(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 516
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/widget/tableview/TiTableView$4;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$4;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 524
    :cond_0
    return-void
.end method

.method public getIndexFromXY(DD)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 420
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v3, v4

    .line 421
    .local v0, bound:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 422
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-double v3, v3

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v3, p3, v3

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-double v3, v3

    cmpg-double v3, p3, v3

    if-gtz v3, :cond_0

    .line 424
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 427
    .end local v1           #child:Landroid/view/View;
    :goto_1
    return v3

    .line 421
    .restart local v1       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v1           #child:Landroid/view/View;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getItemAtPosition(I)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 2
    .parameter "position"

    .prologue
    .line 416
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 553
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 554
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    const/4 v0, 0x0

    .line 558
    .local v0, focusListener:Landroid/view/View$OnFocusChangeListener;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 559
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 560
    invoke-virtual {v1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    .line 561
    .local v2, listener:Landroid/view/View$OnFocusChangeListener;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v4, :cond_2

    .line 562
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 563
    move-object v0, v2

    .line 567
    .end local v2           #listener:Landroid/view/View$OnFocusChangeListener;
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 569
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 570
    .local v3, viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v3, :cond_3

    const-string v4, "postlayout"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 571
    const-string v4, "postlayout"

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 575
    :cond_3
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 578
    if-eqz p1, :cond_0

    .line 579
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    .line 536
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 539
    :cond_0
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    .line 540
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->release()V

    .line 543
    :cond_1
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 544
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    .line 545
    return-void
.end method

.method protected rowClicked(Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;IZ)Z
    .locals 7
    .parameter "rowView"
    .parameter "position"
    .parameter "longClick"

    .prologue
    .line 431
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getLastClickedViewName()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, viewClicked:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getItemAtPosition(I)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v2

    .line 433
    .local v2, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 434
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    if-eqz p3, :cond_2

    const-string v1, "longclick"

    .line 435
    .local v1, eventName:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-static {v0, v5, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->fillClickEvent(Ljava/util/HashMap;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 436
    if-eqz v4, :cond_0

    .line 437
    const-string v5, "layoutName"

    invoke-virtual {v0, v5, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_0
    const-string v5, "searchMode"

    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->isFiltered()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v5, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    instance-of v5, v5, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v5, :cond_1

    .line 442
    iget-object v3, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v3, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 443
    .local v3, rp:Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v5, "source"

    invoke-virtual {v0, v5, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-virtual {v3, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    invoke-virtual {v3, v1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 449
    .end local v3           #rp:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    if-eqz p3, :cond_3

    .line 450
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemLongClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

    invoke-interface {v5, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;->onLongClick(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v5

    .line 452
    :goto_1
    return v5

    .line 434
    .end local v1           #eventName:Ljava/lang/String;
    :cond_2
    const-string v1, "click"

    goto :goto_0

    .line 452
    .restart local v1       #eventName:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setFilterAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "filterAttribute"

    .prologue
    .line 527
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setFilterCaseInsensitive(Z)V
    .locals 0
    .parameter "filterCaseInsensitive"

    .prologue
    .line 531
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    .line 532
    return-void
.end method

.method public setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 491
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    .line 492
    return-void
.end method

.method public setOnItemLongClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 496
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemLongClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

    .line 497
    return-void
.end method

.method public setSeparatorColor(Ljava/lang/String;)V
    .locals 4
    .parameter "colorstring"

    .prologue
    .line 500
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 501
    .local v1, sepColor:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 502
    .local v0, dividerHeight:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 504
    return-void
.end method
