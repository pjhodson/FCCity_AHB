.class public Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TiBaseWindowProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiBaseWindow"


# instance fields
.field private hostActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public addSelfToStack()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 46
    .local v1, topActivity:Landroid/app/Activity;
    instance-of v2, v1, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 47
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 48
    .local v0, baseActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->hostActivity:Ljava/lang/ref/WeakReference;

    .line 49
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addWindowToStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 51
    .end local v0           #baseActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    :cond_0
    return-void
.end method

.method public getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create view on TiBaseWindowProxy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getWindowActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWrappedView()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "options"

    .prologue
    .line 87
    return-void
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "options"

    .prologue
    .line 82
    return-void
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 101
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->mViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v3, :cond_1

    .line 103
    move-object v1, p1

    .line 104
    .local v1, propertyName:Ljava/lang/String;
    move-object v0, p2

    .line 106
    .local v0, newValue:Ljava/lang/Object;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->mViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isLocaleProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const-string v3, "TiBaseWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->mViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->updateLocaleProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 109
    .local v2, update:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 110
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v1           #propertyName:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 111
    .restart local v1       #propertyName:Ljava/lang/String;
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 115
    .end local v2           #update:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->mViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .end local v0           #newValue:Ljava/lang/Object;
    .end local v1           #propertyName:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public removeSelfFromStack()V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->hostActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->hostActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    move-object v0, v1

    .line 58
    .local v0, activity:Lorg/appcelerator/titanium/TiBaseActivity;
    :goto_0
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->removeWindowFromStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 61
    :cond_0
    return-void

    .line 57
    .end local v0           #activity:Lorg/appcelerator/titanium/TiBaseActivity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 126
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->mViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->mViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public setWindowView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "viewProxy"

    .prologue
    .line 35
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 36
    .local v0, view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 37
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 38
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiBaseWindowProxy;->mViewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 39
    return-void
.end method
