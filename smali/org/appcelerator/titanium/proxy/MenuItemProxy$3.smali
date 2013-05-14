.class Lorg/appcelerator/titanium/proxy/MenuItemProxy$3;
.super Ljava/lang/Object;
.source "MenuItemProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/MenuItemProxy;->collapseActionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$3;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$3;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    #getter for: Lorg/appcelerator/titanium/proxy/MenuItemProxy;->item:Landroid/view/MenuItem;
    invoke-static {v0}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->access$100(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 397
    return-void
.end method
