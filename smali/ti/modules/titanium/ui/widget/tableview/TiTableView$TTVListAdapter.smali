.class Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TiTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TTVListAdapter"
.end annotation


# instance fields
.field private filtered:Z

.field index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

.field viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lti/modules/titanium/ui/widget/tableview/TableViewModel;)V
    .locals 2
    .parameter
    .parameter "viewModel"

    .prologue
    .line 83
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    iput-object p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getRowCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->reIndexItems()V

    .line 87
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 159
    .local v0, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v1, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, -0x1

    .line 176
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 177
    .local v1, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const/4 v4, 0x0

    .line 179
    .local v4, v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    if-eqz p2, :cond_1

    move-object v4, p2

    .line 180
    check-cast v4, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, sameView:Z
    iget-object v8, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    instance-of v8, v8, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v8, :cond_0

    .line 184
    iget-object v2, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 185
    .local v2, row:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 186
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 189
    .end local v2           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    if-nez v3, :cond_1

    .line 190
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "__default__"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v8

    if-eq v8, v1, :cond_1

    .line 192
    const/4 v4, 0x0

    .line 204
    .end local v3           #sameView:Z
    :cond_1
    :goto_0
    if-nez v4, :cond_5

    .line 205
    iget-object v8, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v9, "__headerView__"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 206
    iget-object v7, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 207
    .local v7, vproxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #calls: Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    invoke-static {v8, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$500(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 208
    .local v0, headerView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 209
    .local v6, viewParent:Landroid/view/ViewParent;
    if-eqz v6, :cond_2

    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    .line 210
    const-string v8, "TiTableView"

    const-string v9, "Header view has not been removed from parent. Detaching header view..."

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    check-cast v6, Landroid/view/ViewGroup;

    .end local v6           #viewParent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    :cond_2
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 215
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v8, "__headerView__"

    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v4, v1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    move-object v5, v4

    .line 235
    .end local v0           #headerView:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    .end local v7           #vproxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .local v5, v:Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 196
    .end local v5           #v:Ljava/lang/Object;
    .restart local v3       #sameView:Z
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    :cond_3
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 197
    const-string v8, "TiTableView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handed a view to convert with className "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 218
    .end local v3           #sameView:Z
    :cond_4
    iget-object v8, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v9, "__header__"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 219
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;-><init>(Landroid/app/Activity;)V

    .line 220
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v8, "__header__"

    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    .line 231
    :goto_2
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    :cond_5
    invoke-virtual {v4, v1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    move-object v5, v4

    .line 235
    .restart local v5       #v:Ljava/lang/Object;
    goto :goto_1

    .line 221
    .end local v5           #v:Ljava/lang/Object;
    :cond_6
    iget-object v8, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v9, "__normal__"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 222
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 223
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v8, "__normal__"

    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto :goto_2

    .line 224
    :cond_7
    iget-object v8, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v9, "__default__"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 225
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 226
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v8, "__default__"

    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :cond_8
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Landroid/app/Activity;)V

    .line 229
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v8, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x20

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 246
    .local v1, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const/4 v0, 0x1

    .line 247
    .local v0, enabled:Z
    if-eqz v1, :cond_0

    iget-object v2, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v3, "__header__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :cond_0
    return v0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 260
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->reIndexItems()V

    .line 261
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 262
    return-void
.end method

.method public reIndexItems()V
    .locals 9

    .prologue
    .line 97
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v4

    .line 98
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    .local v0, count:I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 101
    const/4 v7, 0x0

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    .line 102
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 103
    const/4 v7, 0x1

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    .line 104
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, filter:Ljava/lang/String;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 109
    const/4 v5, 0x1

    .line 110
    .local v5, keep:Z
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 111
    .local v3, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 112
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, t:Ljava/lang/String;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 117
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_2

    .line 118
    const/4 v5, 0x0

    .line 121
    .end local v6           #t:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 122
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1           #filter:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v5           #keep:Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 127
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 128
    .restart local v3       #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 129
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v3           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_5
    return-void
.end method

.method protected registerClassName(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 90
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "TiTableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registering new className "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$100(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method
