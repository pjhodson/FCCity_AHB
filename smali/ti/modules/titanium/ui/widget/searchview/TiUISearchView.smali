.class public Lti/modules/titanium/ui/widget/searchview/TiUISearchView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISearchView.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field protected searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

.field private searchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 31
    new-instance v0, Landroid/widget/SearchView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 33
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 34
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 36
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->setNativeView(Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    .line 82
    const-string v0, "cancel"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "query"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    invoke-interface {v0, p1}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;->filterBy(Ljava/lang/String;)V

    .line 92
    :cond_0
    const-string v0, "change"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->nativeView:Landroid/view/View;

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 99
    const-string v0, "submit"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 100
    return v2
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "props"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 45
    const-string v0, "hintText"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    const-string v1, "hintText"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 51
    :cond_1
    const-string v0, "iconified"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    const-string v1, "iconified"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 54
    :cond_2
    const-string v0, "iconifiedByDefault"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    const-string v1, "iconifiedByDefault"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 57
    :cond_3
    const-string v0, "submitEnabled"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    const-string v1, "submitEnabled"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 60
    :cond_4
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 65
    const-string v0, "hintText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-void

    .line 67
    .restart local p3
    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    check-cast p3, Ljava/lang/String;

    .end local p3
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 69
    .restart local p3
    :cond_1
    const-string v0, "iconified"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "iconifiedByDefault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    goto :goto_0

    .line 73
    :cond_3
    const-string v0, "submitEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchView:Landroid/widget/SearchView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->searchChangeListener:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;

    .line 105
    return-void
.end method
