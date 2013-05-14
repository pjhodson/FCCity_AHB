.class public Lti/modules/titanium/map/MapRoute$RouteOverlay;
.super Lcom/google/android/maps/Overlay;
.source "MapRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/map/MapRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RouteOverlay"
.end annotation


# instance fields
.field private gp1:Lcom/google/android/maps/GeoPoint;

.field private gp2:Lcom/google/android/maps/GeoPoint;

.field private paint:Landroid/graphics/Paint;

.field private point:Landroid/graphics/Point;

.field private point2:Landroid/graphics/Point;

.field final synthetic this$0:Lti/modules/titanium/map/MapRoute;


# direct methods
.method public constructor <init>(Lti/modules/titanium/map/MapRoute;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;II)V
    .locals 2
    .parameter
    .parameter "gp1"
    .parameter "gp2"
    .parameter "color"
    .parameter "width"

    .prologue
    .line 41
    iput-object p1, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->this$0:Lti/modules/titanium/map/MapRoute;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 42
    iput-object p2, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->gp1:Lcom/google/android/maps/GeoPoint;

    .line 43
    iput-object p3, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->gp2:Lcom/google/android/maps/GeoPoint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->paint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->paint:Landroid/graphics/Paint;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->point:Landroid/graphics/Point;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->point2:Landroid/graphics/Point;

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 7
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v6

    .line 57
    .local v6, projection:Lcom/google/android/maps/Projection;
    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->gp1:Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->point:Landroid/graphics/Point;

    invoke-interface {v6, v0, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->gp2:Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->point2:Landroid/graphics/Point;

    invoke-interface {v6, v0, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->point:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->point:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->point2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->point2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lti/modules/titanium/map/MapRoute$RouteOverlay;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 61
    return-void
.end method
