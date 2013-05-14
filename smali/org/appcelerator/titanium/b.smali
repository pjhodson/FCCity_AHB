.class final Lorg/appcelerator/titanium/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lorg/appcelerator/titanium/a;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/a;)V
    .locals 0

    iput-object p1, p0, Lorg/appcelerator/titanium/b;->a:Lorg/appcelerator/titanium/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/appcelerator/titanium/b;->a:Lorg/appcelerator/titanium/a;

    iget-object v0, v0, Lorg/appcelerator/titanium/a;->a:Lorg/appcelerator/titanium/TiVerify;

    iget-object v0, v0, Lorg/appcelerator/titanium/TiVerify;->a:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/b;->a:Lorg/appcelerator/titanium/a;

    iget-object v1, v1, Lorg/appcelerator/titanium/a;->a:Lorg/appcelerator/titanium/TiVerify;

    iget-object v1, v1, Lorg/appcelerator/titanium/TiVerify;->a:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiRootActivity;->finish()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
