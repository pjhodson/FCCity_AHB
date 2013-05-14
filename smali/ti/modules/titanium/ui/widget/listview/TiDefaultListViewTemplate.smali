.class public Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;
.super Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
.source "TiDefaultListViewTemplate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Landroid/app/Activity;)V
    .locals 0
    .parameter "id"
    .parameter "properties"
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;-><init>(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 25
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->generateDefaultProps(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method private parseDefaultData(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 75
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    .local v1, bindings:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, binding:Ljava/lang/String;
    const-string v6, "properties"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    const-string v6, "TiTemplate"

    const-string v7, "Please only use \'properties\' key for built-in template"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 84
    .end local v0           #binding:Ljava/lang/String;
    :cond_1
    const-string v6, "properties"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    .line 85
    .local v4, properties:Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2, v4}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 86
    .local v2, clone_properties:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 87
    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v5}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 88
    .local v5, text:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "text"

    const-string v7, "title"

    invoke-static {v2, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v6, "title"

    invoke-virtual {p1, v6, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v6, "font"

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    const-string v6, "font"

    const-string v7, "font"

    invoke-virtual {v2, v7}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/kroll/KrollDict;->clone()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v6, "font"

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    const-string v6, "color"

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    const-string v6, "color"

    const-string v7, "color"

    invoke-virtual {v2, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v6, "color"

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_3
    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v5           #text:Lorg/appcelerator/kroll/KrollDict;
    :cond_4
    const-string v6, "image"

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 102
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 103
    .local v3, image:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "image"

    const-string v7, "image"

    invoke-static {v2, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v6, "image"

    invoke-virtual {p1, v6, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v6, "image"

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v3           #image:Lorg/appcelerator/kroll/KrollDict;
    :cond_5
    const-string v6, "properties"

    invoke-virtual {p1, v6, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method public generateDefaultProps(Landroid/app/Activity;)V
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x0

    .line 31
    new-instance v6, Lti/modules/titanium/ui/widget/listview/ListItemProxy;

    invoke-direct {v6}, Lti/modules/titanium/ui/widget/listview/ListItemProxy;-><init>()V

    .line 32
    .local v6, proxy:Lti/modules/titanium/ui/widget/listview/ListItemProxy;
    invoke-virtual {v6, p1}, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->setActivity(Landroid/app/Activity;)V

    .line 33
    new-instance v7, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    const-string v8, "properties"

    const/4 v9, 0x0

    invoke-direct {v7, p0, v6, v8, v9}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;-><init>(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 34
    iget-object v7, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->dataItems:Ljava/util/HashMap;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->itemID:Ljava/lang/String;

    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 38
    .local v1, defaultLabelProperties:Lorg/appcelerator/kroll/KrollDict;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 41
    .local v0, defaultImageProperties:Lorg/appcelerator/kroll/KrollDict;
    new-instance v5, Lti/modules/titanium/ui/LabelProxy;

    invoke-direct {v5}, Lti/modules/titanium/ui/LabelProxy;-><init>()V

    .line 42
    .local v5, labelProxy:Lti/modules/titanium/ui/LabelProxy;
    invoke-virtual {v5}, Lti/modules/titanium/ui/LabelProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    const-string v8, "touchEnabled"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v5, p1}, Lti/modules/titanium/ui/LabelProxy;->setActivity(Landroid/app/Activity;)V

    .line 45
    const-string v7, "left"

    const-string v8, "2dp"

    invoke-virtual {v1, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v7, "width"

    const-string v8, "55%"

    invoke-virtual {v1, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v7, "text"

    const-string v8, "label"

    invoke-virtual {v1, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v4, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    const-string v7, "title"

    iget-object v8, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-direct {v4, p0, v5, v7, v8}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;-><init>(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    .line 50
    .local v4, labelItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->dataItems:Ljava/util/HashMap;

    const-string v8, "title"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v4, v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->setDefaultProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 54
    iget-object v7, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-virtual {v7, v4}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->addChild(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    .line 57
    new-instance v3, Lti/modules/titanium/ui/ImageViewProxy;

    invoke-direct {v3}, Lti/modules/titanium/ui/ImageViewProxy;-><init>()V

    .line 58
    .local v3, imageProxy:Lti/modules/titanium/ui/ImageViewProxy;
    invoke-virtual {v3}, Lti/modules/titanium/ui/ImageViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    const-string v8, "touchEnabled"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v3, p1}, Lti/modules/titanium/ui/ImageViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 61
    const-string v7, "right"

    const-string v8, "25dp"

    invoke-virtual {v0, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v7, "width"

    const-string v8, "15%"

    invoke-virtual {v0, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v2, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    const-string v7, "image"

    iget-object v8, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-direct {v2, p0, v3, v7, v8}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;-><init>(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    .line 65
    .local v2, imageItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->dataItems:Ljava/util/HashMap;

    const-string v8, "image"

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->setDefaultProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 69
    iget-object v7, p0, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-virtual {v7, v2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->addChild(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    .line 72
    return-void
.end method

.method public updateOrMergeWithDefaultProperties(Lorg/appcelerator/kroll/KrollDict;Z)V
    .locals 2
    .parameter "data"
    .parameter "update"

    .prologue
    .line 113
    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const-string v0, "TiTemplate"

    const-string v1, "Please use \'properties\' binding for builtInTemplate"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez p2, :cond_0

    .line 117
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->clear()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->parseDefaultData(Lorg/appcelerator/kroll/KrollDict;)V

    .line 122
    invoke-super {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->updateOrMergeWithDefaultProperties(Lorg/appcelerator/kroll/KrollDict;Z)V

    goto :goto_0
.end method
