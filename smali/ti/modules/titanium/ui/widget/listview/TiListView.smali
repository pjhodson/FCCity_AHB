.class public Lti/modules/titanium/ui/widget/listview/TiListView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;,
        Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;
    }
.end annotation


# static fields
.field public static final BUILT_IN_TEMPLATE_ITEM_TYPE:I = 0x1

.field public static final HEADER_FOOTER_ITEM_TYPE:I = 0x0

.field public static final MIN_ROW_HEIGHT:Ljava/lang/String; = "30dp"

.field public static MUST_SET_PROPERTIES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TiListView"

.field public static accessory:I

.field public static disclosure:I

.field public static hasChild:I

.field public static inflater:Landroid/view/LayoutInflater;

.field public static isCheck:I

.field public static listContentId:I


# instance fields
.field private adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

.field private defaultTemplateBinding:Ljava/lang/String;

.field private footerView:Landroid/view/View;

.field private headerFooterId:I

.field private headerView:Landroid/view/View;

.field private itemTypeCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private listItemId:I

.field private listView:Landroid/widget/ListView;

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy;",
            ">;"
        }
    .end annotation
.end field

.field private templatesByBinding:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private titleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/ui/widget/listview/TiListView;->MUST_SET_PROPERTIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 7
    .parameter "proxy"
    .parameter "activity"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 216
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    .line 220
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->itemTypeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 221
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    .line 222
    const-string v2, "listDefaultTemplate"

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->defaultTemplateBinding:Ljava/lang/String;

    .line 225
    new-instance v1, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    invoke-direct {v1, p0, p2}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;-><init>(Lti/modules/titanium/ui/widget/listview/TiListView;Landroid/content/Context;)V

    .line 226
    .local v1, wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->setFocusable(Z)V

    .line 227
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->setFocusableInTouchMode(Z)V

    .line 228
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    .line 229
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->addView(Landroid/view/View;)V

    .line 231
    new-instance v2, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-direct {v2, p0, p2}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;-><init>(Lti/modules/titanium/ui/widget/listview/TiListView;Landroid/app/Activity;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    .line 234
    sget-object v2, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    .line 235
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sput-object v2, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    .line 238
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 239
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    iput-boolean v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 240
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    iput-boolean v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 241
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 242
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 243
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    const/high16 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 246
    :try_start_0
    const-string v2, "layout.titanium_ui_list_header_or_footer"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    .line 247
    const-string v2, "layout.titanium_ui_list_item"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listItemId:I

    .line 248
    const-string v2, "id.titanium_ui_list_header_or_footer_title"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    .line 249
    const-string v2, "id.titanium_ui_list_item_content"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    sput v2, Lti/modules/titanium/ui/widget/listview/TiListView;->listContentId:I

    .line 250
    const-string v2, "drawable.btn_check_buttonless_on_64"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    sput v2, Lti/modules/titanium/ui/widget/listview/TiListView;->isCheck:I

    .line 251
    const-string v2, "drawable.btn_more_64"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    sput v2, Lti/modules/titanium/ui/widget/listview/TiListView;->hasChild:I

    .line 252
    const-string v2, "drawable.disclosure_64"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    sput v2, Lti/modules/titanium/ui/widget/listview/TiListView;->disclosure:I

    .line 253
    const-string v2, "id.titanium_ui_list_item_accessoryType"

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    sput v2, Lti/modules/titanium/ui/widget/listview/TiListView;->accessory:I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->setNativeView(Landroid/view/View;)V

    .line 260
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v2, "TiListView"

    const-string v3, "XML resources could not be found!!!"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/listview/TiListView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/listview/TiListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    return v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/listview/TiListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    return v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/listview/TiListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listItemId:I

    return v0
.end method

.method private findItemPosition(II)I
    .locals 5
    .parameter "sectionIndex"
    .parameter "sectionItemIndex"

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 490
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 491
    .local v2, section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    if-ne v0, p1, :cond_2

    .line 492
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getContentCount()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 493
    const-string v3, "TiListView"

    const-string v4, "Invalid item index"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v3, -0x1

    .line 505
    .end local v2           #section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :goto_1
    return v3

    .line 496
    .restart local v2       #section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    add-int/2addr v1, p2

    .line 497
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getHeaderTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 498
    add-int/lit8 v1, v1, 0x1

    .end local v2           #section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_1
    move v3, v1

    .line 505
    goto :goto_1

    .line 502
    .restart local v2       #section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_2
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private refreshItems()V
    .locals 3

    .prologue
    .line 364
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 365
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 366
    .local v1, section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->refreshItems()V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v1           #section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    return-void
.end method


# virtual methods
.method public appendSection(Ljava/lang/Object;)V
    .locals 4
    .parameter "section"

    .prologue
    const/4 v3, -0x1

    .line 445
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 446
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 447
    .local v1, secs:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 448
    aget-object v2, v1, v0

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v0           #i:I
    .end local v1           #secs:[Ljava/lang/Object;
    .restart local p1
    :cond_0
    invoke-virtual {p0, p1, v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 453
    .end local p1
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 454
    return-void
.end method

.method public deleteSectionAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 457
    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 458
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    const-string v0, "TiListView"

    const-string v1, "Invalid index to delete section"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultTemplateBinding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->defaultTemplateBinding:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->itemTypeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getSectionInfoByEntryIndex(I)Landroid/util/Pair;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 412
    if-gez p1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-object v3

    .line 415
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 416
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 417
    .local v1, section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v2

    .line 418
    .local v2, sectionItemCount:I
    add-int/lit8 v4, v2, -0x1

    if-gt p1, v4, :cond_2

    .line 419
    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_2
    sub-int/2addr p1, v2

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTemplateByBinding(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 1
    .parameter "binding"

    .prologue
    .line 433
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    return-object v0
.end method

.method public insertSectionAt(ILjava/lang/Object;)V
    .locals 4
    .parameter "index"
    .parameter "section"

    .prologue
    .line 466
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    .line 467
    const-string v2, "TiListView"

    const-string v3, "Invalid index to insert/replace section"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local p2
    :goto_0
    return-void

    .line 470
    .restart local p2
    :cond_0
    instance-of v2, p2, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 471
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    .line 472
    .local v1, secs:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 473
    aget-object v2, v1, v0

    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 474
    add-int/lit8 p1, p1, 0x1

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    .end local v0           #i:I
    .end local v1           #secs:[Ljava/lang/Object;
    .restart local p2
    :cond_1
    invoke-virtual {p0, p2, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 479
    .end local p2
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .parameter "d"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 280
    const-string v2, "templates"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const-string v2, "templates"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    .local v1, templates:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 283
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    check-cast v1, Ljava/util/HashMap;

    .end local v1           #templates:Ljava/lang/Object;
    invoke-direct {v2, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->processTemplates(Lorg/appcelerator/kroll/KrollDict;)V

    .line 287
    :cond_0
    const-string v2, "showVerticalScrollIndicator"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    const-string v3, "showVerticalScrollIndicator"

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 291
    :cond_1
    const-string v2, "defaultItemTemplate"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    const-string v2, "defaultItemTemplate"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->defaultTemplateBinding:Ljava/lang/String;

    .line 295
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;

    .line 296
    .local v0, listProxy:Lti/modules/titanium/ui/widget/listview/ListViewProxy;
    const-string v2, "sections"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 300
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->isPreload()Z

    move-result v2

    if-nez v2, :cond_8

    .line 301
    const-string v2, "sections"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSections([Ljava/lang/Object;)V

    .line 311
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->clearPreloadSections()V

    .line 313
    const-string v2, "headerTitle"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 314
    sget-object v2, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    .line 315
    const-string v2, "headerTitle"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->setHeaderTitle(Ljava/lang/String;)V

    .line 318
    :cond_4
    const-string v2, "footerTitle"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 319
    sget-object v2, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    .line 320
    const-string v2, "footerTitle"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->setFooterTitle(Ljava/lang/String;)V

    .line 324
    :cond_5
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    if-nez v2, :cond_6

    .line 325
    sget-object v2, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    .line 326
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    iget v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_6
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    if-nez v2, :cond_7

    .line 330
    sget-object v2, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    .line 331
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    iget v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_7
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 336
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 338
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 340
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 342
    return-void

    .line 303
    :cond_8
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getPreloadSections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSections([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 305
    :cond_9
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->isPreload()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getPreloadSections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSections([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected processSection(Ljava/lang/Object;I)V
    .locals 2
    .parameter "sec"
    .parameter "index"

    .prologue
    .line 392
    instance-of v1, p1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 393
    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 394
    .local v0, section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    .end local v0           #section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local v0       #section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_3

    .line 398
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->setAdapter(Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;)V

    .line 403
    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->setListView(Lti/modules/titanium/ui/widget/listview/TiListView;)V

    .line 405
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->setTemplateType()V

    .line 407
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processPreloadData()V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method protected processSections([Ljava/lang/Object;)V
    .locals 3
    .parameter "sections"

    .prologue
    .line 385
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 386
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 387
    aget-object v1, p1, v0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method protected processTemplates(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "templates"

    .prologue
    .line 371
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    .local v1, key:Ljava/lang/String;
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 374
    .local v2, properties:Lorg/appcelerator/kroll/KrollDict;
    new-instance v3, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    invoke-direct {v3, v1, v2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;-><init>(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 376
    .local v3, template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getItemType()I

    move-result v4

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->setType(I)V

    .line 377
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->setRootParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 381
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #properties:Lorg/appcelerator/kroll/KrollDict;
    .end local v3           #template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 346
    const-string v0, "headerTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->setHeaderTitle(Ljava/lang/String;)V

    .line 361
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 348
    .restart local p3
    :cond_1
    const-string v0, "footerTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->setFooterTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_2
    const-string v0, "sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 351
    check-cast p3, [Ljava/lang/Object;

    .end local p3
    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSections([Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 355
    .restart local p3
    :cond_3
    const-string v0, "showVerticalScrollIndicator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 356
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 357
    :cond_4
    const-string v0, "defaultItemTemplate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 358
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->defaultTemplateBinding:Ljava/lang/String;

    .line 359
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->refreshItems()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 516
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 517
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->release()V

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 520
    .local v0, binding:Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->release()V

    goto :goto_1

    .line 522
    .end local v0           #binding:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 523
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 524
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 525
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 526
    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    .line 528
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 529
    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    .line 531
    :cond_3
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 532
    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    .line 535
    :cond_4
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 536
    return-void
.end method

.method public replaceSectionAt(ILjava/lang/Object;)V
    .locals 0
    .parameter "index"
    .parameter "section"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->deleteSectionAt(I)V

    .line 484
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->insertSectionAt(ILjava/lang/Object;)V

    .line 485
    return-void
.end method

.method public scrollToItem(II)V
    .locals 3
    .parameter "sectionIndex"
    .parameter "sectionItemIndex"

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->findItemPosition(II)I

    move-result v0

    .line 510
    .local v0, position:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 511
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 513
    :cond_0
    return-void
.end method

.method public setFooterTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 271
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    iget v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :cond_0
    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 263
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    iget v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :cond_0
    return-void
.end method
