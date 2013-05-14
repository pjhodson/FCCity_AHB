.class final Lorg/appcelerator/titanium/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/appcelerator/titanium/TiVerify;

.field private synthetic b:Landroid/app/Activity;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiVerify;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/appcelerator/titanium/a;->a:Lorg/appcelerator/titanium/TiVerify;

    iput-object p2, p0, Lorg/appcelerator/titanium/a;->b:Landroid/app/Activity;

    iput-object p3, p0, Lorg/appcelerator/titanium/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/appcelerator/titanium/a;->a:Lorg/appcelerator/titanium/TiVerify;

    iget-object v0, v0, Lorg/appcelerator/titanium/TiVerify;->a:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/a;->b:Landroid/app/Activity;

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "License Violation Detected"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lorg/appcelerator/titanium/b;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/b;-><init>(Lorg/appcelerator/titanium/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
