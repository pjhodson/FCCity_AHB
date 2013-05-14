.class final Lorg/appcelerator/titanium/proxy/MenuItemProxy$ActionExpandListener;
.super Ljava/lang/Object;
.source "MenuItemProxy.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/proxy/MenuItemProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionExpandListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;


# direct methods
.method private constructor <init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$ActionExpandListener;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;Lorg/appcelerator/titanium/proxy/MenuItemProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy$ActionExpandListener;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxy;)V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$ActionExpandListener;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    const-string v1, "collapse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy$ActionExpandListener;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    const-string v1, "expand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 70
    const/4 v0, 0x1

    return v0
.end method
