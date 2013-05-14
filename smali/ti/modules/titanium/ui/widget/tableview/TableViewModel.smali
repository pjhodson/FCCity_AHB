.class public Lti/modules/titanium/ui/widget/tableview/TableViewModel;
.super Ljava/lang/Object;
.source "TableViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TableViewModel"


# instance fields
.field private dirty:Z

.field private proxy:Lti/modules/titanium/ui/TableViewProxy;

.field private viewModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 0
    .parameter "tiContext"
    .parameter "proxy"

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 59
    return-void
.end method

.method public static classNameForRow(Lti/modules/titanium/ui/TableViewRowProxy;)Ljava/lang/String;
    .locals 2
    .parameter "rowProxy"

    .prologue
    .line 75
    const-string v1, "className"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, className:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    const-string v0, "__default__"

    .line 79
    :cond_0
    return-object v0
.end method

.method private itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 2
    .parameter "index"
    .parameter "proxy"
    .parameter "headerText"
    .parameter "footerText"

    .prologue
    .line 83
    new-instance v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 84
    .local v0, newItem:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const-string v1, "__header__"

    iput-object v1, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 85
    if-eqz p3, :cond_1

    .line 86
    iput-object p3, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->headerText:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    iput-object p2, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 92
    return-object v0

    .line 87
    :cond_1
    if-eqz p4, :cond_0

    .line 88
    iput-object p4, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->footerText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getRowCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRowHeight(II)I
    .locals 5
    .parameter "position"
    .parameter "defaultHeight"

    .prologue
    .line 176
    move v2, p2

    .line 178
    .local v2, rowHeight:I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 179
    .local v0, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v3, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "rowHeight"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, rh:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 181
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 184
    :cond_0
    return v2
.end method

.method public getSection(I)Lti/modules/titanium/ui/TableViewSectionProxy;
    .locals 1
    .parameter "index"

    .prologue
    .line 104
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    return-object v0
.end method

.method public getViewIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 160
    const/4 v2, -0x1

    .line 162
    .local v2, position:I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 164
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 165
    .local v1, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget v3, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->index:I

    if-ne p1, v3, :cond_1

    .line 166
    move v2, v0

    .line 172
    .end local v0           #i:I
    .end local v1           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_0
    return v2

    .line 163
    .restart local v0       #i:I
    .restart local v1       #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getViewModel()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 110
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 111
    const/4 v14, 0x0

    .line 112
    .local v14, sectionIndex:I
    const/4 v9, 0x0

    .line 113
    .local v9, indexInSection:I
    const/4 v8, 0x0

    .line 114
    .local v8, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lti/modules/titanium/ui/TableViewProxy;->getSectionsArray()Ljava/util/ArrayList;

    move-result-object v15

    .line 115
    .local v15, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    if-eqz v15, :cond_6

    .line 116
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lti/modules/titanium/ui/TableViewSectionProxy;

    .line 117
    .local v13, section:Lti/modules/titanium/ui/TableViewSectionProxy;
    const-string v16, "headerTitle"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, headerTitle:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v13, v4, v1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    const-string v16, "headerView"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 122
    const-string v16, "headerView"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 123
    .local v5, headerView:Ljava/lang/Object;
    instance-of v0, v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 124
    new-instance v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v8}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 125
    .local v10, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v5           #headerView:Ljava/lang/Object;
    iput-object v5, v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 126
    const-string v16, "__headerView__"

    move-object/from16 v0, v16

    iput-object v0, v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v10           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_1
    :goto_1
    invoke-virtual {v13}, Lti/modules/titanium/ui/TableViewSectionProxy;->getRows()[Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v2

    .local v2, arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    array-length v11, v2

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v11, :cond_3

    aget-object v12, v2, v7

    .line 133
    .local v12, row:Lti/modules/titanium/ui/TableViewRowProxy;
    new-instance v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v8}, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;-><init>(Lti/modules/titanium/ui/widget/tableview/TableViewModel;I)V

    .line 134
    .restart local v10       #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iput v14, v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->sectionIndex:I

    .line 135
    iput v9, v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->indexInSection:I

    .line 136
    iput-object v12, v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 137
    invoke-virtual {v12}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v16

    const-string v17, "rowData"

    invoke-virtual/range {v16 .. v17}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->rowData:Ljava/lang/Object;

    .line 138
    invoke-static {v12}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->classNameForRow(Lti/modules/titanium/ui/TableViewRowProxy;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v8, v8, 0x1

    .line 142
    add-int/lit8 v9, v9, 0x1

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 129
    .end local v2           #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v7           #i$:I
    .end local v10           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v11           #len$:I
    .end local v12           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v5       #headerView:Ljava/lang/Object;
    :cond_2
    const-string v16, "TableViewModel"

    const-string v17, "HeaderView must be of type TiViewProxy"

    invoke-static/range {v16 .. v17}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v5           #headerView:Ljava/lang/Object;
    .restart local v2       #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .restart local v7       #i$:I
    .restart local v11       #len$:I
    :cond_3
    const-string v16, "footerTitle"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lti/modules/titanium/ui/TableViewSectionProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, footerTitle:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v13, v1, v3}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->itemForHeader(ILti/modules/titanium/ui/TableViewSectionProxy;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 151
    const/4 v9, 0x0

    .line 152
    goto/16 :goto_0

    .line 153
    .end local v2           #arr$:[Lti/modules/titanium/ui/TableViewRowProxy;
    .end local v3           #footerTitle:Ljava/lang/String;
    .end local v4           #headerTitle:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v11           #len$:I
    .end local v13           #section:Lti/modules/titanium/ui/TableViewSectionProxy;
    :cond_5
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 156
    .end local v8           #index:I
    .end local v9           #indexInSection:I
    .end local v14           #sectionIndex:I
    .end local v15           #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/TableViewSectionProxy;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    return-object v16
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->viewModel:Ljava/util/ArrayList;

    .line 71
    :cond_0
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 72
    return-void
.end method

.method public setDirty()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->dirty:Z

    .line 189
    return-void
.end method
