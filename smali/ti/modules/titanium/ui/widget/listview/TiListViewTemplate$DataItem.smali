.class public Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
.super Ljava/lang/Object;
.source "TiListViewTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataItem"
.end annotation


# instance fields
.field bindId:Ljava/lang/String;

.field children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;",
            ">;"
        }
    .end annotation
.end field

.field defaultProperties:Lorg/appcelerator/kroll/KrollDict;

.field parent:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

.field vProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V
    .locals 1
    .parameter
    .parameter "proxy"
    .parameter "id"
    .parameter "parent"

    .prologue
    .line 50
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->this$0:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->vProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 52
    iput-object p3, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->bindId:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->parent:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 54
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->setProxyParent()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->children:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->defaultProperties:Lorg/appcelerator/kroll/KrollDict;

    .line 57
    return-void
.end method

.method private setProxyParent()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->vProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->parent:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->parent:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getViewProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 63
    .local v0, parentProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->vProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 67
    .end local v0           #parentProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public getBindingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->bindId:Ljava/lang/String;

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultProperties()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->defaultProperties:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getParent()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->parent:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    return-object v0
.end method

.method public getViewProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->vProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->vProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->vProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->release()V

    .line 99
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->vProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 101
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->parent:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 103
    return-void
.end method

.method public setDefaultProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 77
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->defaultProperties:Lorg/appcelerator/kroll/KrollDict;

    .line 78
    return-void
.end method
