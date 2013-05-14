.class public Lti/modules/titanium/map/ViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ViewProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field private static final MSG_ADD_ROUTE:I = 0x4ed

.field private static final MSG_FIRST_ID:I = 0x4bb

.field private static final MSG_REMOVE_ROUTE:I = 0x4ee

.field private static final TAG:Ljava/lang/String; = "TiMapViewProxy"

.field private static lam:Landroid/app/LocalActivityManager;

.field private static mapWindow:Landroid/view/Window;

.field private static rootLifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# instance fields
.field private annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/AnnotationProxy;",
            ">;"
        }
    .end annotation
.end field

.field private destroyed:Z

.field private mapView:Lti/modules/titanium/map/TiMapView;

.field private routes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/MapRoute;",
            ">;"
        }
    .end annotation
.end field

.field private selectedAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/TiMapView$SelectedAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/map/ViewProxy;->destroyed:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/map/ViewProxy;->routes:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/map/ViewProxy;->selectedAnnotations:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 78
    invoke-direct {p0}, Lti/modules/titanium/map/ViewProxy;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/map/ViewProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lti/modules/titanium/map/ViewProxy;->destroyMapActivity()V

    return-void
.end method

.method static synthetic access$102(Landroid/app/LocalActivityManager;)Landroid/app/LocalActivityManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    return-object p0
.end method

.method private destroyMapActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 526
    sget-object v0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/map/ViewProxy;->destroyed:Z

    if-nez v0, :cond_0

    .line 527
    iput-boolean v1, p0, Lti/modules/titanium/map/ViewProxy;->destroyed:Z

    .line 528
    sget-object v0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 530
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lti/modules/titanium/map/ViewProxy;->mapWindow:Landroid/view/Window;

    .line 531
    return-void
.end method


# virtual methods
.method public addAnnotation(Lti/modules/titanium/map/AnnotationProxy;)V
    .locals 1
    .parameter "annotation"

    .prologue
    .line 208
    invoke-virtual {p1, p0}, Lti/modules/titanium/map/AnnotationProxy;->setViewProxy(Lti/modules/titanium/map/ViewProxy;)V

    .line 209
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView;->updateAnnotations()V

    .line 213
    :cond_0
    return-void
.end method

.method public addAnnotations(Ljava/lang/Object;)V
    .locals 4
    .parameter "annotations"

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    const-string v2, "TiMapViewProxy"

    const-string v3, "Argument to addAnnotation must be an array"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 303
    .restart local p1
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 304
    .local v0, annotationArray:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 305
    aget-object v2, v0, v1

    instance-of v2, v2, Lti/modules/titanium/map/AnnotationProxy;

    if-eqz v2, :cond_2

    .line 306
    aget-object v2, v0, v1

    check-cast v2, Lti/modules/titanium/map/AnnotationProxy;

    invoke-virtual {v2, p0}, Lti/modules/titanium/map/AnnotationProxy;->setViewProxy(Lti/modules/titanium/map/ViewProxy;)V

    .line 307
    iget-object v3, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    aget-object v2, v0, v1

    check-cast v2, Lti/modules/titanium/map/AnnotationProxy;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    :cond_2
    const-string v2, "TiMapViewProxy"

    const-string v3, "Unable to add annotation, argument is not an AnnotationProxy"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 314
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v2}, Lti/modules/titanium/map/TiMapView;->updateAnnotations()V

    goto :goto_0
.end method

.method public addRoute(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "routeMap"

    .prologue
    .line 246
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lti/modules/titanium/map/ViewProxy;->handleAddRoute(Ljava/util/HashMap;)V

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4ed

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-virtual {p0}, Lti/modules/titanium/map/ViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eq p1, v6, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lti/modules/titanium/map/ViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 90
    :cond_0
    check-cast p1, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local p1
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 92
    const/4 v6, 0x0

    iput-boolean v6, p0, Lti/modules/titanium/map/ViewProxy;->destroyed:Z

    .line 93
    sget-object v6, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    if-nez v6, :cond_2

    .line 101
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v3

    .line 102
    .local v3, rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    if-nez v3, :cond_1

    .line 103
    const-string v6, "TiMapViewProxy"

    const-string v7, "Application\'s root activity has been destroyed.  Unable to create MapView."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v3           #rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    :goto_0
    return-object v5

    .line 115
    .restart local v3       #rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    :cond_1
    new-instance v6, Lti/modules/titanium/map/ViewProxy$1;

    invoke-direct {v6, p0, v3}, Lti/modules/titanium/map/ViewProxy$1;-><init>(Lti/modules/titanium/map/ViewProxy;Lorg/appcelerator/titanium/TiRootActivity;)V

    sput-object v6, Lti/modules/titanium/map/ViewProxy;->rootLifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .line 146
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v6

    sget-object v7, Lti/modules/titanium/map/ViewProxy;->rootLifecycleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/TiRootActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 147
    new-instance v6, Landroid/app/LocalActivityManager;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    sput-object v6, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    .line 148
    sget-object v6, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    invoke-virtual {v6, v5}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 151
    .end local v3           #rootActivity:Lorg/appcelerator/titanium/TiRootActivity;
    :cond_2
    sget-object v5, Lti/modules/titanium/map/ViewProxy;->mapWindow:Landroid/view/Window;

    if-eqz v5, :cond_3

    .line 152
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "MapView already created. Android can support one MapView per Application."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 156
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/map/AnnotationProxy;

    invoke-virtual {v5, p0}, Lti/modules/titanium/map/AnnotationProxy;->setViewProxy(Lti/modules/titanium/map/ViewProxy;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_4
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    .line 160
    .local v4, tiApp:Lorg/appcelerator/titanium/TiApplication;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lti/modules/titanium/map/TiMapActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v1, intent:Landroid/content/Intent;
    sget-object v5, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    const-string v6, "TIMAP"

    invoke-virtual {v5, v6, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v5

    sput-object v5, Lti/modules/titanium/map/ViewProxy;->mapWindow:Landroid/view/Window;

    .line 162
    sget-object v5, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    invoke-virtual {v5}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 163
    new-instance v5, Lti/modules/titanium/map/TiMapView;

    sget-object v6, Lti/modules/titanium/map/ViewProxy;->mapWindow:Landroid/view/Window;

    iget-object v7, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    iget-object v8, p0, Lti/modules/titanium/map/ViewProxy;->selectedAnnotations:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7, v8}, Lti/modules/titanium/map/TiMapView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/Window;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    .line 165
    const-string v5, "location"

    invoke-virtual {p0, v5}, Lti/modules/titanium/map/ViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 166
    .local v2, location:Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 167
    instance-of v5, v2, Ljava/util/HashMap;

    if-eqz v5, :cond_6

    .line 168
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    check-cast v2, Ljava/util/HashMap;

    .end local v2           #location:Ljava/lang/Object;
    invoke-virtual {v5, v2}, Lti/modules/titanium/map/TiMapView;->doSetLocation(Ljava/util/HashMap;)V

    .line 174
    :cond_5
    :goto_2
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v5}, Lti/modules/titanium/map/TiMapView;->updateAnnotations()V

    .line 175
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v5}, Lti/modules/titanium/map/TiMapView;->updateRoute()V

    .line 177
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    goto/16 :goto_0

    .line 170
    .restart local v2       #location:Ljava/lang/Object;
    :cond_6
    const-string v5, "TiMapViewProxy"

    const-string v6, "Location is set, but the structure is not correct"

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public deselectAnnotation([Ljava/lang/Object;)V
    .locals 8
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 437
    .local v3, selectedAnnotation:Lti/modules/titanium/map/AnnotationProxy;
    array-length v0, p1

    if-lez v0, :cond_0

    .line 438
    aget-object v0, p1, v1

    instance-of v0, v0, Lti/modules/titanium/map/AnnotationProxy;

    if-eqz v0, :cond_3

    .line 439
    aget-object v3, p1, v1

    .end local v3           #selectedAnnotation:Lti/modules/titanium/map/AnnotationProxy;
    check-cast v3, Lti/modules/titanium/map/AnnotationProxy;

    .line 440
    .restart local v3       #selectedAnnotation:Lti/modules/titanium/map/AnnotationProxy;
    const-string v0, "title"

    invoke-virtual {v3, v0}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 445
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 446
    const/4 v4, 0x0

    .line 448
    .local v4, animate:Z
    array-length v0, p1

    if-le v0, v5, :cond_1

    .line 449
    aget-object v0, p1, v5

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    .line 452
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-nez v0, :cond_4

    .line 453
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->selectedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 454
    .local v7, numSelectedAnnotations:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 455
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->selectedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;

    iget-object v0, v0, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->selectedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 454
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 441
    .end local v4           #animate:Z
    .end local v6           #i:I
    .end local v7           #numSelectedAnnotations:I
    :cond_3
    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 442
    aget-object v0, p1, v1

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 460
    .restart local v4       #animate:Z
    :cond_4
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lti/modules/titanium/map/TiMapView;->selectAnnotation(ZLjava/lang/String;Lti/modules/titanium/map/AnnotationProxy;ZZ)V

    .line 463
    .end local v4           #animate:Z
    :cond_5
    return-void
.end method

.method protected findAnnotation(Ljava/lang/String;Lti/modules/titanium/map/AnnotationProxy;)I
    .locals 7
    .parameter "title"
    .parameter "annotation"

    .prologue
    const/4 v6, -0x1

    .line 321
    const/4 v1, -0x1

    .line 323
    .local v1, existsIndex:I
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 325
    .local v3, len:I
    if-eqz p2, :cond_0

    .line 326
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    if-ne v1, v6, :cond_0

    .line 327
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p2, v5, :cond_2

    .line 328
    move v1, v2

    .line 334
    .end local v2           #i:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v3, :cond_1

    if-ne v1, v6, :cond_1

    .line 335
    iget-object v5, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/map/AnnotationProxy;

    .line 336
    .local v0, a:Lti/modules/titanium/map/AnnotationProxy;
    const-string v5, "title"

    invoke-virtual {v0, v5}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 338
    .local v4, t:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 339
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 340
    move v1, v2

    .line 346
    .end local v0           #a:Lti/modules/titanium/map/AnnotationProxy;
    .end local v4           #t:Ljava/lang/String;
    :cond_1
    return v1

    .line 326
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .restart local v0       #a:Lti/modules/titanium/map/AnnotationProxy;
    .restart local v4       #t:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getLatitudeDelta()D
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView;->getLatitudeDelta()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeDelta()D
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView;->getLongitudeDelta()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMapRoutes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/MapRoute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->routes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMapView()Lti/modules/titanium/map/TiMapView;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    return-object v0
.end method

.method protected handleAddRoute(Ljava/util/HashMap;)V
    .locals 11
    .parameter "routeMap"

    .prologue
    .line 217
    const-string v7, "points"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 218
    .local v4, routeArray:Ljava/lang/Object;
    instance-of v7, v4, [Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 219
    check-cast v4, [Ljava/lang/Object;

    .end local v4           #routeArray:Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    .line 220
    .local v5, routes:[Ljava/lang/Object;
    array-length v7, v5

    new-array v3, v7, [Lti/modules/titanium/map/MapPoint;

    .line 221
    .local v3, pointsType:[Lti/modules/titanium/map/MapPoint;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_1

    .line 223
    aget-object v7, v5, v0

    instance-of v7, v7, Ljava/util/HashMap;

    if-eqz v7, :cond_0

    .line 224
    aget-object v6, v5, v0

    check-cast v6, Ljava/util/HashMap;

    .line 225
    .local v6, tempRoute:Ljava/util/HashMap;
    new-instance v1, Lti/modules/titanium/map/MapPoint;

    const-string v7, "latitude"

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-static {v6, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v9

    invoke-direct {v1, v7, v8, v9, v10}, Lti/modules/titanium/map/MapPoint;-><init>(DD)V

    .line 227
    .local v1, mp:Lti/modules/titanium/map/MapPoint;
    aput-object v1, v3, v0

    .line 221
    .end local v1           #mp:Lti/modules/titanium/map/MapPoint;
    .end local v6           #tempRoute:Ljava/util/HashMap;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    new-instance v2, Lti/modules/titanium/map/MapRoute;

    const-string v7, "color"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    const-string v8, "width"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    const-string v9, "name"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v3, v7, v8, v9}, Lti/modules/titanium/map/MapRoute;-><init>([Lti/modules/titanium/map/MapPoint;IILjava/lang/String;)V

    .line 234
    .local v2, mr:Lti/modules/titanium/map/MapRoute;
    iget-object v7, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-nez v7, :cond_3

    .line 235
    iget-object v7, p0, Lti/modules/titanium/map/ViewProxy;->routes:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v0           #i:I
    .end local v2           #mr:Lti/modules/titanium/map/MapRoute;
    .end local v3           #pointsType:[Lti/modules/titanium/map/MapPoint;
    .end local v5           #routes:[Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void

    .line 237
    .restart local v0       #i:I
    .restart local v2       #mr:Lti/modules/titanium/map/MapRoute;
    .restart local v3       #pointsType:[Lti/modules/titanium/map/MapPoint;
    .restart local v5       #routes:[Ljava/lang/Object;
    :cond_3
    iget-object v7, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v7, v2}, Lti/modules/titanium/map/TiMapView;->addRoute(Lti/modules/titanium/map/MapRoute;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 536
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 546
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 538
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/ViewProxy;->handleAddRoute(Ljava/util/HashMap;)V

    move v0, v1

    .line 539
    goto :goto_0

    .line 542
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/ViewProxy;->handleRemoveRoute(Ljava/util/HashMap;)V

    move v0, v1

    .line 543
    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x4ed
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleRemoveRoute(Ljava/util/HashMap;)V
    .locals 5
    .parameter "route"

    .prologue
    .line 262
    const-string v4, "name"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 263
    .local v3, routeName:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 264
    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 266
    .local v1, mr:Lti/modules/titanium/map/MapRoute;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/map/ViewProxy;->routes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 267
    iget-object v4, p0, Lti/modules/titanium/map/ViewProxy;->routes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mr:Lti/modules/titanium/map/MapRoute;
    check-cast v1, Lti/modules/titanium/map/MapRoute;

    .line 268
    .restart local v1       #mr:Lti/modules/titanium/map/MapRoute;
    invoke-virtual {v1}, Lti/modules/titanium/map/MapRoute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 274
    :cond_0
    if-eqz v1, :cond_1

    .line 275
    iget-object v4, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-nez v4, :cond_3

    .line 276
    iget-object v4, p0, Lti/modules/titanium/map/ViewProxy;->routes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    .end local v0           #i:I
    .end local v1           #mr:Lti/modules/titanium/map/MapRoute;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 266
    .restart local v0       #i:I
    .restart local v1       #mr:Lti/modules/titanium/map/MapRoute;
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_3
    iget-object v4, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v4, v1}, Lti/modules/titanium/map/TiMapView;->removeRoute(Lti/modules/titanium/map/MapRoute;)V

    goto :goto_1
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 489
    invoke-direct {p0}, Lti/modules/titanium/map/ViewProxy;->destroyMapActivity()V

    .line 490
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 494
    sget-object v0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    if-eqz v0, :cond_0

    .line 495
    sget-object v0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 497
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 501
    sget-object v0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 504
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 508
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 512
    sget-object v0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lti/modules/titanium/map/ViewProxy;->lam:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 515
    :cond_0
    return-void
.end method

.method public releaseViews()V
    .locals 1

    .prologue
    .line 520
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/ViewProxy;->onDestroy(Landroid/app/Activity;)V

    .line 522
    return-void
.end method

.method public removeAllAnnotations()V
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/map/AnnotationProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/map/AnnotationProxy;->setViewProxy(Lti/modules/titanium/map/ViewProxy;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v1, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v1}, Lti/modules/titanium/map/TiMapView;->updateAnnotations()V

    .line 203
    :cond_1
    return-void
.end method

.method public removeAnnotation(Ljava/lang/Object;)V
    .locals 5
    .parameter "arg"

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 354
    .local v0, annotation:Lti/modules/titanium/map/AnnotationProxy;
    if-eqz p1, :cond_1

    .line 355
    instance-of v3, p1, Lti/modules/titanium/map/AnnotationProxy;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 356
    check-cast v0, Lti/modules/titanium/map/AnnotationProxy;

    .line 357
    const-string v3, "title"

    invoke-virtual {v0, v3}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 362
    :goto_0
    if-eqz v2, :cond_1

    .line 363
    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/map/ViewProxy;->findAnnotation(Ljava/lang/String;Lti/modules/titanium/map/AnnotationProxy;)I

    move-result v1

    .line 364
    .local v1, existsIndex:I
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 365
    iget-object v3, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/map/AnnotationProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lti/modules/titanium/map/AnnotationProxy;->setViewProxy(Lti/modules/titanium/map/ViewProxy;)V

    .line 366
    iget-object v3, p0, Lti/modules/titanium/map/ViewProxy;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 369
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-eqz v3, :cond_1

    .line 370
    iget-object v3, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v3}, Lti/modules/titanium/map/TiMapView;->updateAnnotations()V

    .line 374
    .end local v1           #existsIndex:I
    :cond_1
    return-void

    .line 359
    :cond_2
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public removeRoute(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "route"

    .prologue
    .line 287
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lti/modules/titanium/map/ViewProxy;->handleRemoveRoute(Ljava/util/HashMap;)V

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/map/ViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4ee

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public selectAnnotation([Ljava/lang/Object;)V
    .locals 12
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 379
    const/4 v3, 0x0

    .line 380
    .local v3, selAnnotation:Lti/modules/titanium/map/AnnotationProxy;
    const/4 v2, 0x0

    .line 381
    .local v2, title:Ljava/lang/String;
    const/4 v4, 0x0

    .line 382
    .local v4, animate:Z
    const/4 v5, 0x1

    .line 384
    .local v5, center:Z
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 385
    aget-object v0, p1, v10

    instance-of v0, v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 386
    aget-object v8, p1, v10

    check-cast v8, Ljava/util/HashMap;

    .line 388
    .local v8, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "annotation"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 389
    .local v9, selectedAnnotation:Ljava/lang/Object;
    instance-of v0, v9, Lti/modules/titanium/map/AnnotationProxy;

    if-eqz v0, :cond_3

    move-object v3, v9

    .line 390
    check-cast v3, Lti/modules/titanium/map/AnnotationProxy;

    .line 391
    const-string v0, "title"

    invoke-virtual {v3, v0}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 396
    :goto_0
    const-string v0, "animate"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 397
    .local v6, animateProperty:Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    .line 398
    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    .line 401
    :cond_0
    const-string v0, "center"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 402
    .local v7, centerProperty:Ljava/lang/Boolean;
    if-eqz v7, :cond_1

    .line 403
    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 421
    .end local v6           #animateProperty:Ljava/lang/Boolean;
    .end local v7           #centerProperty:Ljava/lang/Boolean;
    .end local v8           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #selectedAnnotation:Ljava/lang/Object;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 422
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-nez v0, :cond_7

    .line 423
    const-string v0, "TiMapViewProxy"

    const-string v1, "calling selectedAnnotations.add"

    const-string v10, "DEBUG_MODE"

    invoke-static {v0, v1, v10}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->selectedAnnotations:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;

    invoke-direct {v1, v2, v3, v4, v5}, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;-><init>(Ljava/lang/String;Lti/modules/titanium/map/AnnotationProxy;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_2
    :goto_2
    return-void

    .line 393
    .restart local v8       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9       #selectedAnnotation:Ljava/lang/Object;
    :cond_3
    const-string v0, "title"

    invoke-static {v8, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 407
    .end local v8           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #selectedAnnotation:Ljava/lang/Object;
    :cond_4
    aget-object v0, p1, v10

    instance-of v0, v0, Lti/modules/titanium/map/AnnotationProxy;

    if-eqz v0, :cond_6

    .line 408
    aget-object v3, p1, v10

    .end local v3           #selAnnotation:Lti/modules/titanium/map/AnnotationProxy;
    check-cast v3, Lti/modules/titanium/map/AnnotationProxy;

    .line 409
    .restart local v3       #selAnnotation:Lti/modules/titanium/map/AnnotationProxy;
    const-string v0, "title"

    invoke-virtual {v3, v0}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 415
    :cond_5
    :goto_3
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 416
    aget-object v0, p1, v1

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 411
    :cond_6
    aget-object v0, p1, v10

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 412
    aget-object v0, p1, v10

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 426
    :cond_7
    const-string v0, "TiMapViewProxy"

    const-string v10, "calling selectedAnnotations.add2"

    const-string v11, "DEBUG_MODE"

    invoke-static {v0, v10, v11}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual/range {v0 .. v5}, Lti/modules/titanium/map/TiMapView;->selectAnnotation(ZLjava/lang/String;Lti/modules/titanium/map/AnnotationProxy;ZZ)V

    goto :goto_2
.end method

.method public setLocation(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 468
    const-string v0, "location"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/map/ViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v0, p1}, Lti/modules/titanium/map/TiMapView;->doSetLocation(Ljava/util/HashMap;)V

    .line 473
    :cond_0
    return-void
.end method

.method public zoom(I)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 188
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy;->mapView:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v0, p1}, Lti/modules/titanium/map/TiMapView;->changeZoomLevel(I)V

    .line 191
    :cond_0
    return-void
.end method
