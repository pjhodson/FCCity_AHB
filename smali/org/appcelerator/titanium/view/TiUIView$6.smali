.class Lorg/appcelerator/titanium/view/TiUIView$6;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPressEvents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1328
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1329
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1330
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "keyCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v3, "keypressed"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 1333
    sparse-switch p2, :sswitch_data_0

    .line 1342
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1336
    .restart local v0       #data:Lorg/appcelerator/kroll/KrollDict;
    :sswitch_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v2, v2, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "click"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    goto :goto_0

    .line 1333
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
