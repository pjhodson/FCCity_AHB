.class public Lti/modules/titanium/map/MapPoint;
.super Ljava/lang/Object;
.source "MapPoint.java"


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lti/modules/titanium/map/MapPoint;->latitude:D

    .line 20
    iput-wide p3, p0, Lti/modules/titanium/map/MapPoint;->longitude:D

    .line 21
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lti/modules/titanium/map/MapPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lti/modules/titanium/map/MapPoint;->longitude:D

    return-wide v0
.end method
