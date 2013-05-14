.class public interface abstract Lti/modules/titanium/geolocation/android/LocationProviderProxy$LocationProviderListener;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/geolocation/android/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationProviderListener"
.end annotation


# virtual methods
.method public abstract onLocationChanged(Landroid/location/Location;)V
.end method

.method public abstract onProviderStateChanged(Ljava/lang/String;I)V
.end method

.method public abstract onProviderUpdated(Lti/modules/titanium/geolocation/android/LocationProviderProxy;)V
.end method
