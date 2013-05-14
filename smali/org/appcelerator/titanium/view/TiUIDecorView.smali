.class public Lorg/appcelerator/titanium/view/TiUIDecorView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDecorView.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/DecorViewProxy;)V
    .locals 1
    .parameter "decorViewProxy"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 21
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIDecorView;->setNativeView(Landroid/view/View;)V

    .line 22
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIDecorView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 34
    :cond_0
    return-void
.end method
