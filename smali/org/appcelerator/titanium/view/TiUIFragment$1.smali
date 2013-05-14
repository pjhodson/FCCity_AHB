.class Lorg/appcelerator/titanium/view/TiUIFragment$1;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiUIFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIFragment;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIFragment;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIFragment;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIFragment$1;->this$0:Lorg/appcelerator/titanium/view/TiUIFragment;

    invoke-direct {p0, p2, p3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 32
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIFragment$1;->this$0:Lorg/appcelerator/titanium/view/TiUIFragment;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/view/TiUIFragment;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
