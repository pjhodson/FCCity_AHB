.class Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;
.super Landroid/widget/FrameLayout;
.source "TiListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/listview/TiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/TiListView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/listview/TiListView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 76
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    .line 77
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 86
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 87
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    .local v0, focusListener:Landroid/view/View$OnFocusChangeListener;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    .line 94
    .local v2, listener:Landroid/view/View$OnFocusChangeListener;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 96
    move-object v0, v2

    .line 102
    .end local v2           #listener:Landroid/view/View$OnFocusChangeListener;
    :cond_2
    if-eqz v1, :cond_3

    .line 103
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v4

    const/high16 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 105
    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 107
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v4

    const/high16 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 109
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    #getter for: Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v4}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$100(Lti/modules/titanium/ui/widget/listview/TiListView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 110
    .local v3, viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v3, :cond_4

    const-string v4, "postlayout"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    const-string v4, "postlayout"

    invoke-virtual {v3, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 115
    :cond_4
    if-eqz v0, :cond_0

    .line 117
    if-eqz p1, :cond_5

    .line 118
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 123
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method
