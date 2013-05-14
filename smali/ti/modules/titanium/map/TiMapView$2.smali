.class Lti/modules/titanium/map/TiMapView$2;
.super Ljava/lang/Object;
.source "TiMapView.java"

# interfaces
.implements Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;


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

.field final synthetic val$fproxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/map/TiMapView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lti/modules/titanium/map/TiMapView$2;->this$0:Lti/modules/titanium/map/TiMapView;

    iput-object p2, p0, Lti/modules/titanium/map/TiMapView$2;->val$fproxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILjava/lang/String;)V
    .locals 5
    .parameter "lastIndex"
    .parameter "clickedItem"

    .prologue
    .line 532
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView$2;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->overlay:Lti/modules/titanium/map/TiMapView$TitaniumOverlay;
    invoke-static {v2}, Lti/modules/titanium/map/TiMapView;->access$1400(Lti/modules/titanium/map/TiMapView;)Lti/modules/titanium/map/TiMapView$TitaniumOverlay;

    move-result-object v2

    invoke-virtual {v2, p1}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/map/TiOverlayItem;

    .line 533
    .local v1, item:Lti/modules/titanium/map/TiOverlayItem;
    if-eqz v1, :cond_0

    .line 534
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 535
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "title"

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v2, "subtitle"

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v2, "latitude"

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView$2;->this$0:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v4

    #calls: Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D
    invoke-static {v3, v4}, Lti/modules/titanium/map/TiMapView;->access$300(Lti/modules/titanium/map/TiMapView;I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v2, "longitude"

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView$2;->this$0:Lti/modules/titanium/map/TiMapView;

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    #calls: Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D
    invoke-static {v3, v4}, Lti/modules/titanium/map/TiMapView;->access$300(Lti/modules/titanium/map/TiMapView;I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v2, "annotation"

    invoke-virtual {v1}, Lti/modules/titanium/map/TiOverlayItem;->getProxy()Lti/modules/titanium/map/AnnotationProxy;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v2, "clicksource"

    invoke-virtual {v0, v2, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView$2;->val$fproxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "click"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 543
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method
