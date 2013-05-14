.class Lorg/appcelerator/titanium/view/TiUIView$1;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->val$v:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V

    .line 778
    return-void
.end method
