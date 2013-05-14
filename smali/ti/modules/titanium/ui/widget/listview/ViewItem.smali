.class public Lti/modules/titanium/ui/widget/listview/ViewItem;
.super Ljava/lang/Object;
.source "ViewItem.java"


# instance fields
.field diffProperties:Lorg/appcelerator/kroll/KrollDict;

.field properties:Lorg/appcelerator/kroll/KrollDict;

.field view:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "view"
    .parameter "props"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollDict;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->properties:Lorg/appcelerator/kroll/KrollDict;

    .line 22
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 23
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->diffProperties:Lorg/appcelerator/kroll/KrollDict;

    .line 24
    return-void
.end method

.method private applyProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->diffProperties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method public generateDiffProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 6
    .parameter "properties"

    .prologue
    .line 37
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->diffProperties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5}, Lorg/appcelerator/kroll/KrollDict;->clear()V

    .line 39
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    .local v0, appliedProp:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 41
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lti/modules/titanium/ui/widget/listview/ViewItem;->applyProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    .end local v0           #appliedProp:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    .local v3, property:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    .local v4, value:Ljava/lang/Object;
    sget-object v5, Lti/modules/titanium/ui/widget/listview/TiListView;->MUST_SET_PROPERTIES:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/widget/listview/ViewItem;->applyProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 52
    :cond_3
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, existingVal:Ljava/lang/Object;
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    :cond_4
    invoke-direct {p0, v3, v4}, Lti/modules/titanium/ui/widget/listview/ViewItem;->applyProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 57
    .end local v1           #existingVal:Ljava/lang/Object;
    .end local v3           #property:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_5
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->diffProperties:Lorg/appcelerator/kroll/KrollDict;

    return-object v5
.end method

.method public getView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ViewItem;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method
