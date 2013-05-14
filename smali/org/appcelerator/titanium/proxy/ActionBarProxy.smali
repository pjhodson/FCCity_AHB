.class public Lorg/appcelerator/titanium/proxy/ActionBarProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ActionBarProxy.java"


# static fields
.field private static final BACKGROUND_IMAGE:Ljava/lang/String; = "backgroundImage"

.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final LOGO:Ljava/lang/String; = "logo"

.field private static final MSG_DISPLAY_HOME_AS_UP:I = 0x137

.field private static final MSG_FIRST_ID:I = 0xd3

.field private static final MSG_HIDE:I = 0x13b

.field private static final MSG_SET_BACKGROUND_IMAGE:I = 0x138

.field private static final MSG_SET_HOME_BUTTON_ENABLED:I = 0x13e

.field private static final MSG_SET_ICON:I = 0x13d

.field private static final MSG_SET_LOGO:I = 0x13c

.field private static final MSG_SET_TITLE:I = 0x139

.field private static final MSG_SHOW:I = 0x13a

.field private static final SHOW_HOME_AS_UP:Ljava/lang/String; = "showHomeAsUp"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private actionBar:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    .line 49
    return-void
.end method

.method private getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "url"

    .prologue
    .line 191
    new-instance v0, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v0, p1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, imageUrl:Lorg/appcelerator/titanium/util/TiUrl;
    new-instance v1, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 193
    .local v1, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private handleHide()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 166
    return-void
.end method

.method private handleSetBackgroundImage(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 171
    .local v0, backgroundImage:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_0
    return-void
.end method

.method private handleSetIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_0
    return-void
.end method

.method private handleSetLogo(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getDrawableFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    .local v0, logo:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_0
    return-void
.end method

.method private handleSetTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 154
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 155
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method private handleShow()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 161
    return-void
.end method

.method private handlesetDisplayHomeAsUp(Z)V
    .locals 1
    .parameter "showHomeAsUp"

    .prologue
    .line 178
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 179
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 199
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 201
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "showHomeAsUp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handlesetDisplayHomeAsUp(Z)V

    goto :goto_0

    .line 204
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "backgroundImage"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetBackgroundImage(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_3
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleShow()V

    goto :goto_0

    .line 213
    :pswitch_4
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleHide()V

    goto :goto_0

    .line 216
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "logo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetLogo(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_7
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleHide()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const-string v0, "onHomeIconItemSelected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->actionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 241
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 66
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetBackgroundImage(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x138

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "backgroundImage"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setDisplayHomeAsUp(Z)V
    .locals 4
    .parameter "showHomeAsUp"

    .prologue
    .line 54
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handlesetDisplayHomeAsUp(Z)V

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x137

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 58
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "showHomeAsUp"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 134
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetIcon(Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13d

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 120
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetLogo(Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "logo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 78
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleSetTitle(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x139

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->handleShow()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
