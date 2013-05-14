.class public Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
.super Ljava/lang/Object;
.source "TiBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/TiBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogWrapper"
.end annotation


# instance fields
.field dialog:Landroid/app/AlertDialog;

.field dialogActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field isPersistent:Z

.field final synthetic this$0:Lorg/appcelerator/titanium/TiBaseActivity;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/app/AlertDialog;ZLjava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter "d"
    .parameter "persistent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog;",
            "Z",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p4, activity:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity;>;"
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean p3, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->isPersistent:Z

    .line 97
    iput-object p2, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialog:Landroid/app/AlertDialog;

    .line 98
    iput-object p4, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialogActivity:Ljava/lang/ref/WeakReference;

    .line 99
    return-void
.end method


# virtual methods
.method public getActivity()Lorg/appcelerator/titanium/TiBaseActivity;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialogActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    return-object v0
.end method

.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getPersistent()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->isPersistent:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialog:Landroid/app/AlertDialog;

    .line 117
    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialogActivity:Ljava/lang/ref/WeakReference;

    .line 118
    return-void
.end method

.method public setDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 111
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialog:Landroid/app/AlertDialog;

    .line 112
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "p"

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->isPersistent:Z

    .line 128
    return-void
.end method
