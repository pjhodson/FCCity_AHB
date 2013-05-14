.class Lti/modules/titanium/map/TiMapView$1;
.super Ljava/lang/Object;
.source "TiMapView.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/map/TiMapView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/Window;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/map/TiMapView;


# direct methods
.method constructor <init>(Lti/modules/titanium/map/TiMapView;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lti/modules/titanium/map/TiMapView$1;->this$0:Lti/modules/titanium/map/TiMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 514
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 500
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView$1;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v0}, Lti/modules/titanium/map/TiMapView;->access$1200(Lti/modules/titanium/map/TiMapView;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "TiMapView"

    const-string v1, "onPause: Disabling My Location"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView$1;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v0}, Lti/modules/titanium/map/TiMapView;->access$1200(Lti/modules/titanium/map/TiMapView;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 504
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 508
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView$1;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v0}, Lti/modules/titanium/map/TiMapView;->access$1200(Lti/modules/titanium/map/TiMapView;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/map/TiMapView$1;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->userLocation:Z
    invoke-static {v0}, Lti/modules/titanium/map/TiMapView;->access$1300(Lti/modules/titanium/map/TiMapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "TiMapView"

    const-string v1, "onResume: Enabling My Location"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView$1;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->myLocation:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v0}, Lti/modules/titanium/map/TiMapView;->access$1200(Lti/modules/titanium/map/TiMapView;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 512
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 515
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 516
    return-void
.end method
