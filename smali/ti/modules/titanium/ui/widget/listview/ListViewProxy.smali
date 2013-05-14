.class public Lti/modules/titanium/ui/widget/listview/ListViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ListViewProxy.java"


# static fields
.field private static final MSG_APPEND_SECTION:I = 0x64c

.field private static final MSG_DELETE_SECTION_AT:I = 0x64e

.field private static final MSG_FIRST_ID:I = 0x4bb

.field private static final MSG_INSERT_SECTION_AT:I = 0x64d

.field private static final MSG_REPLACE_SECTION_AT:I = 0x64f

.field private static final MSG_SCROLL_TO_ITEM:I = 0x64b

.field private static final MSG_SECTION_COUNT:I = 0x64a

.field private static final TAG:Ljava/lang/String; = "ListViewProxy"


# instance fields
.field private preload:Z

.field private preloadSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    return-void
.end method

.method private addPreloadSection(Ljava/lang/Object;I)V
    .locals 1
    .parameter "section"
    .parameter "index"

    .prologue
    .line 104
    instance-of v0, p1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 106
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    check-cast p1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local p1
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    check-cast p1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .end local p1
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addPreloadSections(Ljava/lang/Object;IZ)V
    .locals 5
    .parameter "secs"
    .parameter "index"
    .parameter "arrayOnly"

    .prologue
    const/4 v4, -0x1

    .line 92
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 93
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 94
    .local v2, sections:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 95
    aget-object v1, v2, v0

    .line 96
    .local v1, section:Ljava/lang/Object;
    invoke-direct {p0, v1, v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSection(Ljava/lang/Object;I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0           #i:I
    .end local v1           #section:Ljava/lang/Object;
    .end local v2           #sections:[Ljava/lang/Object;
    .restart local p1
    :cond_0
    if-nez p3, :cond_1

    .line 99
    invoke-direct {p0, p1, v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSection(Ljava/lang/Object;I)V

    .line 101
    .end local p1
    :cond_1
    return-void
.end method

.method private handleAppendSection(Ljava/lang/Object;)V
    .locals 3
    .parameter "section"

    .prologue
    .line 207
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 208
    .local v0, listView:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 209
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0           #listView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->appendSection(Ljava/lang/Object;)V

    .line 214
    :goto_0
    return-void

    .line 211
    .restart local v0       #listView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 212
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSections(Ljava/lang/Object;IZ)V

    goto :goto_0
.end method

.method private handleDeleteSectionAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 227
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 228
    .local v0, listView:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 229
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0           #listView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->deleteSectionAt(I)V

    .line 238
    :goto_0
    return-void

    .line 231
    .restart local v0       #listView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 232
    :cond_1
    const-string v1, "ListViewProxy"

    const-string v2, "Invalid index to delete section"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 236
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleInsertSectionAt(ILjava/lang/Object;)V
    .locals 3
    .parameter "index"
    .parameter "section"

    .prologue
    .line 258
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 259
    .local v0, listView:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 260
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0           #listView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->insertSectionAt(ILjava/lang/Object;)V

    .line 269
    :goto_0
    return-void

    .line 262
    .restart local v0       #listView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 263
    :cond_1
    const-string v1, "ListViewProxy"

    const-string v2, "Invalid index to insertSection"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 267
    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSections(Ljava/lang/Object;IZ)V

    goto :goto_0
.end method

.method private handleReplaceSectionAt(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "section"

    .prologue
    .line 289
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 290
    .local v0, listView:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 291
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0           #listView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->replaceSectionAt(ILjava/lang/Object;)V

    .line 297
    :goto_0
    return-void

    .line 293
    .restart local v0       #listView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleDeleteSectionAt(I)V

    .line 294
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleInsertSectionAt(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleScrollToItem(II)V
    .locals 1
    .parameter "sectionIndex"
    .parameter "itemIndex"

    .prologue
    .line 190
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 191
    .local v0, listView:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 192
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0           #listView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->scrollToItem(II)V

    .line 194
    :cond_0
    return-void
.end method

.method private sendInsertSectionMessage(ILjava/lang/Object;)V
    .locals 4
    .parameter "index"
    .parameter "section"

    .prologue
    .line 250
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    .line 251
    .local v1, handler:Landroid/os/Handler;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 252
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "section"

    invoke-virtual {v0, v2, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/16 v2, 0x64d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    return-void
.end method

.method private sendReplaceSectionMessage(ILjava/lang/Object;)V
    .locals 4
    .parameter "index"
    .parameter "section"

    .prologue
    .line 281
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    .line 282
    .local v1, handler:Landroid/os/Handler;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 283
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "section"

    invoke-virtual {v0, v2, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const/16 v2, 0x64f

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    return-void
.end method


# virtual methods
.method public appendSection(Ljava/lang/Object;)V
    .locals 2
    .parameter "section"

    .prologue
    .line 198
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleAppendSection(Ljava/lang/Object;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 202
    .local v0, handler:Landroid/os/Handler;
    const/16 v1, 0x64c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public clearPreloadSections()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    :cond_0
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 56
    new-instance v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method public deleteSectionAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 218
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleDeleteSectionAt(I)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 222
    .local v0, handler:Landroid/os/Handler;
    const/16 v1, 0x64e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getPreloadSections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSectionCount()I
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleSectionCount()I

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 3
    .parameter "createdInModule"
    .parameter "args"

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "defaultItemTemplate"

    const-string v2, "listDefaultTemplate"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 69
    const-string v1, "sections"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "sections"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, [Ljava/lang/Object;

    .end local v0           #obj:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSections(Ljava/lang/Object;IZ)V

    .line 75
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 146
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 186
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v6

    :goto_0
    return v6

    .line 149
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 150
    .local v3, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleSectionCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    .end local v3           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 156
    .restart local v3       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v3}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 157
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "sectionIndex"

    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 158
    .local v5, sectionIndex:I
    const-string v7, "itemIndex"

    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 159
    .local v2, itemIndex:I
    invoke-direct {p0, v5, v2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleScrollToItem(II)V

    .line 160
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v2           #itemIndex:I
    .end local v3           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v5           #sectionIndex:I
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleAppendSection(Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v7

    invoke-direct {p0, v7}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleDeleteSectionAt(I)V

    goto :goto_0

    .line 172
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 173
    .restart local v0       #data:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "index"

    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    .local v1, index:I
    const-string v7, "section"

    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 175
    .local v4, section:Ljava/lang/Object;
    invoke-direct {p0, v1, v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleInsertSectionAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 179
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #index:I
    .end local v4           #section:Ljava/lang/Object;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 180
    .restart local v0       #data:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "index"

    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    .restart local v1       #index:I
    const-string v7, "section"

    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 182
    .restart local v4       #section:Ljava/lang/Object;
    invoke-direct {p0, v1, v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleReplaceSectionAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x64a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public handleSectionCount()I
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 124
    .local v0, listView:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 125
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0           #listView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSectionCount()I

    move-result v1

    .line 127
    :goto_0
    return v1

    .restart local v0       #listView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertSectionAt(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "section"

    .prologue
    .line 242
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleInsertSectionAt(ILjava/lang/Object;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->sendInsertSectionMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isPreload()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    return v0
.end method

.method public replaceSectionAt(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "section"

    .prologue
    .line 273
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleReplaceSectionAt(ILjava/lang/Object;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->sendReplaceSectionMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public scrollToItem(II)V
    .locals 3
    .parameter "sectionIndex"
    .parameter "itemIndex"

    .prologue
    .line 132
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleScrollToItem(II)V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 136
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "itemIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "sectionIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
