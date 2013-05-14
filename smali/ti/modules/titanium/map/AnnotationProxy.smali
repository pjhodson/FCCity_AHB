.class public Lti/modules/titanium/map/AnnotationProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AnnotationProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnnotationProxy"


# instance fields
.field private viewProxy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/map/ViewProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 45
    const-string v0, "AnnotationProxy"

    const-string v1, "Creating an Annotation"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 50
    invoke-direct {p0}, Lti/modules/titanium/map/AnnotationProxy;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 61
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "subtitle"

    const-string v2, "subtitleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object v0
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lti/modules/titanium/map/AnnotationProxy;->viewProxy:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/map/AnnotationProxy;->viewProxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lti/modules/titanium/map/AnnotationProxy;->viewProxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/map/ViewProxy;

    invoke-virtual {v1}, Lti/modules/titanium/map/ViewProxy;->getMapView()Lti/modules/titanium/map/TiMapView;

    move-result-object v0

    .line 72
    .local v0, mapView:Lti/modules/titanium/map/TiMapView;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView;->updateAnnotations()V

    .line 76
    .end local v0           #mapView:Lti/modules/titanium/map/TiMapView;
    :cond_0
    return-void
.end method

.method public setViewProxy(Lti/modules/titanium/map/ViewProxy;)V
    .locals 1
    .parameter "viewProxy"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/map/AnnotationProxy;->viewProxy:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method
