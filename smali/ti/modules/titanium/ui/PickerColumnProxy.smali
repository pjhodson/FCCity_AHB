.class public Lti/modules/titanium/ui/PickerColumnProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "PickerColumnProxy.java"

# interfaces
.implements Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x51f

.field private static final MSG_ADD_ARRAY:I = 0x522

.field private static final MSG_FIRST_ID:I = 0x4bb

.field private static final MSG_REMOVE:I = 0x520

.field private static final MSG_SET_ROWS:I = 0x521

.field private static final TAG:Ljava/lang/String; = "PickerColumnProxy"


# instance fields
.field private columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

.field private suppressListenerEvents:Z

.field private useSpinner:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    .line 35
    iput-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    .line 36
    iput-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 46
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerColumnProxy;-><init>()V

    .line 47
    return-void
.end method

.method private handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 128
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    instance-of v1, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 130
    check-cast v1, Lti/modules/titanium/ui/PickerRowProxy;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/PickerRowProxy;->setRowListener(Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;)V

    move-object v1, p1

    .line 131
    check-cast v1, Lti/modules/titanium/ui/PickerRowProxy;

    invoke-super {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 132
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 134
    .local v0, index:I
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v1, p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowAdded(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    goto :goto_0

    .line 137
    .end local v0           #index:I
    :cond_2
    const-string v1, "PickerColumnProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add() unsupported argument type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleAddRowArray([Ljava/lang/Object;)V
    .locals 7
    .parameter "o"

    .prologue
    .line 114
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 116
    .local v3, oChild:Ljava/lang/Object;
    instance-of v4, v3, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v4, :cond_0

    .line 117
    check-cast v3, Lti/modules/titanium/ui/PickerRowProxy;

    .end local v3           #oChild:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 114
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .restart local v3       #oChild:Ljava/lang/Object;
    :cond_0
    const-string v4, "PickerColumnProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add() unsupported argument type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    .end local v3           #oChild:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 155
    if-nez p1, :cond_1

    .line 165
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local p1
    :cond_1
    instance-of v1, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 158
    .local v0, index:I
    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 159
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v1, p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowRemoved(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    goto :goto_0

    .line 163
    .end local v0           #index:I
    .restart local p1
    :cond_2
    const-string v1, "PickerColumnProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove() unsupported argment type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetRows([Ljava/lang/Object;)V
    .locals 4
    .parameter "rows"

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 221
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 222
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 224
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/PickerColumnProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 223
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 227
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iput-boolean v3, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 231
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v2, p0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowsReplaced(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 234
    :cond_1
    return-void

    .line 229
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    throw v2
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 105
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x51f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addRow(Ljava/lang/Object;)V
    .locals 2
    .parameter "row"

    .prologue
    .line 170
    instance-of v0, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 175
    :goto_0
    return-void

    .line 173
    .restart local p1
    :cond_0
    const-string v0, "PickerColumnProxy"

    const-string v1, "Unable to add the row. Invalid type for row."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected addRows([Ljava/lang/Object;)V
    .locals 2
    .parameter "rows"

    .prologue
    .line 179
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRowArray([Ljava/lang/Object;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 245
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 248
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIPickerColumn;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/picker/TiUIPickerColumn;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRows()[Lti/modules/titanium/ui/PickerRowProxy;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/PickerRowProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/PickerRowProxy;

    goto :goto_0
.end method

.method public getSelectedRow()Lti/modules/titanium/ui/PickerRowProxy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 287
    :goto_0
    return-object v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->getSelectedRowIndex()I

    move-result v0

    .line 284
    .local v0, rowIndex:I
    if-gez v0, :cond_1

    move-object v1, v2

    .line 285
    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/PickerRowProxy;

    goto :goto_0
.end method

.method public getThisColumnIndex()I
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/PickerProxy;->getColumnIndex(Lti/modules/titanium/ui/PickerColumnProxy;)I

    move-result v0

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "dict"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 93
    const-string v2, "rows"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "rows"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, rowsAtCreation:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #rowsAtCreation:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 97
    .local v0, rowsArray:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V

    .line 100
    .end local v0           #rowsArray:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 62
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 63
    .local v0, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 64
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 65
    goto :goto_0

    .line 68
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 69
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRowArray([Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 71
    goto :goto_0

    .line 75
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 76
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 77
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 78
    goto :goto_0

    .line 81
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 82
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleSetRows([Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 84
    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x51f
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onItemSelected(I)V
    .locals 1
    .parameter "rowIndex"

    .prologue
    .line 273
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v0, p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowSelected(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    .line 276
    :cond_0
    return-void
.end method

.method public parentShouldRequestLayout()V
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/PickerProxy;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/PickerProxy;->forceRequestLayout()V

    .line 301
    :cond_0
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 145
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x520

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeRow(Ljava/lang/Object;)V
    .locals 2
    .parameter "row"

    .prologue
    .line 190
    instance-of v0, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v0, :cond_0

    .line 191
    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 195
    :goto_0
    return-void

    .line 193
    .restart local p1
    :cond_0
    const-string v0, "PickerColumnProxy"

    const-string v1, "Unable to remove the row. Invalid type for row."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rowChanged(Lti/modules/titanium/ui/PickerRowProxy;)V
    .locals 2
    .parameter "row"

    .prologue
    .line 264
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 266
    .local v0, index:I
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v1, p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowChanged(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    .line 269
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public setColumnListener(Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 51
    iput-object p1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    .line 52
    return-void
.end method

.method public setRows([Ljava/lang/Object;)V
    .locals 2
    .parameter "rows"

    .prologue
    .line 209
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleSetRows([Ljava/lang/Object;)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUseSpinner(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 55
    iput-boolean p1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    .line 56
    return-void
.end method
