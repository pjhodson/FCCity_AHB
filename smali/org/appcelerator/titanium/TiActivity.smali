.class public Lorg/appcelerator/titanium/TiActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 20
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 23
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->fireOnDestroy()V

    .line 29
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroy()V

    .line 30
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    .line 46
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    .line 36
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :cond_0
    return-void
.end method
