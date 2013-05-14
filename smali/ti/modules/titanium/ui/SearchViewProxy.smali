.class public Lti/modules/titanium/ui/SearchViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "SearchViewProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchProxy"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 29
    iget-object v0, p0, Lti/modules/titanium/ui/SearchViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "iconifiedByDefault"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "activity"

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 35
    new-instance v0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v0, "SearchProxy"

    const-string v1, "SearchView is only supported on target API 11+"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method
