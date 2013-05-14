.class public Lti/modules/titanium/ui/widget/TiUITableView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITableView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
.implements Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field private static final TAG:Ljava/lang/String; = "TitaniumTableView"


# instance fields
.field protected tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 45
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 46
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    return-object v0
.end method

.method public onClick(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "click"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 197
    return-void
.end method

.method public onLongClick(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 2
    .parameter "data"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "longclick"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 196
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 189
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 192
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 195
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 194
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .parameter "d"

    .prologue
    const/16 v13, 0x66

    const/16 v12, 0xb

    const/16 v11, 0x9

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 105
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-nez v7, :cond_0

    .line 106
    new-instance v8, Lti/modules/titanium/ui/widget/tableview/TiTableView;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v7, Lti/modules/titanium/ui/TableViewProxy;

    invoke-direct {v8, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    iput-object v8, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 108
    :cond_0
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, activity:Landroid/app/Activity;
    instance-of v7, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v7, :cond_1

    .line 110
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 113
    :cond_1
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v7, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V

    .line 114
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v7, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemLongClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;)V

    .line 116
    const-string v7, "search"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 117
    const-string v7, "search"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 118
    .local v6, searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    .line 119
    .local v5, search:Lorg/appcelerator/titanium/view/TiUIView;
    instance-of v7, v6, Lti/modules/titanium/ui/SearchBarProxy;

    if-eqz v7, :cond_5

    move-object v7, v5

    .line 120
    check-cast v7, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V

    .line 124
    :goto_0
    const-string v7, "searchAsChild"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "searchAsChild"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 127
    :cond_2
    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/View;->setId(I)V

    .line 129
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 131
    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 133
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v3, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xa

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    const-string v7, "height"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 142
    const-string v7, "height"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v4

    .line 146
    .local v4, rawHeight:Lorg/appcelerator/titanium/TiDimension;
    :goto_1
    invoke-virtual {v4, v2}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 148
    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .restart local v3       #p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    const/4 v7, 0x3

    invoke-virtual {v3, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    .line 166
    .end local v2           #layout:Landroid/widget/RelativeLayout;
    .end local v3           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #rawHeight:Lorg/appcelerator/titanium/TiDimension;
    .end local v5           #search:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v6           #searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_2
    const-string v7, "filterAttribute"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 167
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    const-string v8, "filterAttribute"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAttribute(Ljava/lang/String;)V

    .line 174
    :goto_3
    const-string v7, "overScrollMode"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 175
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v11, :cond_3

    .line 176
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const-string v8, "overScrollMode"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 179
    :cond_3
    const/4 v1, 0x1

    .line 180
    .local v1, filterCaseInsensitive:Z
    const-string v7, "filterCaseInsensitive"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 181
    const-string v7, "filterCaseInsensitive"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    .line 183
    :cond_4
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v7, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterCaseInsensitive(Z)V

    .line 184
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 185
    return-void

    .end local v1           #filterCaseInsensitive:Z
    .restart local v5       #search:Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v6       #searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_5
    move-object v7, v5

    .line 122
    check-cast v7, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V

    goto/16 :goto_0

    .line 144
    .restart local v2       #layout:Landroid/widget/RelativeLayout;
    .restart local v3       #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const-string v7, "52dp"

    invoke-static {v7, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v4

    .restart local v4       #rawHeight:Lorg/appcelerator/titanium/TiDimension;
    goto/16 :goto_1

    .line 160
    .end local v2           #layout:Landroid/widget/RelativeLayout;
    .end local v3           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #rawHeight:Lorg/appcelerator/titanium/TiDimension;
    :cond_7
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    goto :goto_2

    .line 163
    .end local v5           #search:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v6           #searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_8
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    goto :goto_2

    .line 170
    :cond_9
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v8, "filterAttribute"

    const-string v9, "title"

    invoke-virtual {v7, v8, v9, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 171
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    const-string v8, "title"

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAttribute(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 223
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "TitaniumTableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    const-string v0, "separatorColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setSeparatorColor(Ljava/lang/String;)V

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    const-string v0, "overScrollMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public registerForTouch()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUITableView;->registerForTouch(Landroid/view/View;)V

    .line 240
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->nativeView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->nativeView:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 205
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 206
    .local v0, searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->release()V

    .line 209
    .end local v0           #searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->release()V

    .line 211
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 213
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 216
    :cond_2
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUITableView;->nativeView:Landroid/view/View;

    .line 217
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 218
    return-void
.end method

.method public scrollToIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 79
    return-void
.end method

.method public scrollToTop(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 84
    return-void
.end method

.method public selectRow(I)V
    .locals 1
    .parameter "row_id"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 89
    return-void
.end method

.method public setModelDirty()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->setDirty()V

    .line 64
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 74
    return-void
.end method
