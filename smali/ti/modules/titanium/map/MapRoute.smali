.class public Lti/modules/titanium/map/MapRoute;
.super Ljava/lang/Object;
.source "MapRoute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/map/MapRoute$RouteOverlay;
    }
.end annotation


# instance fields
.field private color:I

.field private name:Ljava/lang/String;

.field private routes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/MapRoute$RouteOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>([Lti/modules/titanium/map/MapPoint;IILjava/lang/String;)V
    .locals 1
    .parameter "points"
    .parameter "color"
    .parameter "width"
    .parameter "name"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lti/modules/titanium/map/MapRoute;->color:I

    .line 68
    iput p3, p0, Lti/modules/titanium/map/MapRoute;->width:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/map/MapRoute;->routes:Ljava/util/ArrayList;

    .line 70
    iput-object p4, p0, Lti/modules/titanium/map/MapRoute;->name:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lti/modules/titanium/map/MapRoute;->generateRoutes([Lti/modules/titanium/map/MapPoint;)V

    .line 73
    return-void
.end method

.method private generateRoutes([Lti/modules/titanium/map/MapPoint;)V
    .locals 9
    .parameter "points"

    .prologue
    .line 103
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v6, v1, :cond_0

    .line 104
    aget-object v7, p1, v6

    .line 105
    .local v7, mr1:Lti/modules/titanium/map/MapPoint;
    add-int/lit8 v1, v6, 0x1

    aget-object v8, p1, v1

    .line 106
    .local v8, mr2:Lti/modules/titanium/map/MapPoint;
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v7}, Lti/modules/titanium/map/MapPoint;->getLatitude()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lti/modules/titanium/map/MapRoute;->scaleToGoogle(D)I

    move-result v1

    invoke-virtual {v7}, Lti/modules/titanium/map/MapPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lti/modules/titanium/map/MapRoute;->scaleToGoogle(D)I

    move-result v4

    invoke-direct {v2, v1, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 107
    .local v2, gp1:Lcom/google/android/maps/GeoPoint;
    new-instance v3, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v8}, Lti/modules/titanium/map/MapPoint;->getLatitude()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lti/modules/titanium/map/MapRoute;->scaleToGoogle(D)I

    move-result v1

    invoke-virtual {v8}, Lti/modules/titanium/map/MapPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lti/modules/titanium/map/MapRoute;->scaleToGoogle(D)I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 108
    .local v3, gp2:Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lti/modules/titanium/map/MapRoute$RouteOverlay;

    invoke-virtual {p0}, Lti/modules/titanium/map/MapRoute;->getColor()I

    move-result v4

    invoke-virtual {p0}, Lti/modules/titanium/map/MapRoute;->getWidth()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/map/MapRoute$RouteOverlay;-><init>(Lti/modules/titanium/map/MapRoute;Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;II)V

    .line 109
    .local v0, o:Lti/modules/titanium/map/MapRoute$RouteOverlay;
    iget-object v1, p0, Lti/modules/titanium/map/MapRoute;->routes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 111
    .end local v0           #o:Lti/modules/titanium/map/MapRoute$RouteOverlay;
    .end local v2           #gp1:Lcom/google/android/maps/GeoPoint;
    .end local v3           #gp2:Lcom/google/android/maps/GeoPoint;
    .end local v7           #mr1:Lti/modules/titanium/map/MapPoint;
    .end local v8           #mr2:Lti/modules/titanium/map/MapPoint;
    :cond_0
    return-void
.end method

.method private scaleToGoogle(D)I
    .locals 2
    .parameter "value"

    .prologue
    .line 115
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lti/modules/titanium/map/MapRoute;->color:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/map/MapRoute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/MapRoute$RouteOverlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/map/MapRoute;->routes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lti/modules/titanium/map/MapRoute;->width:I

    return v0
.end method
