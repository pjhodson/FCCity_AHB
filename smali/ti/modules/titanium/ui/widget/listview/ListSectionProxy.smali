.class public Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "ListSectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;
    }
.end annotation


# static fields
.field private static final MSG_APPEND_ITEMS:I = 0x778

.field private static final MSG_DELETE_ITEMS_AT:I = 0x77a

.field private static final MSG_FIRST_ID:I = 0x4bb

.field private static final MSG_GET_ITEMS:I = 0x77e

.field private static final MSG_GET_ITEM_AT:I = 0x77b

.field private static final MSG_INSERT_ITEMS_AT:I = 0x779

.field private static final MSG_REPLACE_ITEMS_AT:I = 0x77c

.field private static final MSG_SET_ITEMS:I = 0x777

.field private static final MSG_UPDATE_ITEM_AT:I = 0x77d

.field private static final TAG:Ljava/lang/String; = "ListSectionProxy"


# instance fields
.field private adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

.field public builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

.field private footerTitle:Ljava/lang/String;

.field private headerTitle:Ljava/lang/String;

.field private itemCount:I

.field private itemProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listItemData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/ui/widget/listview/TiListView;",
            ">;"
        }
    .end annotation
.end field

.field private preload:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxy;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    .line 87
    iput v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 88
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 89
    return-void
.end method

.method private deleteItems(II)Z
    .locals 2
    .parameter "index"
    .parameter "count"

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, delete:Z
    :goto_0
    if-lez p2, :cond_2

    .line 457
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 458
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    iget v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 460
    const/4 v0, 0x1

    .line 462
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 463
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 465
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 467
    :cond_2
    return v0
.end method

.method private handleAppendItems(Ljava/lang/Object;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 399
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 400
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v5, p1

    check-cast v5, [Ljava/lang/Object;

    .line 401
    .local v5, views:[Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 402
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    .line 409
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v6

    if-nez v6, :cond_2

    .line 410
    const/4 v6, 0x1

    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 422
    .end local v5           #views:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 404
    .restart local v5       #views:[Ljava/lang/Object;
    :cond_1
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 405
    .local v4, view:Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #view:Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 415
    .local v1, count:I
    iget v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    array-length v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 417
    invoke-direct {p0, v5, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processData([Ljava/lang/Object;I)V

    goto :goto_0

    .line 420
    .end local v1           #count:I
    .end local v5           #views:[Ljava/lang/Object;
    .restart local p1
    :cond_3
    const-string v6, "ListSectionProxy"

    const-string v7, "Invalid argument type to setData"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDeleteItemsAt(II)V
    .locals 1
    .parameter "index"
    .parameter "count"

    .prologue
    .line 471
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->deleteItems(II)Z

    .line 472
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 475
    :cond_0
    return-void
.end method

.method private handleGetItemAt(I)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .parameter "index"

    .prologue
    .line 230
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 231
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleInsertItemsAt(ILjava/lang/Object;)V
    .locals 9
    .parameter "index"
    .parameter "data"

    .prologue
    .line 425
    instance-of v6, p2, [Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 426
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v5, p2

    check-cast v5, [Ljava/lang/Object;

    .line 428
    .local v5, views:[Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 429
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    .line 442
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v6

    if-nez v6, :cond_4

    .line 443
    const/4 v6, 0x1

    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 452
    .end local v5           #views:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 431
    .restart local v5       #views:[Ljava/lang/Object;
    :cond_1
    if-ltz p1, :cond_2

    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le p1, v6, :cond_3

    .line 432
    :cond_2
    const-string v6, "ListSectionProxy"

    const-string v7, "Invalid index to handleInsertItem"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_3
    move v1, p1

    .line 436
    .local v1, counter:I
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 437
    .local v4, view:Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 447
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #counter:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #view:Ljava/lang/Object;
    :cond_4
    iget v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    array-length v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 448
    invoke-direct {p0, v5, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processData([Ljava/lang/Object;I)V

    goto :goto_0

    .line 450
    .end local v5           #views:[Ljava/lang/Object;
    .restart local p2
    :cond_5
    const-string v6, "ListSectionProxy"

    const-string v7, "Invalid argument type to insertItemsAt"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleReplaceItemsAt(IILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "count"
    .parameter "data"

    .prologue
    .line 478
    if-nez p2, :cond_1

    .line 479
    invoke-direct {p0, p1, p3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleInsertItemsAt(ILjava/lang/Object;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->deleteItems(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0, p1, p3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleInsertItemsAt(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleSetItems(Ljava/lang/Object;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 381
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 382
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 383
    .local v0, items:[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    .line 384
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 386
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 387
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 396
    .end local v0           #items:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 390
    .restart local v0       #items:[Ljava/lang/Object;
    :cond_0
    array-length v1, v0

    iput v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 391
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processData([Ljava/lang/Object;I)V

    goto :goto_0

    .line 394
    .end local v0           #items:[Ljava/lang/Object;
    .restart local p1
    :cond_1
    const-string v1, "ListSectionProxy"

    const-string v2, "Invalid argument type to setData"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUpdateItemAt(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "data"

    .prologue
    .line 486
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleReplaceItemsAt(IILjava/lang/Object;)V

    .line 487
    const-string v0, "items"

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    return-void
.end method

.method private processData([Ljava/lang/Object;I)V
    .locals 8
    .parameter "items"
    .parameter "offset"

    .prologue
    .line 345
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 377
    :goto_0
    return-void

    .line 349
    :cond_0
    array-length v6, p1

    new-array v5, v6, [Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    .line 352
    .local v5, temps:[Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 353
    aget-object v3, p1, v1

    .line 354
    .local v3, itemData:Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/HashMap;

    if-eqz v6, :cond_1

    .line 355
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    check-cast v3, Ljava/util/HashMap;

    .end local v3           #itemData:Ljava/lang/Object;
    invoke-direct {v0, v3}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 356
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    add-int v6, v1, p2

    invoke-direct {p0, v0, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    .line 357
    .local v4, template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    const/4 v6, 0x1

    invoke-virtual {v4, v0, v6}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->updateOrMergeWithDefaultProperties(Lorg/appcelerator/kroll/KrollDict;Z)V

    .line 358
    aput-object v4, v5, v1

    .line 352
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    .end local v4           #template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 362
    :cond_2
    const/4 v1, 0x0

    :goto_2
    array-length v6, p1

    if-ge v1, v6, :cond_5

    .line 363
    aget-object v3, p1, v1

    .line 364
    .restart local v3       #itemData:Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/HashMap;

    if-eqz v6, :cond_4

    .line 365
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    check-cast v3, Ljava/util/HashMap;

    .end local v3           #itemData:Ljava/lang/Object;
    invoke-direct {v0, v3}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 366
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    aget-object v4, v5, v1

    .line 367
    .restart local v4       #template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    if-eqz v4, :cond_3

    .line 368
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->updateOrMergeWithDefaultProperties(Lorg/appcelerator/kroll/KrollDict;Z)V

    .line 370
    :cond_3
    new-instance v2, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-direct {v2, p0, v0, v4}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;-><init>(Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;)V

    .line 371
    .local v2, itemD:Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;
    const-string v6, "template"

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    add-int v7, v1, p2

    invoke-virtual {v6, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 362
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    .end local v2           #itemD:Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;
    .end local v4           #template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 376
    :cond_5
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private processDefaultTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 5
    .parameter "data"
    .parameter "index"

    .prologue
    .line 530
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    const-string v2, "listDefaultTemplate"

    const/4 v3, 0x0

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;-><init>(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Landroid/app/Activity;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    .line 537
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v0

    .line 538
    .local v0, listView:Lti/modules/titanium/ui/widget/listview/TiListView;
    if-eqz v0, :cond_0

    .line 539
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->setType(I)V

    .line 540
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->setRootParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 544
    .end local v0           #listView:Lti/modules/titanium/ui/widget/listview/TiListView;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    return-object v1
.end method

.method private processTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 7
    .parameter "itemData"
    .parameter "index"

    .prologue
    .line 492
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v3

    .line 493
    .local v3, listView:Lti/modules/titanium/ui/widget/listview/TiListView;
    const/4 v2, 0x0

    .line 494
    .local v2, defaultTemplateBinding:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 495
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->getDefaultTemplateBinding()Ljava/lang/String;

    move-result-object v2

    .line 499
    :cond_0
    const-string v5, "template"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, binding:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 502
    const-string v5, "listDefaultTemplate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processDefaultTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    .line 523
    :cond_1
    :goto_0
    return-object v4

    .line 506
    :cond_2
    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getTemplateByBinding(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    .line 509
    .local v4, template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    if-nez v4, :cond_1

    .line 510
    const-string v5, "ListSectionProxy"

    const-string v6, "Template undefined"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    .end local v4           #template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_3
    if-eqz v2, :cond_4

    const-string v5, "listDefaultTemplate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 518
    invoke-virtual {v3, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->getTemplateByBinding(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v1

    .line 519
    .local v1, defTemplate:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    if-eqz v1, :cond_4

    move-object v4, v1

    .line 520
    goto :goto_0

    .line 523
    .end local v1           #defTemplate:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_4
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processDefaultTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public appendExtraEventData(Lorg/appcelerator/titanium/view/TiUIView;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "itemIndex"
    .parameter "sectionIndex"
    .parameter "bindId"
    .parameter "itemId"

    .prologue
    .line 593
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getAdditionalEventData()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 594
    .local v0, existingData:Lorg/appcelerator/kroll/KrollDict;
    if-nez v0, :cond_0

    .line 595
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #existingData:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 596
    .restart local v0       #existingData:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setAdditionalEventData(Lorg/appcelerator/kroll/KrollDict;)V

    .line 599
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 600
    add-int/lit8 p2, p2, -0x1

    .line 603
    :cond_1
    const-string v1, "section"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "sectionIndex"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v1, "itemIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v1, "generatedBinding:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "properties"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 608
    const-string v1, "bindId"

    invoke-virtual {v0, v1, p4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_2
    :goto_0
    if-eqz p5, :cond_5

    .line 614
    const-string v1, "itemId"

    invoke-virtual {v0, v1, p5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_3
    :goto_1
    return-void

    .line 609
    :cond_4
    const-string v1, "bindId"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    const-string v1, "bindId"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 615
    :cond_5
    const-string v1, "itemId"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 616
    const-string v1, "itemId"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public appendItems(Ljava/lang/Object;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 256
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleAppendItems(Ljava/lang/Object;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x778

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public deleteItemsAt(II)V
    .locals 3
    .parameter "index"
    .parameter "count"

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleDeleteItemsAt(II)V

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 293
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x77a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public generateCellContent(ILorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;ILandroid/view/View;)V
    .locals 9
    .parameter "sectionIndex"
    .parameter "data"
    .parameter "template"
    .parameter "itemContent"
    .parameter "itemPosition"
    .parameter "item_layout"

    .prologue
    .line 556
    invoke-virtual {p3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getRootItem()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getViewProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v8

    .line 558
    .local v8, itemProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    new-instance v7, Lti/modules/titanium/ui/widget/listview/TiListItem;

    invoke-virtual {p4}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v7, v8, v0, p4, p6}, Lti/modules/titanium/ui/widget/listview/TiListItem;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;Landroid/view/View;Landroid/view/View;)V

    .line 560
    .local v7, item:Lti/modules/titanium/ui/widget/listview/TiListItem;
    invoke-virtual {p4, v7}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->setTag(Ljava/lang/Object;)V

    .line 562
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 563
    invoke-virtual {p3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getRootItem()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p4, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->generateChildContentViews(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;Lorg/appcelerator/titanium/view/TiUIView;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Z)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move v4, p5

    move v5, p1

    move-object v6, p6

    .line 564
    invoke-virtual/range {v0 .. v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->populateViews(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;IILandroid/view/View;)V

    .line 566
    :cond_0
    return-void
.end method

.method public generateChildContentViews(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;Lorg/appcelerator/titanium/view/TiUIView;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Z)V
    .locals 8
    .parameter "item"
    .parameter "parentContent"
    .parameter "rootItem"
    .parameter "root"

    .prologue
    .line 571
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 572
    .local v1, childrenItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 573
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 574
    .local v0, child:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getViewProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 575
    .local v3, proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 576
    .local v4, view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch()V

    .line 577
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v4, p3, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->generateChildContentViews(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;Lorg/appcelerator/titanium/view/TiUIView;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Z)V

    .line 580
    new-instance v5, Lti/modules/titanium/ui/widget/listview/ViewItem;

    new-instance v6, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v6}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-direct {v5, v4, v6}, Lti/modules/titanium/ui/widget/listview/ViewItem;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 581
    .local v5, viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getBindingId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v5}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->bindView(Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;)V

    .line 583
    if-eqz p4, :cond_0

    .line 584
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p2, v4}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    goto :goto_1

    .line 590
    .end local v0           #child:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .end local v3           #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v4           #view:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v5           #viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;
    :cond_1
    return-void
.end method

.method public getContentCount()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    return v0
.end method

.method public getFooterTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderOrFooterTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    .line 140
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemAt(I)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .parameter "index"

    .prologue
    .line 222
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleGetItemAt(I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x77b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 699
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 700
    .local v0, totalCount:I
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 701
    add-int/lit8 v0, v0, 0x1

    .line 703
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 704
    add-int/lit8 v0, v0, 0x1

    .line 706
    :cond_1
    return v0
.end method

.method public getItems()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x77e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getListItemData(I)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "position"

    .prologue
    .line 743
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 744
    add-int/lit8 p1, p1, -0x1

    .line 746
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 747
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 749
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListView()Lti/modules/titanium/ui/widget/listview/TiListView;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .line 725
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTemplateByIndex(I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 1
    .parameter "index"

    .prologue
    .line 686
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 687
    add-int/lit8 p1, p1, -0x1

    .line 689
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getTemplate()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "dict"

    .prologue
    .line 93
    const-string v0, "headerTitle"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "headerTitle"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    .line 96
    :cond_0
    const-string v0, "footerTitle"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "footerTitle"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    .line 99
    :cond_1
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 102
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 146
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 214
    invoke-super {p0, p1}, Lti/modules/titanium/ui/ViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v5

    :goto_0
    return v5

    .line 149
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 150
    .local v4, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v4           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 157
    .restart local v4       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    .end local v4           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 163
    .restart local v4       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleAppendItems(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    .end local v4           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 170
    .restart local v4       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 171
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "index"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 172
    .local v2, index:I
    const-string v6, "data"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleInsertItemsAt(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v2           #index:I
    .end local v4           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 179
    .restart local v4       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 180
    .restart local v1       #data:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "index"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 181
    .restart local v2       #index:I
    const-string v6, "count"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .local v0, count:I
    invoke-direct {p0, v2, v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleDeleteItemsAt(II)V

    .line 183
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    .end local v0           #count:I
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v2           #index:I
    .end local v4           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 189
    .restart local v4       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 190
    .restart local v1       #data:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "index"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 191
    .restart local v2       #index:I
    const-string v6, "count"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 192
    .restart local v0       #count:I
    const-string v6, "data"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v2, v0, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleReplaceItemsAt(IILjava/lang/Object;)V

    .line 193
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 198
    .end local v0           #count:I
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v2           #index:I
    .end local v4           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 199
    .restart local v4       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleGetItemAt(I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 200
    .local v3, item:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v4, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 205
    .end local v3           #item:Lorg/appcelerator/kroll/KrollDict;
    .end local v4           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 206
    .restart local v4       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 207
    .restart local v1       #data:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "index"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 208
    .restart local v2       #index:I
    const-string v6, "data"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleUpdateItemAt(ILjava/lang/Object;)V

    .line 209
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x777
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public insertItemsAt(ILjava/lang/Object;)V
    .locals 3
    .parameter "index"
    .parameter "data"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleInsertItemsAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 277
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x779

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isFooterView(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 714
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderView(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 710
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndexValid(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 264
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public populateViews(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;IILandroid/view/View;)V
    .locals 23
    .parameter "data"
    .parameter "cellContent"
    .parameter "template"
    .parameter "itemIndex"
    .parameter "sectionIndex"
    .parameter "item_layout"

    .prologue
    .line 622
    invoke-virtual/range {p2 .. p2}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 624
    .local v14, cell:Ljava/lang/Object;
    instance-of v2, v14, Lti/modules/titanium/ui/widget/listview/TiListItem;

    if-nez v2, :cond_1

    .line 625
    const-string v2, "ListSectionProxy"

    const-string v4, "Cell is not TiListItem. Something is wrong.."

    const-string v5, "DEBUG_MODE"

    invoke-static {v2, v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v14

    .line 629
    check-cast v3, Lti/modules/titanium/ui/widget/listview/TiListItem;

    .line 631
    .local v3, listItem:Lti/modules/titanium/ui/widget/listview/TiListItem;
    const/4 v7, 0x0

    .line 633
    .local v7, itemId:Ljava/lang/String;
    const-string v2, "properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 634
    new-instance v19, Lorg/appcelerator/kroll/KrollDict;

    const-string v2, "properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 640
    .local v19, listItemProperties:Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    const-string v2, "itemId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 641
    const-string v2, "itemId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 645
    :cond_2
    const-string v6, "properties"

    move-object/from16 v2, p0

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v2 .. v7}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->appendExtraEventData(Lorg/appcelerator/titanium/view/TiUIView;IILjava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->getViewsMap()Ljava/util/HashMap;

    move-result-object v22

    .line 649
    .local v22, views:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 650
    .local v12, binding:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getDataItem(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v15

    .line 651
    .local v15, dataItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lti/modules/titanium/ui/widget/listview/ViewItem;

    .line 652
    .local v21, viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;
    invoke-virtual/range {v21 .. v21}, Lti/modules/titanium/ui/widget/listview/ViewItem;->getView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v9

    .line 654
    .local v9, view:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v9, :cond_4

    move-object/from16 v8, p0

    move/from16 v10, p4

    move/from16 v11, p5

    move-object v13, v7

    .line 655
    invoke-virtual/range {v8 .. v13}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->appendExtraEventData(Lorg/appcelerator/titanium/view/TiUIView;IILjava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v9, :cond_6

    .line 660
    new-instance v20, Lorg/appcelerator/kroll/KrollDict;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 661
    .local v20, properties:Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/ViewItem;->generateDiffProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v16

    .line 662
    .local v16, diffProperties:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual/range {v16 .. v16}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 663
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_2

    .line 636
    .end local v9           #view:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v12           #binding:Ljava/lang/String;
    .end local v15           #dataItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .end local v16           #diffProperties:Lorg/appcelerator/kroll/KrollDict;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #listItemProperties:Lorg/appcelerator/kroll/KrollDict;
    .end local v20           #properties:Lorg/appcelerator/kroll/KrollDict;
    .end local v21           #viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;
    .end local v22           #views:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;>;"
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getRootItem()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getDefaultProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v19

    .restart local v19       #listItemProperties:Lorg/appcelerator/kroll/KrollDict;
    goto/16 :goto_1

    .line 666
    .restart local v9       #view:Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v12       #binding:Ljava/lang/String;
    .restart local v15       #dataItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v21       #viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;
    .restart local v22       #views:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;>;"
    :cond_6
    if-eqz v15, :cond_7

    if-eqz v9, :cond_7

    .line 667
    invoke-virtual {v15}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getDefaultProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/listview/ViewItem;->generateDiffProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v16

    .line 668
    .restart local v16       #diffProperties:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual/range {v16 .. v16}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 669
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_2

    .line 672
    .end local v16           #diffProperties:Lorg/appcelerator/kroll/KrollDict;
    :cond_7
    const-string v2, "ListSectionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sorry, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isn\'t a valid binding. Perhaps you made a typo?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v2, v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 678
    .end local v9           #view:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v12           #binding:Ljava/lang/String;
    .end local v15           #dataItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .end local v21           #viewItem:Lti/modules/titanium/ui/widget/listview/ViewItem;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->getViewItem()Lti/modules/titanium/ui/widget/listview/ViewItem;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/widget/listview/ViewItem;->generateDiffProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v18

    .line 679
    .local v18, listItemDiff:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/listview/TiListItem;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0
.end method

.method public processPreloadData()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 338
    :cond_0
    return-void
.end method

.method public refreshItems()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 755
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    .line 758
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 760
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    .line 763
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    if-eqz v0, :cond_2

    .line 764
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->release()V

    .line 765
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    .line 767
    :cond_2
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->release()V

    .line 768
    return-void
.end method

.method public replaceItemsAt(IILjava/lang/Object;)V
    .locals 3
    .parameter "index"
    .parameter "count"
    .parameter "data"

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleReplaceItemsAt(IILjava/lang/Object;)V

    goto :goto_0

    .line 308
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 309
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x77c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAdapter(Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 105
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    .line 106
    return-void
.end method

.method public setFooterTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "headerTitle"

    .prologue
    .line 123
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 127
    :cond_0
    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "headerTitle"

    .prologue
    .line 110
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 114
    :cond_0
    return-void
.end method

.method public setItems(Ljava/lang/Object;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 238
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x777

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setListView(Lti/modules/titanium/ui/widget/listview/TiListView;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 718
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listView:Ljava/lang/ref/WeakReference;

    .line 719
    return-void
.end method

.method public setTemplateType()V
    .locals 5

    .prologue
    .line 733
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 734
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getTemplate()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v2

    .line 735
    .local v2, temp:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v1

    .line 736
    .local v1, listView:Lti/modules/titanium/ui/widget/listview/TiListView;
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 737
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->getItemType()I

    move-result v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->setType(I)V

    .line 733
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    .end local v1           #listView:Lti/modules/titanium/ui/widget/listview/TiListView;
    .end local v2           #temp:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_1
    return-void
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 5
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 318
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isIndexValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-direct {p0, p1, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleUpdateItemAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 325
    :cond_2
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 326
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "data"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x77d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
