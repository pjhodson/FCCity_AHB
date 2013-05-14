.class Lorg/appcelerator/titanium/view/TiUIView$7;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->setOnClickListener(Landroid/view/View;)V
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
    .line 1454
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$7;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1457
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$7;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v1, "click"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$7;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$7;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v3, v3, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 1458
    return-void
.end method
