.class public Lti/modules/titanium/ui/TabContentViewProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "TabContentViewProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v0

    return-object v0
.end method
