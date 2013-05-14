.class public Lorg/appcelerator/titanium/proxy/MenuItemProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "MenuItemProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/proxy/MenuItemProxy$ActionExpandListener;
    }
.end annotation


# static fields
.field private static final MSG_ACTION_VIEW_EXPANDED:I = 0x1ac

.field private static final MSG_CHECKABLE:I = 0x1a2

.field private static final MSG_CHECKED:I = 0x1a1

.field private static final MSG_ENABLED:I = 0x1a3

.field private static final MSG_FIRST_ID:I = 0xd3

.field private static final MSG_GROUP_ID:I = 0x19b

.field private static final MSG_ITEM_ID:I = 0x19c

.field protected static final MSG_LAST_ID:I = 0x4bb

.field private static final MSG_ORDER:I = 0x19d

.field private static final MSG_SET_CHECKABLE:I = 0x1a6

.field private static final MSG_SET_CHECKED:I = 0x1a5

.field private static final MSG_SET_ENABLED:I = 0x1a7

.field private static final MSG_SET_ICON:I = 0x1a9

.field private static final MSG_SET_TITLE:I = 0x1aa

.field private static final MSG_SET_TITLE_CONDENSED:I = 0x1ab

.field private static final MSG_SET_VISIBLE:I = 0x1a8

.field private static final MSG_SUB_MENU:I = 0x1a0

.field private static final MSG_TITLE:I = 0x19e

.field private static final MSG_TITLE_CONDENSED:I = 0x19f

.field private static final MSG_VISIBLE:I = 0x1a4

.field private static final TAG:Ljava/lang/String; = "MenuItem"


# instance fields
.field private item:Landroid/view/MenuItem;


# direct methods
.method protected constructor <init>(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 79
    new-instance v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$ActionExpandListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy$ActionExpandListener;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 81
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    return-object v0
.end method

.method private handleSetIcon(Ljava/lang/Object;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 6
    .parameter "icon"

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 299
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, iconPath:Ljava/lang/String;
    new-instance v2, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v2, v1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, iconUrl:Lorg/appcelerator/titanium/util/TiUrl;
    if-eqz v1, :cond_0

    .line 302
    new-instance v3, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 303
    .local v3, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 304
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 305
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 315
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #iconPath:Ljava/lang/String;
    .end local v2           #iconUrl:Lorg/appcelerator/titanium/util/TiUrl;
    .end local v3           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    :goto_0
    return-object p0

    .line 308
    :cond_1
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_0

    .line 309
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 310
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 311
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public collapseActionView()V
    .locals 3

    .prologue
    .line 393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 394
    new-instance v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$3;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy$3;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v0, "MenuItem"

    const-string v1, "This device does not support collapsing action views. No operation performed."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public expandActionView()V
    .locals 3

    .prologue
    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 408
    new-instance v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$4;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy$4;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    const-string v0, "MenuItem"

    const-string v1, "This device does not support expanding action views. No operation performed."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId()I
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitleCondensed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, result:Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 89
    .restart local v0       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 170
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 91
    :pswitch_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 92
    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 96
    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 100
    goto :goto_0

    .line 103
    :pswitch_3
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 104
    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 108
    goto :goto_0

    .line 111
    :pswitch_5
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 112
    goto :goto_0

    .line 115
    :pswitch_6
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 116
    goto :goto_0

    .line 119
    :pswitch_7
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 120
    goto :goto_0

    .line 123
    :pswitch_8
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 124
    goto :goto_0

    .line 127
    :pswitch_9
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 128
    goto/16 :goto_0

    .line 131
    :pswitch_a
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 132
    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 133
    goto/16 :goto_0

    .line 136
    :pswitch_b
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 137
    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 138
    goto/16 :goto_0

    .line 141
    :pswitch_c
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 142
    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 143
    goto/16 :goto_0

    .line 146
    :pswitch_d
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 147
    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 148
    goto/16 :goto_0

    .line 151
    :pswitch_e
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->handleSetIcon(Ljava/lang/Object;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 152
    goto/16 :goto_0

    .line 155
    :pswitch_f
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 156
    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 157
    goto/16 :goto_0

    .line 160
    :pswitch_10
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 161
    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 162
    goto/16 :goto_0

    .line 165
    :pswitch_11
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 166
    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x19b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 422
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 431
    :goto_0
    return v0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1ac

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 431
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setActionView(Ljava/lang/Object;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 360
    instance-of v1, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_1

    .line 361
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 362
    check-cast p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p1
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, v:Landroid/view/View;
    new-instance v1, Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;

    invoke-direct {v1, p0, v0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;Landroid/view/View;)V

    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 375
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-void

    .line 370
    .restart local p1
    :cond_0
    const-string v1, "MenuItem"

    const-string v2, "Action bar is not available on this device. Ignoring actionView property."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_1
    const-string v1, "MenuItem"

    const-string v2, "Invalid type for actionView"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCheckable(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "checkable"

    .prologue
    .line 267
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 272
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object p0, v0

    goto :goto_0
.end method

.method public setChecked(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "checked"

    .prologue
    .line 277
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 282
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object p0, v0

    goto :goto_0
.end method

.method public setEnabled(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "enabled"

    .prologue
    .line 287
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 292
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object p0, v0

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/Object;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "icon"

    .prologue
    .line 320
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->handleSetIcon(Ljava/lang/Object;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    goto :goto_0
.end method

.method public setShowAsAction(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 380
    new-instance v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$2;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy$2;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;I)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v0, "MenuItem"

    const-string v1, "Action bar unsupported by this device. Ignoring showAsAction property."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "title"

    .prologue
    .line 329
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 334
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1aa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object p0, v0

    goto :goto_0
.end method

.method public setTitleCondensed(Ljava/lang/String;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "title"

    .prologue
    .line 339
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 344
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1ab

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object p0, v0

    goto :goto_0
.end method

.method public setVisible(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 2
    .parameter "visible"

    .prologue
    .line 349
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-object p0, v0

    goto :goto_0
.end method
