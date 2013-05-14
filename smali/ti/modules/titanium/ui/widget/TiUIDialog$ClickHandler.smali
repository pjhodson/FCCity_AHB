.class public Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
.super Ljava/lang/Object;
.source "TiUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClickHandler"
.end annotation


# instance fields
.field private result:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIDialog;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIDialog;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 42
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p2, p0, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;->result:I

    .line 44
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;->result:I

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->handleEvent(I)V

    .line 47
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 48
    return-void
.end method
