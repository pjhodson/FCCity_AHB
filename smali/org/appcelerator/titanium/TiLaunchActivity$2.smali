.class Lorg/appcelerator/titanium/TiLaunchActivity$2;
.super Landroid/os/Handler;
.source "TiLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiLaunchActivity;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiLaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lorg/appcelerator/titanium/TiLaunchActivity$2;->this$0:Lorg/appcelerator/titanium/TiLaunchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity$2;->this$0:Lorg/appcelerator/titanium/TiLaunchActivity;

    #calls: Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V
    invoke-static {v0}, Lorg/appcelerator/titanium/TiLaunchActivity;->access$000(Lorg/appcelerator/titanium/TiLaunchActivity;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
