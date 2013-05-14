.class public Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;
.super Ljava/lang/Object;
.source "ListSectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItemData"
.end annotation


# instance fields
.field private properties:Lorg/appcelerator/kroll/KrollDict;

.field private template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;)V
    .locals 0
    .parameter
    .parameter "properties"
    .parameter "template"

    .prologue
    .line 70
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->this$0:Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->properties:Lorg/appcelerator/kroll/KrollDict;

    .line 72
    iput-object p3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    .line 73
    return-void
.end method


# virtual methods
.method public getProperties()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->properties:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getTemplate()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->template:Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    return-object v0
.end method
