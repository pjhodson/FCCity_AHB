.class public Lti/modules/titanium/ui/TableViewRowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewRowProxy.java"


# static fields
.field private static final MSG_SET_DATA:I = 0x1843

.field private static final TAG:Ljava/lang/String; = "TableViewRowProxy"


# instance fields
.field protected controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 56
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewRowProxy;-><init>()V

    .line 57
    return-void
.end method

.method public static fillClickEvent(Ljava/util/HashMap;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 2
    .parameter
    .parameter "model"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lti/modules/titanium/ui/widget/tableview/TableViewModel;",
            "Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    instance-of v0, v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    if-nez v0, :cond_0

    .line 193
    const-string v0, "rowData"

    iget-object v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->rowData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    const-string v0, "section"

    iget v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->sectionIndex:I

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getSection(I)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "row"

    iget-object v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "index"

    iget v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "detail"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "control"

    .prologue
    .line 118
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    .line 121
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 123
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1843

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    .end local v0           #message:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 4
    .parameter "eventName"
    .parameter "data"
    .parameter "bubbles"

    .prologue
    .line 206
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v2

    .line 207
    .local v2, table:Lti/modules/titanium/ui/TableViewProxy;
    iget-object v3, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v1

    .line 209
    .local v1, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    instance-of v3, p2, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 213
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    check-cast p2, Ljava/util/HashMap;

    .end local p2
    invoke-direct {v0, p2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 214
    .local v0, dataCopy:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUITableView;->getModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->fillClickEvent(Ljava/util/HashMap;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 215
    move-object p2, v0

    .line 219
    .end local v0           #dataCopy:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v3

    return v3
.end method

.method public firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v0

    .line 227
    .local v0, table:Lti/modules/titanium/ui/TableViewProxy;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewProxy;->updateView()V

    .line 230
    :cond_0
    return-void
.end method

.method public getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public getControls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTable()Lti/modules/titanium/ui/TableViewProxy;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 152
    .local v0, parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    instance-of v1, v0, Lti/modules/titanium/ui/TableViewProxy;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_0
    check-cast v0, Lti/modules/titanium/ui/TableViewProxy;

    .end local v0           #parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    return-object v0
.end method

.method public getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 74
    const-string v0, "selectedBackgroundColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "TableViewRowProxy"

    const-string v1, "selectedBackgroundColor is deprecated, use backgroundSelectedColor instead"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "backgroundSelectedColor"

    const-string v1, "selectedBackgroundColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_0
    const-string v0, "selectedBackgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "TableViewRowProxy"

    const-string v1, "selectedBackgroundImage is deprecated, use backgroundSelectedImage instead"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "backgroundSelectedImage"

    const-string v1, "selectedBackgroundImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1843

    if-ne v1, v2, :cond_1

    .line 177
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 180
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v0

    .line 181
    .local v0, table:Lti/modules/titanium/ui/widget/TiUITableView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->setModelDirty()V

    .line 182
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUITableView;->updateView()V

    .line 184
    .end local v0           #table:Lti/modules/titanium/ui/widget/TiUITableView;
    :cond_0
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public hasControls()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 247
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->release()V

    .line 249
    const/4 v2, 0x0

    iput-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .line 251
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 253
    .local v0, control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_0

    .line 256
    .end local v0           #control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "control"

    .prologue
    .line 133
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1843

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 63
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 65
    .local v0, control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 68
    .end local v0           #control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setCreationProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setLabelsClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 234
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 236
    .local v0, control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    instance-of v2, v0, Lti/modules/titanium/ui/LabelProxy;

    if-eqz v2, :cond_0

    .line 237
    check-cast v0, Lti/modules/titanium/ui/LabelProxy;

    .end local v0           #control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/LabelProxy;->setClickable(Z)V

    goto :goto_0

    .line 241
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "fireChange"

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 162
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    .line 163
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1843

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setTableViewItem(Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 146
    iput-object p1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .line 147
    return-void
.end method
