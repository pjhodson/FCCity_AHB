.class public Lti/modules/titanium/ui/PickerProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "PickerProxy.java"

# interfaces
.implements Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;


# static fields
.field public static final DEFAULT_VISIBLE_ITEMS_COUNT:I = 0x5

.field private static final MSG_ADD:I = 0x522

.field private static final MSG_FIRE_COL_CHANGE:I = 0x524

.field private static final MSG_FIRE_ROW_CHANGE:I = 0x525

.field private static final MSG_FIRST_ID:I = 0x4bb

.field private static final MSG_FORCE_LAYOUT:I = 0x526

.field private static final MSG_REMOVE:I = 0x523

.field private static final MSG_SELECT_ROW:I = 0x520

.field private static final MSG_SET_COLUMNS:I = 0x521

.field private static final TAG:Ljava/lang/String; = "PickerProxy"


# instance fields
.field private preselectedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private useSpinner:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 69
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;-><init>()V

    .line 70
    return-void
.end method

.method private addColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V
    .locals 2
    .parameter "column"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->prepareColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 263
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 264
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnAdded(I)V

    .line 267
    :cond_0
    return-void
.end method

.method private addColumns([Ljava/lang/Object;)V
    .locals 7
    .parameter "columns"

    .prologue
    .line 251
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 252
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v4, :cond_0

    .line 253
    check-cast v3, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/PickerProxy;->addColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 251
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_0
    const-string v4, "PickerProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected type not added to picker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    .end local v3           #obj:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private createDatePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 123
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createDateSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 138
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createPlainPicker(Landroid/app/Activity;Z)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"
    .parameter "useSpinner"

    .prologue
    .line 117
    if-eqz p2, :cond_0

    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    .line 118
    .local v0, picker:Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :goto_0
    return-object v0

    .line 117
    .end local v0           #picker:Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private createTimePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 128
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createTimeSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 133
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private fireColumnModelChange(I)V
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 690
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-nez v1, :cond_0

    .line 701
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleFireColumnModelChange(I)V

    goto :goto_0

    .line 696
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x524

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 698
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 699
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private fireRowChange(II)V
    .locals 3
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    .line 712
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-nez v1, :cond_0

    .line 724
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/PickerProxy;->handleFireRowChange(II)V

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x525

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 720
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 721
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 722
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private handleAddObject(Ljava/lang/Object;)V
    .locals 6
    .parameter "child"

    .prologue
    const/4 v4, 0x1

    .line 231
    instance-of v3, p1, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 232
    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    .line 233
    .local v0, column:Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->addColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 247
    .end local v0           #column:Lti/modules/titanium/ui/PickerColumnProxy;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local p1
    :cond_1
    instance-of v3, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v3, :cond_2

    .line 235
    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/PickerProxy;->getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v3

    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1
    invoke-virtual {v3, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 236
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 238
    .local v2, obj:[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 239
    .local v1, firstObj:Ljava/lang/Object;
    instance-of v3, v1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v3, :cond_3

    .line 240
    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/PickerProxy;->getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_3
    instance-of v3, v1, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v3, :cond_0

    .line 242
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/PickerProxy;->addColumns([Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    .end local v1           #firstObj:Ljava/lang/Object;
    .end local v2           #obj:[Ljava/lang/Object;
    .restart local p1
    :cond_4
    const-string v3, "PickerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type not added to picker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleFireColumnModelChange(I)V
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 705
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnModelChanged(I)V

    .line 708
    :cond_0
    return-void
.end method

.method private handleFireRowChange(II)V
    .locals 1
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    .line 728
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onRowChanged(II)V

    .line 731
    :cond_0
    return-void
.end method

.method private handleForceRequestLayout()V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->forceRequestLayout()V

    .line 808
    return-void
.end method

.method private handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 196
    const/4 v0, -0x1

    .line 197
    .local v0, index:I
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 200
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 201
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnRemoved(I)V

    .line 204
    :cond_1
    return-void
.end method

.method private handleSelectRow(IIZ)V
    .locals 1
    .parameter "column"
    .parameter "row"
    .parameter "animated"

    .prologue
    .line 454
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v0, p1, p2, p3}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->selectRow(IIZ)V

    goto :goto_0
.end method

.method private handleSelectRow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "dict"

    .prologue
    .line 449
    const-string v0, "column"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "row"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "animated"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(IIZ)V

    .line 450
    return-void
.end method

.method private handleSetColumns(Ljava/lang/Object;)V
    .locals 13
    .parameter "passedColumns"

    .prologue
    const/4 v12, 0x0

    .line 406
    const/4 v4, 0x0

    .line 408
    .local v4, dirty:Z
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    instance-of v10, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v10, :cond_0

    .line 409
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    .line 411
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 412
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 413
    .local v3, count:I
    add-int/lit8 v5, v3, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_1

    .line 414
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/PickerProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 415
    const/4 v4, 0x1

    .line 413
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 418
    .end local v3           #count:I
    .end local v5           #i:I
    :cond_1
    const/4 v2, 0x0

    .line 419
    .local v2, columns:[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 420
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 424
    :goto_1
    const/4 v10, 0x0

    aget-object v10, v2, v10

    instance-of v10, v10, Lti/modules/titanium/ui/PickerColumnProxy;

    if-nez v10, :cond_6

    .line 425
    const-string v10, "PickerProxy"

    const-string v11, "Unexpected object type ignored for setColumns"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    instance-of v10, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v10, :cond_3

    .line 436
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iput-boolean v12, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    .line 439
    :cond_3
    if-eqz v4, :cond_4

    .line 440
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v9

    check-cast v9, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    .line 441
    .local v9, pickerView:Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    if-eqz v9, :cond_4

    .line 442
    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onModelReplaced()V

    .line 445
    .end local v9           #pickerView:Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :cond_4
    return-void

    .line 422
    .restart local p1
    :cond_5
    const/4 v10, 0x1

    :try_start_1
    new-array v2, v10, [Ljava/lang/Object;

    .end local v2           #columns:[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v2, v10

    .restart local v2       #columns:[Ljava/lang/Object;
    goto :goto_1

    .line 427
    .end local p1
    :cond_6
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v8, v1, v6

    .line 428
    .local v8, o:Ljava/lang/Object;
    instance-of v10, v8, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v10, :cond_7

    .line 429
    check-cast v8, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v8           #o:Ljava/lang/Object;
    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/PickerProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    const/4 v4, 0x1

    .line 427
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 435
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #columns:[Ljava/lang/Object;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v10

    move-object v11, v10

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    instance-of v10, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v10, :cond_8

    .line 436
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iput-boolean v12, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    :cond_8
    throw v11
.end method

.method private isPlainPicker()Z
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V
    .locals 1
    .parameter "column"

    .prologue
    .line 271
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/PickerColumnProxy;->setUseSpinner(Z)V

    .line 272
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/PickerColumnProxy;->setColumnListener(Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;)V

    .line 273
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 217
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "PickerProxy"

    const-string v1, "Attempt to add to date/time or countdown picker ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleAddObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->add(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 89
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 90
    const-string v1, "PickerProxy"

    const-string v2, "Countdown timer not supported in Titanium for Android"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 93
    const-string v1, "PickerProxy"

    const-string v2, "Date+Time timer not supported in Titanium for Android"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 96
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    invoke-direct {p0, p1, v0}, Lti/modules/titanium/ui/PickerProxy;->createPlainPicker(Landroid/app/Activity;Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 98
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    if-eqz v0, :cond_3

    .line 99
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createDateSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_3
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createDatePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_4
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    if-nez v1, :cond_6

    .line 104
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    if-eqz v0, :cond_5

    .line 105
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createTimeSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_5
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createTimePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_6
    const-string v1, "PickerProxy"

    const-string v2, "Unknown picker type"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fireSelectionChange(II)V
    .locals 9
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    .line 735
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 736
    .local v2, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "columnIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v7, "rowIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 739
    .local v0, column:Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/PickerProxy;->getRow(II)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v4

    .line 740
    .local v4, row:Lti/modules/titanium/ui/PickerRowProxy;
    const-string v7, "column"

    invoke-virtual {v2, v7, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v7, "row"

    invoke-virtual {v2, v7, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getColumnCount()I

    move-result v1

    .line 743
    .local v1, columnCount:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 744
    .local v6, selectedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 745
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/PickerProxy;->getSelectedRow(I)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v5

    .line 746
    .local v5, rowInColumn:Lti/modules/titanium/ui/PickerRowProxy;
    if-eqz v5, :cond_0

    .line 747
    invoke-virtual {v5}, Lti/modules/titanium/ui/PickerRowProxy;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 749
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 752
    .end local v5           #rowInColumn:Lti/modules/titanium/ui/PickerRowProxy;
    :cond_1
    const-string v7, "selectedValue"

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string v7, "change"

    invoke-virtual {p0, v7, v2}, Lti/modules/titanium/ui/PickerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 754
    return-void
.end method

.method public forceRequestLayout()V
    .locals 2

    .prologue
    .line 794
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    if-nez v0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 797
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->handleForceRequestLayout()V

    goto :goto_0

    .line 800
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x526

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 1
    .parameter "index"

    .prologue
    .line 472
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/PickerColumnProxy;

    if-nez v0, :cond_1

    .line 473
    :cond_0
    const/4 v0, 0x0

    .line 475
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getColumns()[Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 463
    .local v0, columns:[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-nez v0, :cond_0

    .line 464
    const/4 v1, 0x0

    .line 466
    :goto_0
    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0
.end method

.method public getColumnIndex(Lti/modules/titanium/ui/PickerColumnProxy;)I
    .locals 1
    .parameter "column"

    .prologue
    .line 481
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 482
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 484
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumns()[Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 2

    .prologue
    .line 379
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const-string v0, "PickerProxy"

    const-string v1, "Cannot get columns from date/time or countdown picker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 384
    const/4 v0, 0x0

    new-array v0, v0, [Lti/modules/titanium/ui/PickerColumnProxy;

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/PickerColumnProxy;

    goto :goto_0
.end method

.method public getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 2
    .parameter "createIfMissing"

    .prologue
    .line 504
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 505
    .local v0, column:Lti/modules/titanium/ui/PickerColumnProxy;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 506
    new-instance v0, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v0           #column:Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-direct {v0}, Lti/modules/titanium/ui/PickerColumnProxy;-><init>()V

    .line 507
    .restart local v0       #column:Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 509
    :cond_0
    return-object v0
.end method

.method public getPreselectedRows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRow(II)Lti/modules/titanium/ui/PickerRowProxy;
    .locals 4
    .parameter "columnIndex"
    .parameter "rowIndex"

    .prologue
    const/4 v2, 0x0

    .line 490
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 491
    .local v0, column:Lti/modules/titanium/ui/PickerColumnProxy;
    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object v2

    .line 494
    :cond_1
    invoke-virtual {v0}, Lti/modules/titanium/ui/PickerColumnProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    .line 495
    .local v1, rowArray:[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ge p2, v3, :cond_0

    aget-object v3, v1, p2

    instance-of v3, v3, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v3, :cond_0

    .line 498
    aget-object v2, v1, p2

    check-cast v2, Lti/modules/titanium/ui/PickerRowProxy;

    goto :goto_0
.end method

.method public getSelectedRow(I)Lti/modules/titanium/ui/PickerRowProxy;
    .locals 4
    .parameter "columnIndex"

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    const-string v2, "PickerProxy"

    const-string v3, "Cannot get selected row in date/time or countdown picker."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    instance-of v2, v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v2, :cond_0

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, row:Lti/modules/titanium/ui/PickerRowProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    instance-of v2, v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v2, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->getSelectedRowIndex(I)I

    move-result v1

    .line 369
    .local v1, rowIndex:I
    if-ltz v1, :cond_0

    .line 370
    invoke-virtual {p0, p1, v1}, Lti/modules/titanium/ui/PickerProxy;->getRow(II)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    return v0
.end method

.method public getUseSpinner()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "dict"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 75
    const-string v0, "useSpinner"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "useSpinner"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 78
    :cond_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 81
    :cond_1
    const-string v0, "columns"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const-string v0, "columns"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->setColumns(Ljava/lang/Object;)V

    .line 84
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 278
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 316
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 280
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 281
    .local v0, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 282
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 283
    goto :goto_0

    .line 286
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 287
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleSetColumns(Ljava/lang/Object;)V

    .line 288
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 289
    goto :goto_0

    .line 292
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 293
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleAddObject(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 295
    goto :goto_0

    .line 298
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 299
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 300
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 301
    goto :goto_0

    .line 304
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleFireColumnModelChange(I)V

    move v1, v2

    .line 305
    goto :goto_0

    .line 308
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v3}, Lti/modules/titanium/ui/PickerProxy;->handleFireRowChange(II)V

    move v1, v2

    .line 309
    goto :goto_0

    .line 312
    :pswitch_6
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->handleForceRequestLayout()V

    move v1, v2

    .line 313
    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x520
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 187
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public rowAdded(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .parameter "column"
    .parameter "rowIndex"

    .prologue
    .line 759
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 760
    return-void
.end method

.method public rowChanged(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .parameter "column"
    .parameter "rowIndex"

    .prologue
    .line 777
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lti/modules/titanium/ui/PickerProxy;->fireRowChange(II)V

    .line 778
    return-void
.end method

.method public rowRemoved(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .parameter "column"
    .parameter "oldRowIndex"

    .prologue
    .line 765
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 766
    return-void
.end method

.method public rowSelected(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 2
    .parameter "column"
    .parameter "rowIndex"

    .prologue
    .line 783
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 784
    .local v0, columnIndex:I
    invoke-virtual {p0, v0, p2}, Lti/modules/titanium/ui/PickerProxy;->fireSelectionChange(II)V

    .line 785
    return-void
.end method

.method public rowsReplaced(Lti/modules/titanium/ui/PickerColumnProxy;)V
    .locals 1
    .parameter "column"

    .prologue
    .line 771
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 772
    return-void
.end method

.method public setColumns(Ljava/lang/Object;)V
    .locals 2
    .parameter "passedColumns"

    .prologue
    .line 393
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    const-string v0, "PickerProxy"

    const-string v1, "Cannot set columns in date/time or countdown picker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 398
    :cond_1
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleSetColumns(Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSelectedRow(IIZ)V
    .locals 4
    .parameter "column"
    .end parameter
    .parameter "row"
    .end parameter
    .parameter "animated"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    const-string v2, "PickerProxy"

    const-string v3, "Selecting row in date/time or countdown picker is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 327
    .local v1, view:Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v1, :cond_4

    .line 329
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    .line 332
    :cond_1
    :goto_1
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_2

    .line 333
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-lt v2, v3, :cond_3

    .line 336
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_4
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(IIZ)V

    goto :goto_0

    .line 347
    :cond_5
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 348
    .local v0, dict:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "column"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v2, "row"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v2, "animated"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x520

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 172
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "PickerProxy"

    const-string v1, "Attempt to change picker type after view has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot change the picker type after it has been rendered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iput p1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 177
    return-void
.end method

.method public setUseSpinner(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 149
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "PickerProxy"

    const-string v3, "Attempt to change useSpinner property after view has already been created. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void

    .line 152
    :cond_1
    iput-boolean p1, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 153
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 154
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 155
    .local v0, child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    instance-of v2, v0, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v2, :cond_2

    .line 156
    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v0           #child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->setUseSpinner(Z)V

    goto :goto_0
.end method

.method public showDatePickerDialog([Ljava/lang/Object;)V
    .locals 13
    .parameter "args"

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 518
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 519
    .local v10, settings:Ljava/util/HashMap;
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 520
    .local v8, callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;
    array-length v1, p1

    if-lez v1, :cond_0

    .line 521
    aget-object v10, p1, v3

    .end local v10           #settings:Ljava/util/HashMap;
    check-cast v10, Ljava/util/HashMap;

    .line 523
    .restart local v10       #settings:Ljava/util/HashMap;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 524
    .local v6, calendar:Ljava/util/Calendar;
    const-string v1, "value"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    const-string v1, "value"

    invoke-static {v10, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 529
    :cond_1
    const-string v1, "callback"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 530
    const-string v1, "callback"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 531
    .local v11, typeTest:Ljava/lang/Object;
    instance-of v1, v11, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_6

    move-object v7, v11

    .line 532
    check-cast v7, Lorg/appcelerator/kroll/KrollFunction;

    .line 539
    .end local v11           #typeTest:Ljava/lang/Object;
    .local v7, callback:Lorg/appcelerator/kroll/KrollFunction;
    :goto_0
    const/4 v2, 0x0

    .line 540
    .local v2, dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    const/4 v9, 0x0

    .line 541
    .local v9, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v7, :cond_2

    .line 542
    new-instance v2, Lti/modules/titanium/ui/PickerProxy$1;

    .end local v2           #dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-direct {v2, p0, v7, v8}, Lti/modules/titanium/ui/PickerProxy$1;-><init>(Lti/modules/titanium/ui/PickerProxy;Lorg/appcelerator/kroll/KrollFunction;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 561
    .restart local v2       #dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v9, Lti/modules/titanium/ui/PickerProxy$2;

    .end local v9           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-direct {v9, p0, v8, v7}, Lti/modules/titanium/ui/PickerProxy$2;-><init>(Lti/modules/titanium/ui/PickerProxy;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 582
    .restart local v9       #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    :cond_2
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 589
    .local v0, dialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v0, v12}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 590
    if-eqz v9, :cond_3

    .line 591
    invoke-virtual {v0, v9}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 593
    :cond_3
    const-string v1, "title"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 594
    const-string v1, "title"

    invoke-static {v10, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 596
    :cond_4
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 597
    const-string v1, "okButtonTitle"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 598
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const-string v3, "okButtonTitle"

    invoke-static {v10, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_5
    return-void

    .line 534
    .end local v0           #dialog:Landroid/app/DatePickerDialog;
    .end local v2           #dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    .end local v7           #callback:Lorg/appcelerator/kroll/KrollFunction;
    .end local v9           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .restart local v11       #typeTest:Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x0

    .restart local v7       #callback:Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0

    .line 537
    .end local v7           #callback:Lorg/appcelerator/kroll/KrollFunction;
    .end local v11           #typeTest:Ljava/lang/Object;
    :cond_7
    const/4 v7, 0x0

    .restart local v7       #callback:Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0
.end method

.method public showTimePickerDialog([Ljava/lang/Object;)V
    .locals 12
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 608
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 609
    .local v10, settings:Ljava/util/HashMap;
    const/4 v5, 0x0

    .line 610
    .local v5, is24HourView:Z
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 611
    .local v8, callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;
    array-length v1, p1

    if-lez v1, :cond_0

    .line 612
    aget-object v10, p1, v3

    .end local v10           #settings:Ljava/util/HashMap;
    check-cast v10, Ljava/util/HashMap;

    .line 614
    .restart local v10       #settings:Ljava/util/HashMap;
    :cond_0
    const-string v1, "format24"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    const-string v1, "format24"

    invoke-static {v10, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v5

    .line 617
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 618
    .local v6, calendar:Ljava/util/Calendar;
    const-string v1, "value"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    const-string v1, "value"

    invoke-static {v10, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 623
    :cond_2
    const-string v1, "callback"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 624
    const-string v1, "callback"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 625
    .local v11, typeTest:Ljava/lang/Object;
    instance-of v1, v11, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_7

    move-object v7, v11

    .line 626
    check-cast v7, Lorg/appcelerator/kroll/KrollFunction;

    .line 633
    .end local v11           #typeTest:Ljava/lang/Object;
    .local v7, callback:Lorg/appcelerator/kroll/KrollFunction;
    :goto_0
    const/4 v2, 0x0

    .line 634
    .local v2, timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    const/4 v9, 0x0

    .line 635
    .local v9, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v7, :cond_3

    .line 636
    new-instance v2, Lti/modules/titanium/ui/PickerProxy$3;

    .end local v2           #timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-direct {v2, p0, v7, v8}, Lti/modules/titanium/ui/PickerProxy$3;-><init>(Lti/modules/titanium/ui/PickerProxy;Lorg/appcelerator/kroll/KrollFunction;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 654
    .restart local v2       #timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v9, Lti/modules/titanium/ui/PickerProxy$4;

    .end local v9           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-direct {v9, p0, v8, v7}, Lti/modules/titanium/ui/PickerProxy$4;-><init>(Lti/modules/titanium/ui/PickerProxy;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 669
    .restart local v9       #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    :cond_3
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 675
    .local v0, dialog:Landroid/app/TimePickerDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setCancelable(Z)V

    .line 676
    if-eqz v9, :cond_4

    .line 677
    invoke-virtual {v0, v9}, Landroid/app/TimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 679
    :cond_4
    const-string v1, "title"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 680
    const-string v1, "title"

    invoke-static {v10, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 682
    :cond_5
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 683
    const-string v1, "okButtonTitle"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 684
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const-string v3, "okButtonTitle"

    invoke-static {v10, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :cond_6
    return-void

    .line 628
    .end local v0           #dialog:Landroid/app/TimePickerDialog;
    .end local v2           #timeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    .end local v7           #callback:Lorg/appcelerator/kroll/KrollFunction;
    .end local v9           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .restart local v11       #typeTest:Ljava/lang/Object;
    :cond_7
    const/4 v7, 0x0

    .restart local v7       #callback:Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0

    .line 631
    .end local v7           #callback:Lorg/appcelerator/kroll/KrollFunction;
    .end local v11           #typeTest:Ljava/lang/Object;
    :cond_8
    const/4 v7, 0x0

    .restart local v7       #callback:Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0
.end method
