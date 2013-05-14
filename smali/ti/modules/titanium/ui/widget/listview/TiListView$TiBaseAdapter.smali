.class public Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "TiListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/listview/TiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TiBaseAdapter"
.end annotation


# instance fields
.field context:Landroid/app/Activity;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/TiListView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/listview/TiListView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 133
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 134
    iput-object p2, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->context:Landroid/app/Activity;

    .line 135
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$200(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 141
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;
    invoke-static {v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$200(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 142
    .local v2, section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v2           #section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 167
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-virtual {v3, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSectionInfoByEntryIndex(I)Landroid/util/Pair;

    move-result-object v0

    .line 168
    .local v0, info:Landroid/util/Pair;,"Landroid/util/Pair<Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 169
    .local v1, section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 170
    .local v2, sectionItemIndex:I
    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderView(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterView(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    :cond_0
    const/4 v3, 0x0

    .line 172
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getTemplateByIndex(I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getType()I

    move-result v3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v8, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSectionInfoByEntryIndex(I)Landroid/util/Pair;

    move-result-object v16

    .line 179
    .local v16, info:Landroid/util/Pair;,"Landroid/util/Pair<Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Ljava/lang/Integer;>;"
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 180
    .local v1, section:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 181
    .local v5, sectionItemIndex:I
    move-object/from16 v7, p2

    .line 184
    .local v7, content:Landroid/view/View;
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderView(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterView(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 185
    :cond_0
    if-nez v7, :cond_1

    .line 186
    sget-object v8, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I
    invoke-static {v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$400(Lti/modules/titanium/ui/widget/listview/TiListView;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 188
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I
    invoke-static {v8}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$500(Lti/modules/titanium/ui/widget/listview/TiListView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 189
    .local v18, title:Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getHeaderOrFooterTitle(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v15, v7

    .line 209
    .end local v7           #content:Landroid/view/View;
    .end local v18           #title:Landroid/widget/TextView;
    .local v15, content:Landroid/view/View;
    :goto_0
    return-object v15

    .line 194
    .end local v15           #content:Landroid/view/View;
    .restart local v7       #content:Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListItemData(I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 195
    .local v2, data:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getTemplateByIndex(I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    .line 196
    .local v4, template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    move-object/from16 v0, p0

    iget-object v8, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$200(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 198
    .local v6, sectionIndex:I
    if-eqz v7, :cond_3

    .line 199
    sget v8, Lti/modules/titanium/ui/widget/listview/TiListView;->listContentId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;

    .line 200
    .local v3, itemContent:Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    invoke-virtual/range {v1 .. v7}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->populateViews(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;IILandroid/view/View;)V

    :goto_1
    move-object v15, v7

    .line 209
    .end local v7           #content:Landroid/view/View;
    .restart local v15       #content:Landroid/view/View;
    goto :goto_0

    .line 202
    .end local v3           #itemContent:Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    .end local v15           #content:Landroid/view/View;
    .restart local v7       #content:Landroid/view/View;
    :cond_3
    sget-object v8, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->listItemId:I
    invoke-static {v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$600(Lti/modules/titanium/ui/widget/listview/TiListView;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 203
    sget v8, Lti/modules/titanium/ui/widget/listview/TiListView;->listContentId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;

    .line 204
    .restart local v3       #itemContent:Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    new-instance v17, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct/range {v17 .. v17}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 205
    .local v17, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v8, 0x1

    move-object/from16 v0, v17

    iput-boolean v8, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v8, v1

    move v9, v6

    move-object v10, v2

    move-object v11, v4

    move-object v12, v3

    move v13, v5

    move-object v14, v7

    .line 207
    invoke-virtual/range {v8 .. v14}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->generateCellContent(ILorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;ILandroid/view/View;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$300(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
