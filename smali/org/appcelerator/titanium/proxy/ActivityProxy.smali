.class public Lorg/appcelerator/titanium/proxy/ActivityProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ActivityProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# static fields
.field private static final MSG_FIRST_ID:I = 0xd3

.field private static final MSG_INVALIDATE_OPTIONS_MENU:I = 0x137

.field private static final MSG_OPEN_OPTIONS_MENU:I = 0x138

.field private static final TAG:Ljava/lang/String; = "ActivityProxy"


# instance fields
.field protected actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;

.field protected intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field private resultCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

.field protected wrappedActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setActivity(Landroid/app/Activity;)V

    .line 57
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setWrappedActivity(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method private handleInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 271
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 274
    :cond_0
    return-void
.end method

.method private handleOpenOptionsMenu()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 263
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 203
    :cond_0
    return-void
.end method

.method public getActionBar()Lorg/appcelerator/titanium/proxy/ActionBarProxy;
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 232
    new-instance v1, Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    invoke-direct {v1, v0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    .line 235
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    return-object v1
.end method

.method public getDecorView()Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    .locals 5

    .prologue
    .line 80
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    if-nez v2, :cond_1

    .line 81
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v2, :cond_0

    .line 83
    const-string v2, "ActivityProxy"

    const-string v3, "Unable to return decor view, activity is not TiBaseActivity"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v2, 0x0

    .line 93
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 88
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    new-instance v1, Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    move-object v2, v0

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;-><init>(Landroid/view/View;)V

    .line 89
    .local v1, decorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 90
    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    .line 93
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #decorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    goto :goto_0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 209
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    return-object v0
.end method

.method public getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 158
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 159
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 161
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 164
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWindow()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v2, :cond_0

    .line 220
    const/4 v2, 0x0

    .line 224
    :goto_0
    return-object v2

    :cond_0
    move-object v1, v0

    .line 223
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 224
    .local v1, tiActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v2

    goto :goto_0
.end method

.method protected getWrappedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 309
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 319
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 311
    :pswitch_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleInvalidateOptionsMenu()V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleOpenOptionsMenu()V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 252
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleInvalidateOptionsMenu()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"
    .parameter "e"

    .prologue
    .line 293
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 294
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "requestCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 296
    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v1, v2, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 298
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, intent:Lorg/appcelerator/titanium/proxy/IntentProxy;
    if-eqz p4, :cond_0

    .line 280
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    .end local v1           #intent:Lorg/appcelerator/titanium/proxy/IntentProxy;
    invoke-direct {v1, p4}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    .line 283
    .restart local v1       #intent:Lorg/appcelerator/titanium/proxy/IntentProxy;
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 284
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "requestCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v2, "resultCode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v2, "source"

    invoke-virtual {v0, v2, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v2, v3, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 289
    return-void
.end method

.method public openOptionsMenu()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleOpenOptionsMenu()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lorg/appcelerator/kroll/KrollProxy;->release()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 304
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public setResult(ILorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .parameter "resultCode"
    .end parameter
    .parameter "intent"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 187
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 188
    if-nez p2, :cond_1

    .line 189
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public setWrappedActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 62
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 67
    :cond_0
    return-void
.end method

.method public startActivity(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 104
    :cond_0
    return-void
.end method

.method public startActivityForResult(Lorg/appcelerator/titanium/proxy/IntentProxy;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 4
    .parameter "intent"
    .parameter "callback"

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    instance-of v3, v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 113
    check-cast v2, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 118
    :goto_0
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 119
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v1

    .line 120
    .local v1, requestCode:I
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3, v1, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 122
    .end local v1           #requestCode:I
    .end local v2           #support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    :cond_0
    return-void

    .line 115
    .restart local v2       #support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    :cond_1
    new-instance v2, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .end local v2           #support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-direct {v2, v0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;-><init>(Landroid/app/Activity;)V

    .restart local v2       #support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    goto :goto_0
.end method

.method public startActivityFromChild(Lorg/appcelerator/titanium/proxy/ActivityProxy;Lorg/appcelerator/titanium/proxy/IntentProxy;I)V
    .locals 3
    .parameter "child"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 131
    :cond_0
    return-void
.end method

.method public startActivityIfNeeded(Lorg/appcelerator/titanium/proxy/IntentProxy;I)Z
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v1

    .line 140
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startNextMatchingActivity(Lorg/appcelerator/titanium/proxy/IntentProxy;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v1

    .line 150
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
