.class public Lti/modules/titanium/ui/widget/listview/TiListItem;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiListItem.java"


# instance fields
.field listItemLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "proxy"
    .parameter "p"
    .parameter "v"
    .parameter "item_layout"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 33
    iput-object p2, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 34
    iput-object p4, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->listItemLayout:Landroid/view/View;

    .line 35
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/listview/TiListItem;->setNativeView(Landroid/view/View;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/listview/TiListItem;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/listview/TiListItem;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/TiListItem;->dictFromEvent(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method private handleAccessory(I)V
    .locals 3
    .parameter "accessory"

    .prologue
    .line 50
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->listItemLayout:Landroid/view/View;

    sget v2, Lti/modules/titanium/ui/widget/listview/TiListView;->accessory:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .local v0, accessoryImage:Landroid/widget/ImageView;
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :goto_0
    return-void

    .line 55
    :pswitch_0
    sget v1, Lti/modules/titanium/ui/widget/listview/TiListView;->isCheck:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 58
    :pswitch_1
    sget v1, Lti/modules/titanium/ui/widget/listview/TiListView;->hasChild:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    sget v1, Lti/modules/titanium/ui/widget/listview/TiListView;->disclosure:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected handleFireItemClick(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 84
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v3, Lti/modules/titanium/ui/widget/listview/ListItemProxy;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->getListProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    .line 85
    .local v2, listViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 87
    .local v1, listView:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getAdditionalEventData()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 89
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    if-nez v0, :cond_1

    .line 90
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3, v4}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/view/TiUIView;->setAdditionalEventData(Lorg/appcelerator/kroll/KrollDict;)V

    .line 95
    :goto_0
    const-string v3, "itemclick"

    invoke-virtual {v1, v3, p1}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 98
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #listView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    return-void

    .line 92
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    .restart local v1       #listView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollDict;->clear()V

    .line 93
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 41
    const-string v1, "accessoryType"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "accessoryType"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v0

    .line 43
    .local v0, accessory:I
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListItem;->handleAccessory(I)V

    .line 45
    .end local v0           #accessory:I
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 46
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->listItemLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListItem;->listItemLayout:Landroid/view/View;

    .line 104
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 105
    return-void
.end method

.method protected setOnClickListener(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 72
    new-instance v0, Lti/modules/titanium/ui/widget/listview/TiListItem$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/listview/TiListItem$1;-><init>(Lti/modules/titanium/ui/widget/listview/TiListItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method
