.class public Lti/modules/titanium/ui/ScrollableViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ScrollableViewProxy.java"


# static fields
.field private static final DEFAULT_PAGING_CONTROL_TIMEOUT:I = 0xbb8

.field public static final MSG_ADD_VIEW:I = 0x525

.field private static final MSG_FIRST_ID:I = 0x4bb

.field public static final MSG_HIDE_PAGER:I = 0x520

.field public static final MSG_LAST_ID:I = 0x8a2

.field public static final MSG_MOVE_NEXT:I = 0x522

.field public static final MSG_MOVE_PREV:I = 0x521

.field public static final MSG_REMOVE_VIEW:I = 0x527

.field public static final MSG_SCROLL_TO:I = 0x523

.field public static final MSG_SET_CURRENT:I = 0x526

.field public static final MSG_SET_ENABLED:I = 0x528

.field public static final MSG_SET_VIEWS:I = 0x524

.field private static final TAG:Ljava/lang/String; = "TiScrollableView"


# instance fields
.field protected inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "showPagingControl"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "overScrollMode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public addView(Ljava/lang/Object;)V
    .locals 2
    .parameter "viewObject"

    .prologue
    .line 167
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x525

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 68
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;-><init>(Lti/modules/titanium/ui/ScrollableViewProxy;)V

    return-object v0
.end method

.method public fireDragEnd(ILorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "currentPage"
    .parameter "currentView"

    .prologue
    .line 218
    const-string v1, "dragend"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 220
    .local v0, options:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "view"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "currentPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "dragend"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 225
    .end local v0           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const-string v1, "dragEnd"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 227
    .restart local v0       #options:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "view"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "currentPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "dragEnd"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 231
    .end local v0           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void
.end method

.method public fireScroll(IFLorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "currentPage"
    .parameter "currentPageAsFloat"
    .parameter "currentView"

    .prologue
    .line 252
    const-string v1, "scroll"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 254
    .local v0, options:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "view"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "currentPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "currentPageAsFloat"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "scroll"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 259
    .end local v0           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public fireScrollEnd(ILorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "currentPage"
    .parameter "currentView"

    .prologue
    .line 235
    const-string v1, "scrollend"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 237
    .local v0, options:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "view"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "currentPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "scrollend"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 242
    .end local v0           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const-string v1, "scrollEnd"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 244
    .restart local v0       #options:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "view"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "currentPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "scrollEnd"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 248
    .end local v0           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getScrollingEnabled()Z
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getEnabled()Z

    move-result v0

    return v0
.end method

.method protected getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollableView;

    return-object v0
.end method

.method public getViews()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, handled:Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 145
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->hidePager()V

    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->movePrevious()V

    .line 88
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->moveNext()V

    .line 94
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    const/4 v0, 0x1

    .line 96
    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->scrollTo(Ljava/lang/Object;)V

    .line 100
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    const/4 v0, 0x1

    .line 102
    goto :goto_0

    .line 104
    :pswitch_4
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(Ljava/lang/Object;)V

    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_0

    .line 108
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 109
    .local v1, holder:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    .line 110
    .local v3, views:Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setViews(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_0

    .line 116
    .end local v1           #holder:Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v3           #views:Ljava/lang/Object;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 117
    .restart local v1       #holder:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, view:Ljava/lang/Object;
    instance-of v4, v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_1

    .line 119
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v2           #view:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 120
    const/4 v0, 0x1

    .line 124
    :cond_0
    :goto_1
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    .restart local v2       #view:Ljava/lang/Object;
    :cond_1
    if-eqz v2, :cond_0

    .line 122
    const-string v4, "TiScrollableView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView() ignored. Expected a Titanium view object, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v1           #holder:Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v2           #view:Ljava/lang/Object;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 129
    .restart local v1       #holder:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    .line 130
    .restart local v2       #view:Ljava/lang/Object;
    instance-of v4, v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_3

    .line 131
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v2           #view:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 132
    const/4 v0, 0x1

    .line 136
    :cond_2
    :goto_2
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 133
    .restart local v2       #view:Ljava/lang/Object;
    :cond_3
    if-eqz v2, :cond_2

    .line 134
    const-string v4, "TiScrollableView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeView() ignored. Expected a Titanium view object, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 140
    .end local v1           #holder:Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v2           #view:Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setEnabled(Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x1

    .line 142
    goto/16 :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x520
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public moveNext()V
    .locals 2

    .prologue
    const/16 v1, 0x522

    .line 196
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public movePrevious()V
    .locals 2

    .prologue
    const/16 v1, 0x521

    .line 187
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x520

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 291
    return-void
.end method

.method public removeView(Ljava/lang/Object;)V
    .locals 2
    .parameter "viewObject"

    .prologue
    .line 173
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x527

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public scrollToView(Ljava/lang/Object;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 179
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setCurrentPage(Ljava/lang/Object;)V
    .locals 2
    .parameter "page"

    .prologue
    .line 283
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x526

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 284
    return-void
.end method

.method public setPagerTimeout()V
    .locals 6

    .prologue
    const/16 v5, 0x520

    .line 204
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    const/16 v1, 0xbb8

    .line 207
    .local v1, timeout:I
    const-string v2, "pagingControlTimeout"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/ScrollableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 209
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 212
    :cond_0
    if-lez v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    :cond_1
    return-void
.end method

.method public setScrollingEnabled(Ljava/lang/Object;)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 264
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x528

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 265
    return-void
.end method

.method public setViews(Ljava/lang/Object;)V
    .locals 2
    .parameter "viewsObject"

    .prologue
    .line 161
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x524

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method
