.class Lorg/appcelerator/titanium/view/TiUIView$8;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->setOnLongClickListener(Landroid/view/View;)V
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
    .line 1478
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 1481
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v1, "longclick"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    return v0
.end method
