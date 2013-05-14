.class public Lti/modules/titanium/map/TiMapView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiMapView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lti/modules/titanium/map/TitaniumOverlayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/map/TiMapView$SelectedAnnotation;,
        Lti/modules/titanium/map/TiMapView$TitaniumOverlay;,
        Lti/modules/titanium/map/TiMapView$LocalMapView;
    }
.end annotation


# static fields
.field private static final DEVELOPMENT_API_KEY:Ljava/lang/String; = "ti.android.google.map.api.key.development"

.field public static final MAP_VIEW_HYBRID:I = 0x3

.field public static final MAP_VIEW_SATELLITE:I = 0x2

.field public static final MAP_VIEW_STANDARD:I = 0x1

.field private static final MSG_CHANGE_ZOOM:I = 0x132

.field private static final MSG_EVENT_LONG_PRESS:I = 0x135

.field private static final MSG_SELECT_ANNOTATION:I = 0x133

.field private static final MSG_SET_ANIMATE:I = 0x12f

.field private static final MSG_SET_LOCATION:I = 0x12c

.field private static final MSG_SET_MAPTYPE:I = 0x12d

.field private static final MSG_SET_REGIONFIT:I = 0x12e

.field private static final MSG_SET_SCROLLENABLED:I = 0x131

.field private static final MSG_SET_USERLOCATION:I = 0x130

.field private static final MSG_UPDATE_ANNOTATIONS:I = 0x134

.field private static final OLD_API_KEY:Ljava/lang/String; = "ti.android.google.map.api.key"

.field private static final PRODUCTION_API_KEY:Ljava/lang/String; = "ti.android.google.map.api.key.production"

.field private static final TAG:Ljava/lang/String; = "TiMapView"

.field private static final TI_DEVELOPMENT_KEY:Ljava/lang/String; = "0ZnKXkWA2dIAu2EM-OV4ZD2lJY3sEWE5TSgjJNg"


# instance fields
.field private animate:Z

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

.field private handler:Landroid/os/Handler;

.field private itemView:Lti/modules/titanium/map/TiOverlayItemView;

.field private mapWindow:Landroid/view/Window;

.field private myLocation:Lcom/google/android/maps/MyLocationOverlay;

.field private overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

.field private regionFit:Z

.field private scrollEnabled:Z

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

.field private userLocation:Z

.field private view:Lti/modules/titanium/map/TiMapView$LocalMapView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/Window;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "proxy"
    .parameter "mapWindow"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            "Landroid/view/Window;",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/AnnotationProxy;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/TiMapView$SelectedAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p3, annotations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/AnnotationProxy;>;"
    .local p4, selectedAnnotations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/TiMapView$SelectedAnnotation;>;"
    invoke-direct/range {p0 .. p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 441
    move-object/from16 v0, p2

    iput-object v0, p0, Lti/modules/titanium/map/TiMapView;->mapWindow:Landroid/view/Window;

    .line 442
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v11, p0, Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;

    .line 444
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/TiMapView;->filterAnnotations(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lti/modules/titanium/map/TiMapView;->annotations:Ljava/util/ArrayList;

    .line 445
    move-object/from16 v0, p4

    iput-object v0, p0, Lti/modules/titanium/map/TiMapView;->selectedAnnotations:Ljava/util/ArrayList;

    .line 447
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 448
    .local v2, app:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v10

    .line 449
    .local v10, systemProperties:Lorg/appcelerator/titanium/TiProperties;
    const-string v11, "ti.android.google.map.api.key"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, oldKey:Ljava/lang/String;
    const-string v11, "ti.android.google.map.api.key.development"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, developmentKey:Ljava/lang/String;
    const-string v11, "ti.android.google.map.api.key.production"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 454
    .local v9, productionKey:Ljava/lang/String;
    const-string v3, ""

    .line 455
    .local v3, devKeySourceInfo:Ljava/lang/String;
    const-string v8, ""

    .line 457
    .local v8, prodKeySourceInfo:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 458
    const-string v3, "application property \'ti.android.google.map.api.key.development\'"

    .line 469
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 470
    const-string v8, "application property \'ti.android.google.map.api.key.production\'"

    .line 477
    :goto_1
    move-object v1, v4

    .line 478
    .local v1, apiKey:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "production"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 479
    move-object v1, v9

    .line 480
    const-string v11, "TiMapView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Production mode using map api key ending with \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0xa

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' retrieved from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_2
    new-instance v11, Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, p0, v12, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;-><init>(Lti/modules/titanium/map/TiMapView;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v11, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lti/modules/titanium/map/TiMapActivity;

    .line 497
    .local v6, ma:Lti/modules/titanium/map/TiMapActivity;
    new-instance v11, Lti/modules/titanium/map/TiMapView$1;

    invoke-direct {v11, p0}, Lti/modules/titanium/map/TiMapView$1;-><init>(Lti/modules/titanium/map/TiMapView;)V

    invoke-virtual {v6, v11}, Lti/modules/titanium/map/TiMapActivity;->setLifecycleListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 518
    iget-object v11, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setBuiltInZoomControls(Z)V

    .line 519
    iget-object v11, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setScrollable(Z)V

    .line 520
    iget-object v11, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setClickable(Z)V

    .line 522
    iget-object v11, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {p0, v11}, Lti/modules/titanium/map/TiMapView;->setNativeView(Landroid/view/View;)V

    .line 524
    const/4 v11, 0x1

    iput-boolean v11, p0, Lti/modules/titanium/map/TiMapView;->regionFit:Z

    .line 525
    const/4 v11, 0x0

    iput-boolean v11, p0, Lti/modules/titanium/map/TiMapView;->animate:Z

    .line 527
    move-object/from16 v5, p1

    .line 529
    .local v5, fproxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    new-instance v11, Lti/modules/titanium/map/TiOverlayItemView;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v12

    invoke-virtual {v12}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lti/modules/titanium/map/TiOverlayItemView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    .line 530
    iget-object v11, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    new-instance v12, Lti/modules/titanium/map/TiMapView$2;

    invoke-direct {v12, p0, v5}, Lti/modules/titanium/map/TiMapView$2;-><init>(Lti/modules/titanium/map/TiMapView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v11, v12}, Lti/modules/titanium/map/TiOverlayItemView;->setOnOverlayClickedListener(Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;)V

    .line 545
    return-void

    .line 460
    .end local v1           #apiKey:Ljava/lang/String;
    .end local v5           #fproxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v6           #ma:Lti/modules/titanium/map/TiMapActivity;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 461
    move-object v4, v7

    .line 462
    const-string v3, "application property \'ti.android.google.map.api.key\'"

    goto/16 :goto_0

    .line 465
    :cond_1
    const-string v4, "0ZnKXkWA2dIAu2EM-OV4ZD2lJY3sEWE5TSgjJNg"

    .line 466
    const-string v3, "(Source Code)"

    goto/16 :goto_0

    .line 473
    :cond_2
    move-object v9, v4

    .line 474
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (fallback)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 487
    .restart local v1       #apiKey:Ljava/lang/String;
    :cond_3
    const-string v11, "TiMapView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Development mode using map api key ending with \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0xa

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' retrieved from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/map/TiMapView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1100(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1200(Lti/modules/titanium/map/TiMapView;)Lcom/google/android/maps/MyLocationOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$1300(Lti/modules/titanium/map/TiMapView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lti/modules/titanium/map/TiMapView;->userLocation:Z

    return v0
.end method

.method static synthetic access$1400(Lti/modules/titanium/map/TiMapView;)Lti/modules/titanium/map/TiMapView$TitaniumOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/map/TiMapView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lti/modules/titanium/map/TiMapView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/map/TiMapView;I)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/map/TiMapView;D)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/map/TiMapView;->scaleToGoogle(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lti/modules/titanium/map/TiMapView;Lorg/appcelerator/titanium/TiBlob;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lti/modules/titanium/map/TiMapView;->makeMarker(Lorg/appcelerator/titanium/TiBlob;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/map/TiMapView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lti/modules/titanium/map/TiMapView;->makeMarker(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lti/modules/titanium/map/TiMapView;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lti/modules/titanium/map/TiMapView;->makeMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private annotationProxyForObject(Ljava/lang/Object;)Lti/modules/titanium/map/AnnotationProxy;
    .locals 4
    .parameter "ann"

    .prologue
    .line 824
    if-nez p1, :cond_1

    .line 825
    const-string v2, "TiMapView"

    const-string v3, "Unable to create annotation proxy for null object passed in."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x0

    .line 854
    .end local p1
    :cond_0
    :goto_0
    return-object v0

    .line 828
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    .line 829
    .local v0, annProxy:Lti/modules/titanium/map/AnnotationProxy;
    instance-of v2, p1, Lti/modules/titanium/map/AnnotationProxy;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 830
    check-cast v0, Lti/modules/titanium/map/AnnotationProxy;

    .line 831
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/modules/titanium/map/ViewProxy;

    invoke-virtual {v0, v2}, Lti/modules/titanium/map/AnnotationProxy;->setViewProxy(Lti/modules/titanium/map/ViewProxy;)V

    .line 850
    .end local p1
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 851
    const-string v2, "TiMapView"

    const-string v3, "Unable to create annotation proxy for object, likely an error in the type of the object passed in..."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 834
    .restart local p1
    :cond_3
    const/4 v1, 0x0

    .line 835
    .local v1, annotationDict:Lorg/appcelerator/kroll/KrollDict;
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 836
    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 841
    .end local p1
    :cond_4
    :goto_2
    if-eqz v1, :cond_2

    .line 842
    new-instance v0, Lti/modules/titanium/map/AnnotationProxy;

    .end local v0           #annProxy:Lti/modules/titanium/map/AnnotationProxy;
    invoke-direct {v0}, Lti/modules/titanium/map/AnnotationProxy;-><init>()V

    .line 843
    .restart local v0       #annProxy:Lti/modules/titanium/map/AnnotationProxy;
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiUrl;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lti/modules/titanium/map/AnnotationProxy;->setCreationUrl(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v0, v1}, Lti/modules/titanium/map/AnnotationProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 845
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lti/modules/titanium/map/AnnotationProxy;->setActivity(Landroid/app/Activity;)V

    .line 846
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/modules/titanium/map/ViewProxy;

    invoke-virtual {v0, v2}, Lti/modules/titanium/map/AnnotationProxy;->setViewProxy(Lti/modules/titanium/map/ViewProxy;)V

    goto :goto_1

    .line 837
    .restart local p1
    :cond_5
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 838
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1           #annotationDict:Lorg/appcelerator/kroll/KrollDict;
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-direct {v1, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .restart local v1       #annotationDict:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_2
.end method

.method private getView()Lti/modules/titanium/map/TiMapView$LocalMapView;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    return-object v0
.end method

.method private hideAnnotation()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->removeView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiOverlayItemView;->clearLastIndex()V

    .line 623
    :cond_0
    return-void
.end method

.method private makeMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 1084
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 1085
    .local v1, s:Landroid/graphics/drawable/shapes/OvalShape;
    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 1086
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1087
    .local v0, d:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 1088
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1090
    return-object v0
.end method

.method private makeMarker(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "pinImage"

    .prologue
    const/4 v4, 0x0

    .line 1095
    if-eqz p1, :cond_1

    .line 1096
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v2, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v1

    .line 1097
    .local v1, drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1098
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1105
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :goto_0
    return-object v0

    .line 1102
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_0
    const-string v2, "TiMapView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create Drawable from path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMarker(Lorg/appcelerator/titanium/TiBlob;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pinImage"

    .prologue
    const/4 v3, 0x0

    .line 1110
    if-nez p1, :cond_0

    .line 1111
    const/4 v0, 0x0

    .line 1116
    :goto_0
    return-object v0

    .line 1113
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->mapWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1115
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private scaleFromGoogle(I)D
    .locals 4
    .parameter "value"

    .prologue
    .line 1121
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private scaleToGoogle(D)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1126
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    double-to-int v0, v0

    return v0
.end method

.method private showAnnotation(ILti/modules/titanium/map/TiOverlayItem;)V
    .locals 8
    .parameter "index"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x2

    .line 627
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 628
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v2, p1, p2}, Lti/modules/titanium/map/TiOverlayItemView;->setItem(ILti/modules/titanium/map/TiOverlayItem;)V

    .line 630
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lti/modules/titanium/map/TiOverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 631
    .local v7, marker:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 632
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    invoke-virtual {v2}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->getDefaultMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 634
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/lit8 v5, v2, -0x1

    .line 635
    .local v5, y:I
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    const/16 v6, 0x51

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;III)V

    .line 637
    .local v0, params:Lcom/google/android/maps/MapView$LayoutParams;
    iput v4, v0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    .line 639
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v1, v2}, Lti/modules/titanium/map/TiMapView$LocalMapView;->requestViewOnScreen(Landroid/view/View;)V

    .line 640
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    .end local v0           #params:Lcom/google/android/maps/MapView$LayoutParams;
    .end local v5           #y:I
    .end local v7           #marker:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method


# virtual methods
.method public addAnnotations([Ljava/lang/Object;)V
    .locals 3
    .parameter "annotations"

    .prologue
    .line 645
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 646
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lti/modules/titanium/map/TiMapView;->annotationProxyForObject(Ljava/lang/Object;)Lti/modules/titanium/map/AnnotationProxy;

    move-result-object v0

    .line 647
    .local v0, ap:Lti/modules/titanium/map/AnnotationProxy;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/TiMapView;->isAnnotationValid(Lti/modules/titanium/map/AnnotationProxy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    .end local v0           #ap:Lti/modules/titanium/map/AnnotationProxy;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->annotations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lti/modules/titanium/map/TiMapView;->doSetAnnotations(Ljava/util/ArrayList;)V

    .line 652
    return-void
.end method

.method public addRoute(Lti/modules/titanium/map/MapRoute;)V
    .locals 8
    .parameter "mr"

    .prologue
    .line 662
    invoke-virtual {p1}, Lti/modules/titanium/map/MapRoute;->getName()Ljava/lang/String;

    move-result-object v4

    .line 663
    .local v4, rname:Ljava/lang/String;
    iget-object v7, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v7, Lti/modules/titanium/map/ViewProxy;

    invoke-virtual {v7}, Lti/modules/titanium/map/ViewProxy;->getMapRoutes()Ljava/util/ArrayList;

    move-result-object v6

    .line 664
    .local v6, routes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/MapRoute;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 665
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lti/modules/titanium/map/MapRoute;

    invoke-virtual {v7}, Lti/modules/titanium/map/MapRoute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 678
    :cond_0
    return-void

    .line 664
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_2
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-virtual {p1}, Lti/modules/titanium/map/MapRoute;->getRoutes()Ljava/util/ArrayList;

    move-result-object v2

    .line 671
    .local v2, o:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/MapRoute$RouteOverlay;>;"
    iget-object v7, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v7}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    .line 672
    .local v3, overlaysList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 673
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/map/MapRoute$RouteOverlay;

    .line 674
    .local v5, ro:Lti/modules/titanium/map/MapRoute$RouteOverlay;
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 675
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected allowRegisterForTouch()Z
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    return v0
.end method

.method public changeZoomLevel(I)V
    .locals 3
    .parameter "delta"

    .prologue
    .line 1069
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;

    const/16 v1, 0x132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1070
    return-void
.end method

.method public doSelectAnnotation(ZLjava/lang/String;Lti/modules/titanium/map/AnnotationProxy;ZZ)V
    .locals 5
    .parameter "select"
    .parameter "title"
    .parameter "annotation"
    .parameter "animate"
    .parameter "center"

    .prologue
    .line 1000
    if-eqz p2, :cond_0

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->annotations:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    if-eqz v3, :cond_0

    .line 1001
    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v3, Lti/modules/titanium/map/ViewProxy;

    invoke-virtual {v3, p2, p3}, Lti/modules/titanium/map/ViewProxy;->findAnnotation(Ljava/lang/String;Lti/modules/titanium/map/AnnotationProxy;)I

    move-result v1

    .line 1002
    .local v1, index:I
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 1003
    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    if-eqz v3, :cond_0

    .line 1004
    iget-object v4, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    monitor-enter v4

    .line 1005
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    invoke-virtual {v3, v1}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/map/TiOverlayItem;

    .line 1007
    .local v2, item:Lti/modules/titanium/map/TiOverlayItem;
    if-eqz p1, :cond_4

    .line 1008
    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v3}, Lti/modules/titanium/map/TiOverlayItemView;->getLastIndex()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v3}, Lti/modules/titanium/map/TiOverlayItemView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1009
    invoke-direct {p0, v1, v2}, Lti/modules/titanium/map/TiMapView;->showAnnotation(ILti/modules/titanium/map/TiOverlayItem;)V

    .line 1010
    monitor-exit v4

    .line 1032
    .end local v1           #index:I
    .end local v2           #item:Lti/modules/titanium/map/TiOverlayItem;
    :cond_0
    :goto_0
    return-void

    .line 1013
    .restart local v1       #index:I
    .restart local v2       #item:Lti/modules/titanium/map/TiOverlayItem;
    :cond_1
    invoke-direct {p0}, Lti/modules/titanium/map/TiMapView;->hideAnnotation()V

    .line 1015
    if-eqz p5, :cond_2

    .line 1016
    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v3}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    .line 1017
    .local v0, controller:Lcom/google/android/maps/MapController;
    if-eqz p4, :cond_3

    .line 1018
    invoke-virtual {v2}, Lti/modules/titanium/map/TiOverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 1023
    .end local v0           #controller:Lcom/google/android/maps/MapController;
    :cond_2
    :goto_1
    invoke-direct {p0, v1, v2}, Lti/modules/titanium/map/TiMapView;->showAnnotation(ILti/modules/titanium/map/TiOverlayItem;)V

    .line 1028
    :goto_2
    monitor-exit v4

    goto :goto_0

    .end local v2           #item:Lti/modules/titanium/map/TiOverlayItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1020
    .restart local v0       #controller:Lcom/google/android/maps/MapController;
    .restart local v2       #item:Lti/modules/titanium/map/TiOverlayItem;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lti/modules/titanium/map/TiOverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_1

    .line 1026
    .end local v0           #controller:Lcom/google/android/maps/MapController;
    :cond_4
    invoke-direct {p0}, Lti/modules/titanium/map/TiMapView;->hideAnnotation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public doSetAnnotations(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/AnnotationProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 950
    .local p1, annotations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/AnnotationProxy;>;"
    if-eqz p1, :cond_2

    .line 952
    iput-object p1, p0, Lti/modules/titanium/map/TiMapView;->annotations:Ljava/util/ArrayList;

    .line 953
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getOverlays()Ljava/util/List;

    move-result-object v9

    .line 955
    .local v9, overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    monitor-enter v9

    .line 956
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    invoke-interface {v9, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    .line 961
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 962
    new-instance v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    const v1, -0xffff01

    invoke-direct {p0, v1}, Lti/modules/titanium/map/TiMapView;->makeMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;-><init>(Lti/modules/titanium/map/TiMapView;Landroid/graphics/drawable/Drawable;Lti/modules/titanium/map/TitaniumOverlayListener;)V

    iput-object v0, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    .line 963
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    invoke-virtual {v0, p1}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->setAnnotations(Ljava/util/ArrayList;)V

    .line 964
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->selectedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 967
    .local v8, numSelectedAnnotations:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 968
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->selectedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;

    .line 969
    .local v6, annotation:Lti/modules/titanium/map/TiMapView$SelectedAnnotation;
    const-string v0, "TiMapView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing internal call to selectAnnotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v1, 0x1

    iget-object v2, v6, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->title:Ljava/lang/String;

    iget-object v3, v6, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->selectedAnnotation:Lti/modules/titanium/map/AnnotationProxy;

    iget-boolean v4, v6, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->animate:Z

    iget-boolean v5, v6, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->center:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lti/modules/titanium/map/TiMapView;->selectAnnotation(ZLjava/lang/String;Lti/modules/titanium/map/AnnotationProxy;ZZ)V

    .line 967
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 974
    .end local v6           #annotation:Lti/modules/titanium/map/TiMapView$SelectedAnnotation;
    .end local v7           #i:I
    .end local v8           #numSelectedAnnotations:I
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->invalidate()V

    .line 975
    monitor-exit v9

    .line 977
    .end local v9           #overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_2
    return-void

    .line 975
    .restart local v9       #overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doSetLocation(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p1, location:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lti/modules/titanium/map/TiMapView;->getView()Lti/modules/titanium/map/TiMapView$LocalMapView;

    move-result-object v2

    .line 888
    .local v2, view:Lti/modules/titanium/map/TiMapView$LocalMapView;
    const-string v3, "longitude"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "latitude"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 889
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    const-string v3, "latitude"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lti/modules/titanium/map/TiMapView;->scaleToGoogle(D)I

    move-result v3

    const-string v4, "longitude"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lti/modules/titanium/map/TiMapView;->scaleToGoogle(D)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 890
    .local v1, gp:Lcom/google/android/maps/GeoPoint;
    const/4 v0, 0x0

    .line 891
    .local v0, anim:Z
    const-string v3, "animate"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 892
    const-string v3, "animate"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v0

    .line 894
    :cond_0
    if-eqz v0, :cond_2

    .line 895
    invoke-virtual {v2}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 900
    .end local v0           #anim:Z
    .end local v1           #gp:Lcom/google/android/maps/GeoPoint;
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lti/modules/titanium/map/TiMapView;->regionFit:Z

    if-eqz v3, :cond_3

    const-string v3, "longitudeDelta"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "latitudeDelta"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 901
    invoke-virtual {v2}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    const-string v4, "latitudeDelta"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lti/modules/titanium/map/TiMapView;->scaleToGoogle(D)I

    move-result v4

    const-string v5, "longitudeDelta"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lti/modules/titanium/map/TiMapView;->scaleToGoogle(D)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 905
    :goto_1
    return-void

    .line 897
    .restart local v0       #anim:Z
    .restart local v1       #gp:Lcom/google/android/maps/GeoPoint;
    :cond_2
    invoke-virtual {v2}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0

    .line 903
    .end local v0           #anim:Z
    .end local v1           #gp:Lcom/google/android/maps/GeoPoint;
    :cond_3
    const-string v3, "TiMapView"

    const-string v4, "Span must have longitudeDelta and latitudeDelta"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doSetMapType(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 909
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    if-eqz v0, :cond_0

    .line 910
    packed-switch p1, :pswitch_data_0

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 912
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setSatellite(Z)V

    .line 913
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setTraffic(Z)V

    .line 914
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setStreetView(Z)V

    goto :goto_0

    .line 917
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v2}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setSatellite(Z)V

    .line 918
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setTraffic(Z)V

    .line 919
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setStreetView(Z)V

    goto :goto_0

    .line 922
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setSatellite(Z)V

    .line 923
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setTraffic(Z)V

    .line 924
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0, v2}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setStreetView(Z)V

    goto :goto_0

    .line 910
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public doUpdateAnnotations()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 719
    invoke-direct {p0}, Lti/modules/titanium/map/TiMapView;->hideAnnotation()V

    .line 721
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->annotations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/TiMapView;->doSetAnnotations(Ljava/util/ArrayList;)V

    .line 722
    return-void
.end method

.method public doUserLocation(Z)V
    .locals 4
    .parameter "userLocation"

    .prologue
    .line 1036
    iput-boolean p1, p0, Lti/modules/titanium/map/TiMapView;->userLocation:Z

    .line 1038
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    if-eqz v1, :cond_2

    .line 1039
    if-eqz p1, :cond_3

    .line 1040
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v1, :cond_0

    .line 1041
    new-instance v1, Lcom/google/android/maps/MyLocationOverlay;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    .line 1044
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 1045
    .local v0, overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    monitor-enter v0

    .line 1046
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1047
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 1065
    .end local v0           #overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_2
    :goto_0
    return-void

    .line 1049
    .restart local v0       #overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1054
    .end local v0           #overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_2

    .line 1055
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v1}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 1056
    .restart local v0       #overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    monitor-enter v0

    .line 1057
    :try_start_2
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1058
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1060
    :cond_4
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 1061
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected filterAnnotations(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/AnnotationProxy;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/AnnotationProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    .local p1, annotations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/AnnotationProxy;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 941
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/map/AnnotationProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/map/TiMapView;->isAnnotationValid(Lti/modules/titanium/map/AnnotationProxy;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 942
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 940
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_1
    return-object p1
.end method

.method public getLatitudeDelta()D
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getLatitudeSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeDelta()D
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getLongitudeSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 554
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    move v8, v0

    .line 614
    :cond_0
    :goto_0
    return v8

    .line 556
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "longpress"

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v9, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/TiMapView;->doSetLocation(Ljava/util/HashMap;)V

    goto :goto_0

    .line 567
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/TiMapView;->doSetMapType(I)V

    goto :goto_0

    .line 572
    :pswitch_3
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v8, :cond_1

    move v0, v8

    :cond_1
    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView;->regionFit:Z

    goto :goto_0

    .line 576
    :pswitch_4
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v8, :cond_2

    move v0, v8

    :cond_2
    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView;->animate:Z

    goto :goto_0

    .line 580
    :pswitch_5
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v8, :cond_3

    move v0, v8

    :cond_3
    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView;->animate:Z

    .line 581
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    iget-boolean v9, p0, Lti/modules/titanium/map/TiMapView;->scrollEnabled:Z

    invoke-virtual {v0, v9}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setScrollable(Z)V

    goto :goto_0

    .line 587
    :pswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v8, :cond_4

    move v0, v8

    :cond_4
    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView;->userLocation:Z

    .line 588
    iget-boolean v0, p0, Lti/modules/titanium/map/TiMapView;->userLocation:Z

    invoke-virtual {p0, v0}, Lti/modules/titanium/map/TiMapView;->doUserLocation(Z)V

    goto :goto_0

    .line 592
    :pswitch_7
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v7

    .line 593
    .local v7, mc:Lcom/google/android/maps/MapController;
    if-eqz v7, :cond_0

    .line 594
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getZoomLevel()I

    move-result v0

    iget v9, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v0, v9

    invoke-virtual {v7, v0}, Lcom/google/android/maps/MapController;->setZoom(I)I

    goto :goto_0

    .line 599
    .end local v7           #mc:Lcom/google/android/maps/MapController;
    :pswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/KrollDict;

    .line 601
    .local v6, args:Lorg/appcelerator/kroll/KrollDict;
    const-string v9, "select"

    invoke-virtual {v6, v9, v0}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 602
    .local v1, select:Z
    const-string v9, "title"

    invoke-virtual {v6, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, title:Ljava/lang/String;
    const-string v9, "animate"

    invoke-virtual {v6, v9, v0}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 604
    .local v4, animate:Z
    const-string v0, "center"

    invoke-virtual {v6, v0, v8}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 605
    .local v5, center:Z
    const-string v0, "annotation"

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/map/AnnotationProxy;

    .local v3, annotation:Lti/modules/titanium/map/AnnotationProxy;
    move-object v0, p0

    .line 606
    invoke-virtual/range {v0 .. v5}, Lti/modules/titanium/map/TiMapView;->doSelectAnnotation(ZLjava/lang/String;Lti/modules/titanium/map/AnnotationProxy;ZZ)V

    goto/16 :goto_0

    .line 610
    .end local v1           #select:Z
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #annotation:Lti/modules/titanium/map/AnnotationProxy;
    .end local v4           #animate:Z
    .end local v5           #center:Z
    .end local v6           #args:Lorg/appcelerator/kroll/KrollDict;
    :pswitch_9
    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView;->doUpdateAnnotations()V

    goto/16 :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method protected isAnnotationValid(Lti/modules/titanium/map/AnnotationProxy;)Z
    .locals 1
    .parameter "annotation"

    .prologue
    .line 932
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const/4 v0, 0x1

    .line 935
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTap(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 726
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    if-eqz v2, :cond_1

    .line 727
    iget-object v3, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    monitor-enter v3

    .line 728
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    invoke-virtual {v2, p1}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/map/TiOverlayItem;

    .line 732
    .local v0, item:Lti/modules/titanium/map/TiOverlayItem;
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    const-string v4, "pin"

    invoke-virtual {v2, p1, v4}, Lti/modules/titanium/map/TiOverlayItemView;->fireClickEvent(ILjava/lang/String;)V

    .line 736
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v2}, Lti/modules/titanium/map/TiOverlayItemView;->getLastIndex()I

    move-result v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v2}, Lti/modules/titanium/map/TiOverlayItemView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 737
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "hideAnnotationWhenTouchMap"

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 738
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 739
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/map/TiMapView;->hideAnnotation()V

    .line 740
    monitor-exit v3

    .line 753
    .end local v0           #item:Lti/modules/titanium/map/TiOverlayItem;
    .end local v1           #value:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 744
    .restart local v0       #item:Lti/modules/titanium/map/TiOverlayItem;
    :cond_2
    invoke-virtual {v0}, Lti/modules/titanium/map/TiOverlayItem;->hasData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 745
    invoke-direct {p0}, Lti/modules/titanium/map/TiMapView;->hideAnnotation()V

    .line 746
    invoke-direct {p0, p1, v0}, Lti/modules/titanium/map/TiMapView;->showAnnotation(ILti/modules/titanium/map/TiOverlayItem;)V

    .line 751
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #item:Lti/modules/titanium/map/TiOverlayItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 749
    .restart local v0       #item:Lti/modules/titanium/map/TiOverlayItem;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "No information for location"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)V
    .locals 9
    .parameter "p"
    .parameter "mapView"

    .prologue
    const/4 v8, -0x1

    .line 759
    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "hideAnnotationWhenTouchMap"

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 760
    .local v5, value:Ljava/lang/Object;
    if-eqz v5, :cond_0

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 761
    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    iget-object v7, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v6, v7}, Lti/modules/titanium/map/TiMapView$LocalMapView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v6, v8, :cond_0

    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v6}, Lti/modules/titanium/map/TiOverlayItemView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 762
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 763
    .local v3, pointOnTap:Landroid/graphics/Point;
    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v6}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v6

    invoke-interface {v6, p1, v3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 764
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 765
    .local v4, rectItemView:Landroid/graphics/Rect;
    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v6, v4}, Lti/modules/titanium/map/TiOverlayItemView;->getHitRect(Landroid/graphics/Rect;)V

    .line 768
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 787
    .end local v3           #pointOnTap:Landroid/graphics/Point;
    .end local v4           #rectItemView:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 772
    .restart local v3       #pointOnTap:Landroid/graphics/Point;
    .restart local v4       #rectItemView:Landroid/graphics/Rect;
    :cond_1
    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->itemView:Lti/modules/titanium/map/TiOverlayItemView;

    invoke-virtual {v6}, Lti/modules/titanium/map/TiOverlayItemView;->getLastIndex()I

    move-result v2

    .line 773
    .local v2, lastShownItemIndex:I
    if-eq v2, v8, :cond_0

    .line 774
    invoke-direct {p0}, Lti/modules/titanium/map/TiMapView;->hideAnnotation()V

    .line 775
    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    invoke-virtual {v6, v2}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/map/TiOverlayItem;

    .line 776
    .local v1, item:Lti/modules/titanium/map/TiOverlayItem;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 777
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "clicksource"

    const-string v7, "null"

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v6, "title"

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v6, "subtitle"

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v6, "annotation"

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getProxy()Lti/modules/titanium/map/AnnotationProxy;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v6, "latitude"

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v7

    invoke-direct {p0, v7}, Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v6, "longitude"

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v7

    invoke-direct {p0, v7}, Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v6, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "click"

    invoke-virtual {v6, v7, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "d"

    .prologue
    .line 792
    invoke-direct {p0}, Lti/modules/titanium/map/TiMapView;->getView()Lti/modules/titanium/map/TiMapView$LocalMapView;

    move-result-object v1

    .line 793
    .local v1, view:Lti/modules/titanium/map/TiMapView$LocalMapView;
    const-string v2, "mapType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    const-string v2, "mapType"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/map/TiMapView;->doSetMapType(I)V

    .line 796
    :cond_0
    const-string v2, "zoomEnabled"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 797
    const-string v2, "zoomEnabled"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setBuiltInZoomControls(Z)V

    .line 799
    :cond_1
    const-string v2, "scrollEnabled"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    const-string v2, "scrollEnabled"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/map/TiMapView$LocalMapView;->setScrollable(Z)V

    .line 802
    :cond_2
    const-string v2, "region"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 803
    const-string v2, "region"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/map/TiMapView;->doSetLocation(Ljava/util/HashMap;)V

    .line 805
    :cond_3
    const-string v2, "regionFit"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 806
    const-string v2, "regionFit"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lti/modules/titanium/map/TiMapView;->regionFit:Z

    .line 808
    :cond_4
    const-string v2, "animate"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 809
    const-string v2, "animate"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lti/modules/titanium/map/TiMapView;->animate:Z

    .line 811
    :cond_5
    const-string v2, "userLocation"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 812
    const-string v2, "userLocation"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/map/TiMapView;->doUserLocation(Z)V

    .line 814
    :cond_6
    const-string v2, "annotations"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 815
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "annotations"

    const-string v4, "annotations"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 816
    const-string v2, "annotations"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 817
    .local v0, annotations:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/map/TiMapView;->addAnnotations([Ljava/lang/Object;)V

    .line 819
    .end local v0           #annotations:[Ljava/lang/Object;
    :cond_7
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 820
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 860
    const-string v1, "region"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p3, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 861
    check-cast p3, Ljava/util/HashMap;

    .end local p3
    invoke-virtual {p0, p3}, Lti/modules/titanium/map/TiMapView;->doSetLocation(Ljava/util/HashMap;)V

    .line 883
    :goto_0
    return-void

    .line 863
    .restart local p3
    :cond_0
    const-string v1, "regionFit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 864
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/map/TiMapView;->regionFit:Z

    goto :goto_0

    .line 866
    :cond_1
    const-string v1, "userLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 867
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/map/TiMapView;->doUserLocation(Z)V

    goto :goto_0

    .line 869
    :cond_2
    const-string v1, "mapType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 870
    if-nez p3, :cond_3

    .line 871
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lti/modules/titanium/map/TiMapView;->doSetMapType(I)V

    goto :goto_0

    .line 873
    :cond_3
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/map/TiMapView;->doSetMapType(I)V

    goto :goto_0

    .line 876
    :cond_4
    const-string v1, "annotations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, p3, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 877
    check-cast p3, [Ljava/lang/Object;

    .end local p3
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    .line 878
    .local v0, annotations:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/map/TiMapView;->addAnnotations([Ljava/lang/Object;)V

    goto :goto_0

    .line 881
    .end local v0           #annotations:[Ljava/lang/Object;
    .restart local p3
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public removeRoute(Lti/modules/titanium/map/MapRoute;)V
    .locals 8
    .parameter "mr"

    .prologue
    .line 682
    invoke-virtual {p1}, Lti/modules/titanium/map/MapRoute;->getName()Ljava/lang/String;

    move-result-object v5

    .line 683
    .local v5, rname:Ljava/lang/String;
    iget-object v7, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v7, Lti/modules/titanium/map/ViewProxy;

    invoke-virtual {v7}, Lti/modules/titanium/map/ViewProxy;->getMapRoutes()Ljava/util/ArrayList;

    move-result-object v6

    .line 684
    .local v6, routes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/MapRoute;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 685
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/map/MapRoute;

    .line 686
    .local v2, maproute:Lti/modules/titanium/map/MapRoute;
    invoke-virtual {v2}, Lti/modules/titanium/map/MapRoute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 687
    invoke-virtual {v2}, Lti/modules/titanium/map/MapRoute;->getRoutes()Ljava/util/ArrayList;

    move-result-object v3

    .line 688
    .local v3, o:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/MapRoute$RouteOverlay;>;"
    iget-object v7, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v7}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getOverlays()Ljava/util/List;

    move-result-object v4

    .line 689
    .local v4, overlaysList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 690
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 692
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 696
    .end local v1           #j:I
    .end local v2           #maproute:Lti/modules/titanium/map/MapRoute;
    .end local v3           #o:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/MapRoute$RouteOverlay;>;"
    .end local v4           #overlaysList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_1
    return-void

    .line 684
    .restart local v2       #maproute:Lti/modules/titanium/map/MapRoute;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectAnnotation(ZLjava/lang/String;Lti/modules/titanium/map/AnnotationProxy;ZZ)V
    .locals 5
    .parameter "select"
    .parameter "title"
    .parameter "selectedAnnotation"
    .parameter "animate"
    .parameter "center"

    .prologue
    .line 981
    if-eqz p2, :cond_1

    .line 982
    const-string v2, "TiMapView"

    const-string v3, "calling obtainMessage"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 985
    .local v0, args:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "select"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string v2, "title"

    invoke-virtual {v0, v2, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string v2, "animate"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v2, "center"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    if-eqz p3, :cond_0

    .line 990
    const-string v2, "annotation"

    invoke-virtual {v0, v2, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;

    const/16 v3, 0x133

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 993
    .local v1, message:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 994
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 996
    .end local v0           #args:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public updateAnnotations()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;

    const/16 v1, 0x134

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 657
    return-void
.end method

.method public updateRoute()V
    .locals 8

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, i:I
    iget-object v7, p0, Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v7, Lti/modules/titanium/map/ViewProxy;

    invoke-virtual {v7}, Lti/modules/titanium/map/ViewProxy;->getMapRoutes()Ljava/util/ArrayList;

    move-result-object v6

    .line 702
    .local v6, routes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/MapRoute;>;"
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 703
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/map/MapRoute;

    .line 704
    .local v2, mr:Lti/modules/titanium/map/MapRoute;
    invoke-virtual {v2}, Lti/modules/titanium/map/MapRoute;->getRoutes()Ljava/util/ArrayList;

    move-result-object v3

    .line 705
    .local v3, o:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/MapRoute$RouteOverlay;>;"
    iget-object v7, p0, Lti/modules/titanium/map/TiMapView;->view:Lti/modules/titanium/map/TiMapView$LocalMapView;

    invoke-virtual {v7}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getOverlays()Ljava/util/List;

    move-result-object v4

    .line 706
    .local v4, overlaysList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 707
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/map/MapRoute$RouteOverlay;

    .line 708
    .local v5, ro:Lti/modules/titanium/map/MapRoute$RouteOverlay;
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 709
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 712
    .end local v5           #ro:Lti/modules/titanium/map/MapRoute$RouteOverlay;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 713
    goto :goto_0

    .line 714
    .end local v1           #j:I
    .end local v2           #mr:Lti/modules/titanium/map/MapRoute;
    .end local v3           #o:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/MapRoute$RouteOverlay;>;"
    .end local v4           #overlaysList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_2
    return-void
.end method
