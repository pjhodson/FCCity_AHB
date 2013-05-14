.class public Lti/modules/titanium/ui/widget/TiUIDialog;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_MASK:I = 0x10000000

.field private static final TAG:Ljava/lang/String; = "TiUIDialog"


# instance fields
.field protected builder:Landroid/app/AlertDialog$Builder;

.field private dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

.field protected view:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 54
    const-string v0, "TiUIDialog"

    const-string v1, "Creating a dialog"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->createBuilder()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIDialog;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIDialog;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private createBuilder()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 321
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 322
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 323
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 324
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object v1, v0

    .line 327
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 328
    .local v1, dialogActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    new-instance v2, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v1, v3, v5, v4}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/app/AlertDialog;ZLjava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    .line 332
    .end local v1           #dialogActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v2, "TiUIDialog"

    const-string v3, "Unable to find an activity for dialog."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBuilder()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->createBuilder()V

    .line 72
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, currentActivity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 62
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 64
    :cond_0
    return-object v0
.end method

.method private processButtons([Ljava/lang/String;)V
    .locals 5
    .parameter "buttonText"

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lti/modules/titanium/ui/widget/TiUIDialog$2;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$2;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    const/4 v1, 0x0

    .local v1, id:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 143
    aget-object v2, p1, v1

    .line 144
    .local v2, text:Ljava/lang/String;
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;

    const/high16 v3, 0x1000

    or-int/2addr v3, v1

    invoke-direct {v0, p0, v3}, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;I)V

    .line 145
    .local v0, clicker:Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    packed-switch v1, :pswitch_data_0

    .line 156
    const-string v3, "TiUIDialog"

    const-string v4, "Only 3 buttons are supported"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 150
    :pswitch_1
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 153
    :pswitch_2
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 159
    .end local v0           #clicker:Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processOptions([Ljava/lang/String;I)V
    .locals 2
    .parameter "optionText"
    .parameter "selectedIndex"

    .prologue
    .line 116
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/widget/TiUIDialog$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$1;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    return-void
.end method

.method private processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getActivity()Lorg/appcelerator/titanium/TiBaseActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 166
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 167
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(I)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 336
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "cancel"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "cancel"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 338
    .local v0, cancelIndex:I
    :goto_0
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 339
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const/high16 v4, 0x1000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 340
    const-string v4, "button"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const v4, -0x10000001

    and-int/2addr p1, v4

    .line 349
    :cond_0
    :goto_1
    const-string v4, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v4, "cancel"

    if-ne p1, v0, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v2, "click"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 352
    return-void

    .line 336
    .end local v0           #cancelIndex:I
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 343
    .restart local v0       #cancelIndex:I
    .restart local v1       #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    const-string v4, "button"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "options"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "selectedIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 350
    goto :goto_2
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 307
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 308
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 310
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getActivity()Lorg/appcelerator/titanium/TiBaseActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/TiBaseActivity;->removeDialog(Landroid/app/Dialog;)V

    .line 313
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 317
    :cond_1
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .parameter "d"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, buttonText:[Ljava/lang/String;
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    :cond_0
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_1
    const-string v3, "buttonNames"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 87
    const-string v3, "buttonNames"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_2
    :goto_0
    const-string v3, "androidView"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 92
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "androidView"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIDialog;->processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 104
    :cond_3
    :goto_1
    const-string v3, "persistent"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    const-string v4, "persistent"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->setPersistent(Z)V

    .line 108
    :cond_4
    if-eqz v0, :cond_5

    .line 109
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V

    .line 111
    :cond_5
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 112
    return-void

    .line 88
    :cond_6
    const-string v3, "ok"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .end local v0           #buttonText:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "ok"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .restart local v0       #buttonText:[Ljava/lang/String;
    goto :goto_0

    .line 93
    :cond_7
    const-string v3, "options"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    const-string v3, "options"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, optionText:[Ljava/lang/String;
    const-string v3, "selectedIndex"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "selectedIndex"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, selectedIndex:I
    :goto_2
    array-length v3, v1

    if-lt v2, v3, :cond_8

    .line 97
    const-string v3, "TiUIDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ooops invalid selected index specified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, -0x1

    .line 101
    :cond_8
    invoke-direct {p0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto :goto_1

    .line 95
    .end local v2           #selectedIndex:I
    :cond_9
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 8
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v7, 0x0

    .line 174
    const-string v4, "TiUIDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 177
    .local v0, dialog:Landroid/app/AlertDialog;
    const-string v4, "title"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    if-eqz v0, :cond_0

    .line 179
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local p3
    :cond_1
    const-string v4, "message"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    if-eqz v0, :cond_0

    .line 183
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    .restart local p3
    :cond_2
    const-string v4, "buttonNames"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    const/4 v0, 0x0

    .line 190
    :cond_3
    check-cast p3, [Ljava/lang/Object;

    .end local p3
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .restart local p3
    :cond_4
    const-string v4, "ok"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "buttonNames"

    invoke-virtual {p4, v4}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 192
    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    const/4 v0, 0x0

    .line 196
    :cond_5
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_6
    const-string v4, "options"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 198
    if-eqz v0, :cond_7

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    const/4 v0, 0x0

    .line 203
    :cond_7
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 204
    const/4 v3, -0x1

    .line 205
    .local v3, selectedIndex:I
    const-string v4, "selectedIndex"

    invoke-virtual {p4, v4}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 206
    const-string v4, "selectedIndex"

    invoke-virtual {p4, v4}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    .line 208
    :cond_8
    check-cast p3, [Ljava/lang/Object;

    .end local p3
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 209
    .end local v3           #selectedIndex:I
    .restart local p3
    :cond_9
    const-string v4, "selectedIndex"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 210
    if-eqz v0, :cond_a

    .line 211
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 212
    const/4 v0, 0x0

    .line 215
    :cond_a
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 216
    const-string v4, "options"

    invoke-virtual {p4, v4}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    const-string v4, "options"

    invoke-virtual {p4, v4}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 220
    :cond_b
    const-string v4, "androidView"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 221
    if-eqz v0, :cond_c

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 223
    const/4 v0, 0x0

    .line 225
    :cond_c
    if-eqz p3, :cond_d

    .line 226
    check-cast p3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p3
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIDialog;->processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto/16 :goto_0

    .line 228
    .restart local p3
    :cond_d
    const-string v4, "androidView"

    invoke-virtual {p4, v4, v7}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 230
    :cond_e
    const-string v4, "persistent"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz p3, :cond_f

    .line 231
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->setPersistent(Z)V

    goto/16 :goto_0

    .line 232
    :cond_f
    const-string v4, "accessibility"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_12

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 235
    .local v2, listView:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 236
    const-string v4, "accessibilityHidden"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, importance:I
    if-eqz p3, :cond_10

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 239
    const/4 v1, 0x2

    .line 241
    :cond_10
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 243
    .end local v1           #importance:I
    :cond_11
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->composeContentDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 248
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_12
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .parameter "options"

    .prologue
    .line 254
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 255
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez v0, :cond_2

    .line 256
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/TiUIDialog;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 257
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lti/modules/titanium/ui/widget/TiUIDialog$3;

    invoke-direct {v7, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$3;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 272
    .local v3, listView:Landroid/widget/ListView;
    if-eqz v3, :cond_1

    .line 273
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->composeContentDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, importance:I
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v6, :cond_0

    .line 276
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "accessibilityHidden"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 277
    .local v4, propertyValue:Ljava/lang/Object;
    if-eqz v4, :cond_0

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    const/4 v2, 0x2

    .line 281
    .end local v4           #propertyValue:Ljava/lang/Object;
    :cond_0
    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 284
    .end local v2           #importance:I
    :cond_1
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v6, v0}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->setDialog(Landroid/app/AlertDialog;)V

    .line 285
    const/4 v6, 0x0

    iput-object v6, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 289
    .end local v3           #listView:Landroid/widget/ListView;
    :cond_2
    :try_start_0
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->getActivity()Lorg/appcelerator/titanium/TiBaseActivity;

    move-result-object v1

    .line 290
    .local v1, dialogActivity:Landroid/app/Activity;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 291
    instance-of v6, v1, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v6, :cond_3

    .line 293
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v1           #dialogActivity:Landroid/app/Activity;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialogWrapper:Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v1, v6}, Lorg/appcelerator/titanium/TiBaseActivity;->addDialog(Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;)V

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 303
    :cond_3
    :goto_0
    return-void

    .line 297
    .restart local v1       #dialogActivity:Landroid/app/Activity;
    :cond_4
    const/4 v0, 0x0

    .line 298
    const-string v6, "TiUIDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dialog activity is destroyed, unable to show dialog with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "message"

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    .end local v1           #dialogActivity:Landroid/app/Activity;
    :catch_0
    move-exception v5

    .line 301
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "TiUIDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Context must have gone away: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
