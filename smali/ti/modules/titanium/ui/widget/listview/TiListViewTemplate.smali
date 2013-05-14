.class public Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
.super Ljava/lang/Object;
.source "TiListViewTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_TEMPLATE:Ljava/lang/String; = "defaultTemplate"

.field public static final GENERATED_BINDING:Ljava/lang/String; = "generatedBinding:"

.field protected static final TAG:Ljava/lang/String; = "TiTemplate"


# instance fields
.field protected dataItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;",
            ">;"
        }
    .end annotation
.end field

.field protected itemID:Ljava/lang/String;

.field private properties:Lorg/appcelerator/kroll/KrollDict;

.field protected rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

.field private templateID:Ljava/lang/String;

.field private templateType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "id"
    .parameter "properties"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->dataItems:Ljava/util/HashMap;

    .line 111
    const-string v0, "properties"

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->itemID:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->templateID:Ljava/lang/String;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->templateType:I

    .line 115
    if-eqz p2, :cond_0

    .line 116
    iput-object p2, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->properties:Lorg/appcelerator/kroll/KrollDict;

    .line 117
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->properties:Lorg/appcelerator/kroll/KrollDict;

    goto :goto_0
.end method

.method private bindProxiesAndProperties(Lorg/appcelerator/kroll/KrollDict;ZLti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .locals 8
    .parameter "properties"
    .parameter "isRootTemplate"
    .parameter "parent"

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, proxy:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 127
    .local v0, id:Ljava/lang/String;
    const/4 v2, 0x0

    .line 128
    .local v2, props:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 129
    .local v1, item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    const-string v5, "tiProxy"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    const-string v5, "tiProxy"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 134
    .end local v3           #proxy:Ljava/lang/Object;
    :cond_0
    if-eqz p2, :cond_4

    .line 135
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->itemID:Ljava/lang/String;

    .line 143
    :goto_0
    instance-of v5, v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_1

    move-object v4, v3

    .line 144
    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 145
    .local v4, viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz p2, :cond_6

    .line 146
    new-instance v1, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .end local v1           #item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    const-string v5, "properties"

    const/4 v6, 0x0

    invoke-direct {v1, p0, v4, v5, v6}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;-><init>(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    .restart local v1       #item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 151
    :goto_1
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->dataItems:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v4           #viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    const-string v5, "properties"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    const-string v5, "properties"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 158
    .end local v2           #props:Ljava/lang/Object;
    :cond_2
    instance-of v5, v2, Ljava/util/HashMap;

    if-eqz v5, :cond_3

    .line 159
    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    check-cast v2, Ljava/util/HashMap;

    invoke-direct {v5, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->setDefaultProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 162
    :cond_3
    return-object v1

    .line 136
    .restart local v2       #props:Ljava/lang/Object;
    :cond_4
    const-string v5, "bindId"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    const-string v5, "bindId"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generatedBinding:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    .restart local v4       #viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_6
    new-instance v1, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .end local v1           #item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    invoke-direct {v1, p0, v4, v0, p3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;-><init>(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    .line 149
    .restart local v1       #item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    invoke-virtual {p3, v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->addChild(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    goto :goto_1
.end method

.method private processChildProperties(Ljava/lang/Object;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V
    .locals 7
    .parameter "childProperties"
    .parameter "parent"

    .prologue
    .line 174
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 175
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 176
    .local v3, propertiesArray:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 177
    aget-object v2, v3, v0

    check-cast v2, Ljava/util/HashMap;

    .line 179
    .local v2, properties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->bindProxiesAndProperties(Lorg/appcelerator/kroll/KrollDict;ZLti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v1

    .line 181
    .local v1, item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    const-string v4, "childTemplates"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    if-nez v1, :cond_0

    .line 183
    const-string v4, "TiTemplate"

    const-string v5, "Unable to generate valid data from child view"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    const-string v4, "childTemplates"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->processChildProperties(Ljava/lang/Object;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    .line 176
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0           #i:I
    .end local v1           #item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .end local v2           #properties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #propertiesArray:[Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "properties"

    .prologue
    .line 166
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->bindProxiesAndProperties(Lorg/appcelerator/kroll/KrollDict;ZLti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 167
    const-string v0, "childTemplates"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "childTemplates"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->processChildProperties(Ljava/lang/Object;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public getDataItem(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .locals 1
    .parameter "binding"

    .prologue
    .line 218
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->dataItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    return-object v0
.end method

.method public getItemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->itemID:Ljava/lang/String;

    return-object v0
.end method

.method public getRootItem()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    return-object v0
.end method

.method public getTemplateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->templateID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->templateType:I

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->dataItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 254
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->dataItems:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 255
    .local v1, item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->release()V

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1           #item:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->dataItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 260
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->release()V

    .line 262
    const/4 v2, 0x0

    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 264
    :cond_2
    return-void
.end method

.method public setRootParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 208
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->rootItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getViewProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListItemProxy;

    .line 209
    .local v0, rootProxy:Lti/modules/titanium/ui/widget/listview/ListItemProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->getListProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/listview/ListItemProxy;->setListProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 196
    iput p1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->templateType:I

    .line 197
    return-void
.end method

.method public updateOrMergeWithDefaultProperties(Lorg/appcelerator/kroll/KrollDict;Z)V
    .locals 10
    .parameter "data"
    .parameter "update"

    .prologue
    .line 226
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, binding:Ljava/lang/String;
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->dataItems:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 228
    .local v1, dataItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getDefaultProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 231
    .local v2, defaultProps:Lorg/appcelerator/kroll/KrollDict;
    new-instance v8, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-direct {v8, v9}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 232
    .local v8, props:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v2, :cond_0

    .line 233
    if-eqz p2, :cond_2

    .line 235
    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 236
    .local v3, existingKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 237
    .local v6, key:Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 238
    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 243
    .end local v3           #existingKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollDict;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 244
    .local v7, newData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 245
    invoke-virtual {p1, v0, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    .end local v0           #binding:Ljava/lang/String;
    .end local v1           #dataItem:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .end local v2           #defaultProps:Lorg/appcelerator/kroll/KrollDict;
    .end local v7           #newData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #props:Lorg/appcelerator/kroll/KrollDict;
    :cond_3
    return-void
.end method
