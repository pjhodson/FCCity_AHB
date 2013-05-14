.class final Lorg/appcelerator/titanium/util/TiUIHelper$6;
.super Ljava/lang/Object;
.source "TiUIHelper.java"

# interfaces
.implements Lorg/appcelerator/kroll/common/CurrentActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$fListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityReady(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiUIHelper$6;->val$fListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 207
    .local v1, dialog:Landroid/app/AlertDialog;
    instance-of v2, p1, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 208
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 209
    .local v0, baseActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    new-instance v2, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/app/AlertDialog;ZLjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->addDialog(Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;)V

    .line 210
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 212
    .end local v0           #baseActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 216
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_1
    return-void
.end method
