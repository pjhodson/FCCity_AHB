.class Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;
.super Ljava/lang/Object;
.source "TiUISearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    const-string v1, "cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 59
    return-void
.end method
