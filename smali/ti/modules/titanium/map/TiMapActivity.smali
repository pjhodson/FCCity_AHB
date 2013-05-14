.class public Lti/modules/titanium/map/TiMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "TiMapActivity.java"


# instance fields
.field lifecyleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiMapActivity;->lifecyleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lti/modules/titanium/map/TiMapActivity;->lifecyleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onDestroy(Landroid/app/Activity;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 38
    iget-object v0, p0, Lti/modules/titanium/map/TiMapActivity;->lifecyleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lti/modules/titanium/map/TiMapActivity;->lifecyleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onPause(Landroid/app/Activity;)V

    .line 41
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 48
    iget-object v0, p0, Lti/modules/titanium/map/TiMapActivity;->lifecyleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lti/modules/titanium/map/TiMapActivity;->lifecyleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onResume(Landroid/app/Activity;)V

    .line 51
    :cond_0
    return-void
.end method

.method public setLifecycleListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V
    .locals 0
    .parameter "lifecycleListener"

    .prologue
    .line 24
    iput-object p1, p0, Lti/modules/titanium/map/TiMapActivity;->lifecyleListener:Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;

    .line 25
    return-void
.end method
