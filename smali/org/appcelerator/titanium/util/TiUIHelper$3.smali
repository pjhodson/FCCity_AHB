.class final Lorg/appcelerator/titanium/util/TiUIHelper$3;
.super Ljava/lang/Object;
.source "TiUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiUIHelper;->createFinishListener(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$me:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiUIHelper$3;->val$me:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiUIHelper$3;->val$me:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 122
    return-void
.end method
