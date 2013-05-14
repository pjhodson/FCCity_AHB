.class public Lti/modules/titanium/ui/TableViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/TableViewProxy$RowResult;
    }
.end annotation


# static fields
.field public static final CLASSNAME_DEFAULT:Ljava/lang/String; = "__default__"

.field public static final CLASSNAME_HEADER:Ljava/lang/String; = "__header__"

.field public static final CLASSNAME_HEADERVIEW:Ljava/lang/String; = "__headerView__"

.field public static final CLASSNAME_NORMAL:Ljava/lang/String; = "__normal__"

.field private static final INSERT_ROW_AFTER:I = 0x1

.field private static final INSERT_ROW_BEFORE:I = 0x0

.field private static final INSERT_SECTION_AFTER:I = 0x1

.field private static final INSERT_SECTION_BEFORE:I = 0x0

.field private static final MSG_APPEND_ROW:I = 0x1848

.field private static final MSG_APPEND_SECTION:I = 0x184b

.field private static final MSG_DELETE_ROW:I = 0x1846

.field private static final MSG_DELETE_SECTION:I = 0x184c

.field private static final MSG_INSERT_ROW:I = 0x1847

.field private static final MSG_INSERT_SECTION:I = 0x184d

.field private static final MSG_SCROLL_TO_INDEX:I = 0x1844

.field private static final MSG_SCROLL_TO_TOP:I = 0x1849

.field private static final MSG_SELECT_ROW:I = 0x184a

.field private static final MSG_SET_DATA:I = 0x1845

.field private static final MSG_UPDATE_VIEW:I = 0x1843

.field private static final TAG:Ljava/lang/String; = "TableViewProxy"


# instance fields
.field private localSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewSectionProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 80
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "overScrollMode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 86
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewProxy;-><init>()V

    .line 87
    return-void
.end method

.method private addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 3
    .parameter "row"
    .parameter "currentSection"

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz p2, :cond_0

    const-string v1, "header"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v0           #addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v0}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 590
    .restart local v0       #addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    :goto_0
    const-string v1, "header"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    const-string v1, "headerTitle"

    const-string v2, "header"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    :cond_1
    const-string v1, "footer"

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    const-string v1, "footerTitle"

    const-string v2, "footer"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 596
    :cond_2
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/TableViewSectionProxy;->add(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 597
    return-object v0

    .line 588
    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method private cleanupSections()V
    .locals 4

    .prologue
    .line 643
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v2

    .line 644
    .local v2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 645
    .local v1, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 647
    .end local v1           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 648
    return-void
.end method

.method private handleAppendRow(Ljava/lang/Object;)V
    .locals 7
    .parameter "rows"

    .prologue
    .line 253
    const/4 v3, 0x0

    .line 255
    .local v3, rowList:[Ljava/lang/Object;
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 256
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 261
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v5

    .line 262
    .local v5, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 263
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 278
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 279
    return-void

    .line 258
    .end local v5           #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .restart local p1
    :cond_1
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    .end local v3           #rowList:[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v3, v6

    .restart local v3       #rowList:[Ljava/lang/Object;
    goto :goto_0

    .line 265
    .end local p1
    .restart local v5       #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 266
    aget-object v6, v3, v1

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    .line 268
    .local v4, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 269
    .local v2, lastSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {p0, v4, v2}, Lti/modules/titanium/ui/TableViewProxy;->addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .line 270
    .local v0, addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 271
    :cond_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 265
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleAppendSection(Ljava/lang/Object;)V
    .locals 5
    .parameter "sections"

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, sectionList:[Ljava/lang/Object;
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 297
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 302
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 303
    .local v0, currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 304
    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lti/modules/titanium/ui/TableViewProxy;->sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v3

    .line 305
    .local v3, sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v3, :cond_0

    .line 306
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v3, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 303
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    .end local v0           #currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .end local v1           #i:I
    .end local v3           #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    .restart local p1
    :cond_1
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    .end local v2           #sectionList:[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p1, v2, v4

    .restart local v2       #sectionList:[Ljava/lang/Object;
    goto :goto_0

    .line 311
    .end local p1
    .restart local v0       #currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 312
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 313
    return-void
.end method

.method private handleDeleteRow(Ljava/lang/Object;)V
    .locals 7
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 332
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 333
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    .local v0, index:I
    new-instance v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 335
    .local v2, rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, v0, v2}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    iget-object v4, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v5, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/TableViewSectionProxy;->removeRowAt(I)V

    .line 337
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 338
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 355
    .end local v0           #index:I
    .end local v2           #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :goto_0
    return-void

    .line 340
    .restart local v0       #index:I
    .restart local v2       #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete row. Index out of range. Non-existent row at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    .end local v0           #index:I
    .end local v2           #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    .restart local p1
    :cond_1
    instance-of v4, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v4, :cond_3

    move-object v1, p1

    .line 343
    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 344
    .local v1, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 345
    .local v3, section:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    instance-of v4, v3, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-eqz v4, :cond_2

    .line 346
    check-cast v3, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v3           #section:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v3, v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->remove(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 347
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 348
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    goto :goto_0

    .line 350
    .restart local v3       #section:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    const-string v4, "TableViewProxy"

    const-string v5, "Unable to delete row. The row is not added to the table yet."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v1           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3           #section:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_3
    const-string v4, "TableViewProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete row. Invalid type of row: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDeleteSection(I)V
    .locals 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 376
    .local v0, currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 377
    .local v2, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 378
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 379
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 382
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    return-void

    .line 383
    .end local v2           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :catch_0
    move-exception v1

    .line 384
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete section. Index out of range. Non-existent section at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleInsertRowAfter(ILjava/lang/Object;)V
    .locals 5
    .parameter "index"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 503
    .local v1, rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v1}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 506
    .local v0, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v2, v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v3, v1, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 507
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 508
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 512
    return-void

    .line 510
    .end local v0           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index out of range. Non-existent row at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleInsertRowBefore(ILjava/lang/Object;)V
    .locals 6
    .parameter "index"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 430
    if-gez p1, :cond_0

    .line 431
    const/4 p1, 0x0

    .line 434
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 435
    .local v2, rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    invoke-direct {p0, p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 437
    .local v1, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v3, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    iget v4, v2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    invoke-virtual {v3, v4, v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 446
    .end local v1           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2           #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 447
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 448
    return-void

    .line 439
    .restart local v2       #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 443
    .end local v2           #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_2
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    aput-object v4, v0, v3

    .line 444
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleInsertSectionAfter(ILjava/lang/Object;)V
    .locals 6
    .parameter "index"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v2

    .line 533
    .local v2, sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-nez v2, :cond_0

    .line 534
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Invalid type for section: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 537
    :cond_0
    if-gez p1, :cond_1

    .line 538
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 542
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 543
    .local v0, currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 544
    invoke-virtual {v2, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 545
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 546
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    return-void

    .line 547
    .end local v0           #currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :catch_0
    move-exception v1

    .line 548
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleInsertSectionBefore(ILjava/lang/Object;)V
    .locals 6
    .parameter "index"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v2

    .line 469
    .local v2, sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-nez v2, :cond_0

    .line 470
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Invalid type for section: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    .local v0, currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 476
    invoke-virtual {v2, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 477
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 478
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return-void

    .line 479
    .end local v0           #currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :catch_0
    move-exception v1

    .line 480
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to insert section. Index out of range. Non-existent row at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleSetData([Ljava/lang/Object;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 687
    if-eqz p1, :cond_0

    .line 688
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 689
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 690
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 692
    :cond_0
    return-void
.end method

.method private locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z
    .locals 13
    .parameter "index"
    .parameter "rowResult"

    .prologue
    .line 785
    const/4 v1, 0x0

    .line 786
    .local v1, found:Z
    const/4 v5, 0x0

    .line 787
    .local v5, rowCount:I
    const/4 v9, 0x0

    .line 789
    .local v9, sectionIndex:I
    if-gez p1, :cond_0

    move v2, v1

    .line 813
    .end local v1           #found:Z
    .local v2, found:I
    :goto_0
    return v2

    .line 793
    .end local v2           #found:I
    .restart local v1       #found:Z
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, arr$:[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v8, v0, v3

    .line 794
    .local v8, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRowCount()D

    move-result-wide v11

    double-to-int v10, v11

    .line 795
    .local v10, sectionRowCount:I
    add-int v11, v10, v5

    if-le v11, p1, :cond_2

    .line 796
    iput-object v8, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 797
    iput v9, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->sectionIndex:I

    .line 798
    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v7

    .line 799
    .local v7, rowsInSection:[Lti/modules/titanium/ui/TableViewRowProxy;
    sub-int v6, p1, v5

    .line 800
    .local v6, rowIndexInSection:I
    if-ltz v6, :cond_3

    array-length v11, v7

    if-ge v6, v11, :cond_3

    .line 801
    aget-object v11, v7, v6

    iput-object v11, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->row:Lti/modules/titanium/ui/TableViewRowProxy;

    .line 802
    iput v6, p2, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    .line 803
    const/4 v1, 0x1

    .end local v6           #rowIndexInSection:I
    .end local v7           #rowsInSection:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v8           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v10           #sectionRowCount:I
    :cond_1
    move v2, v1

    .line 813
    .restart local v2       #found:I
    goto :goto_0

    .line 807
    .end local v2           #found:I
    .restart local v8       #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    .restart local v10       #sectionRowCount:I
    :cond_2
    add-int/2addr v5, v10

    .line 810
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 793
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 5
    .parameter "row"

    .prologue
    .line 708
    const/4 v1, 0x0

    .line 709
    .local v1, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    instance-of v2, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 710
    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 711
    const-string v2, "rowData"

    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 734
    const-string v2, "TableViewProxy"

    const-string v3, "Unable to create table view row proxy for object, likely an error in the type of the object passed in..."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v1, 0x0

    .line 739
    .end local v1           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    return-object v1

    .line 714
    .restart local v1       #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_2
    const/4 v0, 0x0

    .line 715
    .local v0, rowDict:Lorg/appcelerator/kroll/KrollDict;
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 716
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 722
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 723
    new-instance v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .end local v1           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewRowProxy;-><init>()V

    .line 724
    .restart local v1       #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->creationUrl:Lorg/appcelerator/titanium/util/TiUrl;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiUrl;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->setCreationUrl(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 726
    const-string v2, "className"

    const-string v3, "__normal__"

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 727
    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setCreationProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 728
    const-string v2, "rowData"

    invoke-virtual {v1, v2, p1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 718
    :cond_4
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 719
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #rowDict:Lorg/appcelerator/kroll/KrollDict;
    move-object v2, p1

    check-cast v2, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v0       #rowDict:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1
.end method

.method private sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 4
    .parameter "section"

    .prologue
    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    instance-of v2, p1, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 747
    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 748
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    .line 774
    .end local p1
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 775
    const-string v2, "TableViewProxy"

    const-string v3, "Unable to create table view section proxy for object, likely an error in the type of the object passed in..."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v1, 0x0

    .line 780
    .end local v1           #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-object v1

    .line 750
    .restart local v1       #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    .line 751
    .local v0, sectionDict:Lorg/appcelerator/kroll/KrollDict;
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_8

    move-object v0, p1

    .line 752
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 756
    .end local p1
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 757
    new-instance v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v1           #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 758
    .restart local v1       #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v2, "headerTitle"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 759
    const-string v2, "headerTitle"

    const-string v3, "headerTitle"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    :cond_4
    const-string v2, "footerTitle"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 762
    const-string v2, "footerTitle"

    const-string v3, "footerTitle"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    :cond_5
    const-string v2, "headerView"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 765
    const-string v2, "headerView"

    const-string v3, "headerView"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 767
    :cond_6
    const-string v2, "footerView"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 768
    const-string v2, "footerView"

    const-string v3, "footerView"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    :cond_7
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 753
    .restart local p1
    :cond_8
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 754
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #sectionDict:Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v0       #sectionDict:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1
.end method


# virtual methods
.method public appendRow(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "rows"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 242
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendRow(Ljava/lang/Object;)V

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1848

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public appendSection(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "sections"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 284
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendSection(Ljava/lang/Object;)V

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x184b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 141
    new-instance v0, Lti/modules/titanium/ui/widget/TiUITableView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUITableView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public deleteRow(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "row"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 318
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteRow(Ljava/lang/Object;)V

    .line 328
    :cond_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1846

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, asyncResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 326
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0           #asyncResult:Ljava/lang/Object;
    throw v0
.end method

.method public deleteSection(ILorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "index"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 360
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteSection(I)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, asyncResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 368
    const-string v1, "TableViewProxy"

    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0           #asyncResult:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 944
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 945
    const-string v8, "click"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne p3, p0, :cond_1

    .line 946
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, arr$:[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 947
    .local v7, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 948
    .local v6, row:Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->setLabelsClickable(Z)V

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 946
    .end local v6           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 952
    .end local v1           #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 957
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 958
    const-string v8, "click"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez p2, :cond_1

    if-ne p3, p0, :cond_1

    .line 959
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, arr$:[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 960
    .local v7, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 961
    .local v6, row:Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lti/modules/titanium/ui/TableViewRowProxy;->setLabelsClickable(Z)V

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 959
    .end local v6           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 965
    .end local v1           #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 10
    .parameter "eventName"
    .parameter "data"
    .parameter "bubbles"

    .prologue
    .line 152
    instance-of v8, p2, Ljava/util/HashMap;

    if-eqz v8, :cond_0

    .line 156
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v8, p2

    check-cast v8, Ljava/util/HashMap;

    invoke-direct {v0, v8}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 157
    .local v0, dataCopy:Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "x"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "y"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 158
    const-string v8, "x"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 159
    .local v4, x:D
    const-string v8, "y"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 160
    .local v6, y:D
    const-string v8, "source"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 161
    .local v3, source:Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUITableView;->getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v6, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getIndexFromXY(DD)I

    move-result v1

    .line 162
    .local v1, index:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    if-ne v3, p0, :cond_0

    .line 163
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUITableView;->getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getItemAtPosition(I)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v2

    .line 164
    .local v2, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const-string v8, "source"

    iget-object v9, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v8, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v8, p1, v0, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    .line 170
    .end local v0           #dataCopy:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #index:I
    .end local v2           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v3           #source:Ljava/lang/Object;
    .end local v4           #x:D
    .end local v6           #y:D
    :goto_0
    return v8

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    goto :goto_0
.end method

.method public getData()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 698
    .local v0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 702
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIndexByName(Ljava/lang/String;)I
    .locals 12
    .parameter "name"

    .prologue
    .line 391
    const/4 v5, -0x1

    .line 392
    .local v5, index:I
    const/4 v4, 0x0

    .line 393
    .local v4, idx:I
    if-eqz p1, :cond_1

    .line 394
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .local v0, arr$:[Lti/modules/titanium/ui/TableViewSectionProxy;
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v2           #i$:I
    .end local v6           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v10, v0, v3

    .line 395
    .local v10, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v10}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .local v1, arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v7, v1

    .local v7, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v7, :cond_0

    aget-object v9, v1, v2

    .line 396
    .local v9, row:Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v11, "name"

    invoke-virtual {v9, v11}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 397
    .local v8, rname:Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 398
    move v5, v4

    .line 403
    .end local v8           #rname:Ljava/lang/String;
    .end local v9           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    const/4 v11, -0x1

    if-le v5, v11, :cond_3

    .line 408
    .end local v1           #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v2           #i$:I
    .end local v7           #len$:I
    .end local v10           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_1
    return v5

    .line 401
    .restart local v1       #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v2       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #rname:Ljava/lang/String;
    .restart local v9       #row:Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v10       #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 394
    .end local v8           #rname:Ljava/lang/String;
    .end local v9           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    .local v0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getSections()[Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 556
    .local v0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/TableViewSectionProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lti/modules/titanium/ui/TableViewSectionProxy;

    return-object v1
.end method

.method public getSectionsArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewSectionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    .line 569
    .local v0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-nez v0, :cond_0

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .restart local v0       #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    iput-object v0, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    .line 573
    :cond_0
    return-object v0
.end method

.method public getTableView()Lti/modules/titanium/ui/widget/TiUITableView;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUITableView;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "dict"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, data:[Ljava/lang/Object;
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 96
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #o:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 97
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    const-string v2, "sections"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const-string v2, "sections"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .restart local v1       #o:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 106
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #o:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 107
    const-string v2, "sections"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 111
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->processData([Ljava/lang/Object;)V

    .line 114
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 856
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1843

    if-ne v3, v5, :cond_0

    .line 857
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 858
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/common/AsyncResult;

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 936
    :goto_0
    return v3

    .line 860
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1844

    if-ne v3, v5, :cond_1

    .line 861
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUITableView;->scrollToIndex(I)V

    move v3, v4

    .line 862
    goto :goto_0

    .line 863
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1845

    if-ne v3, v5, :cond_2

    .line 864
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 865
    .local v2, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 866
    .local v0, data:[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    .line 867
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 868
    goto :goto_0

    .line 869
    .end local v0           #data:[Ljava/lang/Object;
    .end local v2           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1847

    if-ne v3, v5, :cond_4

    .line 870
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 872
    .restart local v2       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    .line 873
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowAfter(ILjava/lang/Object;)V

    .line 878
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    :goto_2
    move v3, v4

    .line 883
    goto :goto_0

    .line 876
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 880
    :catch_0
    move-exception v1

    .line 881
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 884
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v2           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1848

    if-ne v3, v5, :cond_5

    .line 885
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 886
    .restart local v2       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendRow(Ljava/lang/Object;)V

    .line 887
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 888
    goto :goto_0

    .line 889
    .end local v2           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_5
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1846

    if-ne v3, v5, :cond_6

    .line 890
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 892
    .restart local v2       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_1
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteRow(Ljava/lang/Object;)V

    .line 893
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move v3, v4

    .line 897
    goto/16 :goto_0

    .line 894
    :catch_1
    move-exception v1

    .line 895
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 898
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v2           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184d

    if-ne v3, v5, :cond_8

    .line 899
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 901
    .restart local v2       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_7

    .line 902
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertSectionAfter(ILjava/lang/Object;)V

    .line 907
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    :goto_5
    move v3, v4

    .line 912
    goto/16 :goto_0

    .line 905
    :cond_7
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertSectionBefore(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 909
    :catch_2
    move-exception v1

    .line 910
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_5

    .line 913
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v2           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_8
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184b

    if-ne v3, v5, :cond_9

    .line 914
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 915
    .restart local v2       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleAppendSection(Ljava/lang/Object;)V

    .line 916
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v4

    .line 917
    goto/16 :goto_0

    .line 918
    .end local v2           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_9
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184c

    if-ne v3, v5, :cond_a

    .line 919
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 921
    .restart local v2       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_3
    invoke-virtual {v2}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->handleDeleteSection(I)V

    .line 922
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    move v3, v4

    .line 926
    goto/16 :goto_0

    .line 923
    :catch_3
    move-exception v1

    .line 924
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_6

    .line 927
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v2           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_a
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1849

    if-ne v3, v5, :cond_b

    .line 928
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUITableView;->scrollToTop(I)V

    move v3, v4

    .line 929
    goto/16 :goto_0

    .line 930
    :cond_b
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x184a

    if-ne v3, v5, :cond_c

    .line 931
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Lti/modules/titanium/ui/widget/TiUITableView;->selectRow(I)V

    move v3, v4

    .line 932
    goto/16 :goto_0

    .line 936
    :cond_c
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public insertRowAfter(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "index"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 487
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowAfter(ILjava/lang/Object;)V

    .line 498
    :cond_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1847

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 495
    .local v0, asyncResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 496
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0           #asyncResult:Ljava/lang/Object;
    throw v0
.end method

.method public insertRowBefore(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "index"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 414
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V

    .line 425
    :cond_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1847

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, asyncResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 423
    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0           #asyncResult:Ljava/lang/Object;
    throw v0
.end method

.method public insertSectionAfter(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "index"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 517
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertSectionAfter(ILjava/lang/Object;)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 525
    .local v0, asyncResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 526
    const-string v1, "TableViewProxy"

    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0           #asyncResult:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertSectionBefore(ILjava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "index"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 453
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/TableViewProxy;->handleInsertRowBefore(ILjava/lang/Object;)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    .local v0, asyncResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "TableViewProxy"

    check-cast v0, Ljava/lang/IllegalStateException;

    .end local v0           #asyncResult:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processData([Ljava/lang/Object;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 602
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v5

    .line 603
    .local v5, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewProxy;->cleanupSections()V

    .line 605
    const/4 v1, 0x0

    .line 606
    .local v1, currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v6, "headerTitle"

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 607
    new-instance v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v1           #currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 608
    .restart local v1       #currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    .line 609
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 611
    const-string v6, "headerTitle"

    const-string v7, "headerTitle"

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    :cond_0
    const-string v6, "footerTitle"

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 614
    if-nez v1, :cond_1

    .line 615
    new-instance v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .end local v1           #currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-direct {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 616
    .restart local v1       #currentSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    .line 617
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 620
    :cond_1
    const-string v6, "footerTitle"

    const-string v7, "footerTitle"

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lti/modules/titanium/ui/TableViewSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_7

    .line 624
    aget-object v3, p1, v2

    .line 625
    .local v3, o:Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/HashMap;

    if-nez v6, :cond_3

    instance-of v6, v3, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v6, :cond_6

    .line 626
    :cond_3
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v4

    .line 627
    .local v4, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-direct {p0, v4, v1}, Lti/modules/titanium/ui/TableViewProxy;->addRowToSection(Lti/modules/titanium/ui/TableViewRowProxy;Lti/modules/titanium/ui/TableViewSectionProxy;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v0

    .line 628
    .local v0, addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 629
    :cond_4
    move-object v1, v0

    .line 630
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 623
    .end local v0           #addedToSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    .end local v4           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_6
    instance-of v6, v3, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-eqz v6, :cond_5

    move-object v1, v3

    .line 634
    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 635
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_1

    .line 639
    .end local v3           #o:Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 131
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 133
    .local v1, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewSectionProxy;->releaseViews()V

    goto :goto_0

    .line 136
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    return-void
.end method

.method public scrollToIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 829
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1844

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 831
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 832
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 833
    return-void
.end method

.method public scrollToTop(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 847
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1849

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 849
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 850
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 851
    return-void
.end method

.method public selectRow(I)V
    .locals 3
    .parameter "row_id"

    .prologue
    .line 838
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x184a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 839
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 840
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 841
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 120
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewProxy;->localSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 122
    .local v1, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/TableViewSectionProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 125
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_0
    return-void
.end method

.method public setData([Ljava/lang/Object;)V
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 653
    move-object v0, p1

    .line 654
    .local v0, data:[Ljava/lang/Object;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v2

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 655
    aget-object v1, p1, v2

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 657
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1845

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSections([Ljava/lang/Object;)V
    .locals 8
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    .line 668
    move-object v1, p1

    .line 669
    .local v1, data:[Ljava/lang/Object;
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    aget-object v5, p1, v6

    instance-of v5, v5, [Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 670
    aget-object v5, p1, v6

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 672
    :cond_0
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 673
    .local v4, section:Ljava/lang/Object;
    instance-of v5, v4, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-nez v5, :cond_1

    .line 674
    const-string v5, "TableViewProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to set sections. Invalid type for section: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v4           #section:Ljava/lang/Object;
    :goto_1
    return-void

    .line 672
    .restart local v4       #section:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v4           #section:Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 679
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TableViewProxy;->handleSetData([Ljava/lang/Object;)V

    goto :goto_1

    .line 681
    :cond_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1845

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public updateRow(Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 11
    .parameter "row"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 176
    const/4 v6, 0x0

    .line 177
    .local v6, sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    const/4 v2, -0x1

    .line 178
    .local v2, rowIndex:I
    instance-of v8, p1, Ljava/lang/Number;

    if-eqz v8, :cond_1

    .line 179
    new-instance v5, Lti/modules/titanium/ui/TableViewProxy$RowResult;

    invoke-direct {v5, p0}, Lti/modules/titanium/ui/TableViewProxy$RowResult;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .local v5, rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    move-object v8, p1

    .line 180
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 181
    invoke-direct {p0, v2, v5}, Lti/modules/titanium/ui/TableViewProxy;->locateIndex(ILti/modules/titanium/ui/TableViewProxy$RowResult;)Z

    .line 182
    iget-object v6, v5, Lti/modules/titanium/ui/TableViewProxy$RowResult;->section:Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 183
    iget v2, v5, Lti/modules/titanium/ui/TableViewProxy$RowResult;->rowIndexInSection:I

    .line 197
    .end local v5           #rr:Lti/modules/titanium/ui/TableViewProxy$RowResult;
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->rowProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v3

    .line 198
    .local v3, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    if-nez v3, :cond_4

    .line 199
    const-string v8, "TableViewProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to update row. Invalid type for row: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_1
    return-void

    .line 184
    .end local v3           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    instance-of v8, p1, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v8, :cond_0

    .line 185
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v7

    .line 186
    .local v7, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 187
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lti/modules/titanium/ui/TableViewSectionProxy;

    iget-object v4, v8, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 188
    .local v4, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewRowProxy;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 189
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_2

    .line 190
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    check-cast v6, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 191
    .restart local v6       #sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    move v2, v1

    .line 192
    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 186
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 202
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v4           #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewRowProxy;>;"
    .end local v7           #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .restart local v3       #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_4
    if-eqz v6, :cond_5

    .line 203
    invoke-virtual {v6, v2, v3}, Lti/modules/titanium/ui/TableViewSectionProxy;->updateRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V

    .line 204
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 205
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    goto :goto_1

    .line 207
    :cond_5
    const-string v8, "TableViewProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to update row. Non-existent row: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateSection(Ljava/lang/Number;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .parameter "index"
    .end parameter
    .parameter "data"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 215
    .local v3, sectionIndex:I
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/TableViewProxy;->sectionProxyFor(Ljava/lang/Object;)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v4

    .line 217
    .local v4, sectionProxy:Lti/modules/titanium/ui/TableViewSectionProxy;
    if-nez v4, :cond_0

    .line 218
    const-string v5, "TableViewProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update section. Invalid type for section: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 222
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    .local v0, currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 224
    .local v2, oldSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    if-eq v4, v2, :cond_1

    .line 226
    invoke-virtual {v4, p0}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 227
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewSectionProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v5

    if-ne v5, p0, :cond_1

    .line 228
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lti/modules/titanium/ui/TableViewSectionProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 231
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 232
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v0           #currentSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    .end local v2           #oldSection:Lti/modules/titanium/ui/TableViewSectionProxy;
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "TableViewProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update section. Index out of range. Non-existent section at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 818
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 824
    :goto_0
    return-void

    .line 823
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1843

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method
