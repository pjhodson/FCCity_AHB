.class public Lti/modules/titanium/map/TiOverlayItem;
.super Lcom/google/android/maps/OverlayItem;
.source "TiOverlayItem.java"


# instance fields
.field private leftButtonPath:Ljava/lang/String;

.field private leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private proxy:Lti/modules/titanium/map/AnnotationProxy;

.field private rightButtonPath:Ljava/lang/String;

.field private rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lti/modules/titanium/map/AnnotationProxy;)V
    .locals 0
    .parameter "location"
    .parameter "title"
    .parameter "snippet"
    .parameter "proxy"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p4, p0, Lti/modules/titanium/map/TiOverlayItem;->proxy:Lti/modules/titanium/map/AnnotationProxy;

    .line 25
    return-void
.end method


# virtual methods
.method public getLeftButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/map/TiOverlayItem;->leftButtonPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftView()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/map/TiOverlayItem;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getProxy()Lti/modules/titanium/map/AnnotationProxy;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lti/modules/titanium/map/TiOverlayItem;->proxy:Lti/modules/titanium/map/AnnotationProxy;

    return-object v0
.end method

.method public getRightButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/map/TiOverlayItem;->rightButtonPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRightView()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/map/TiOverlayItem;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public hasData()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lti/modules/titanium/map/TiOverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/map/TiOverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItem;->leftButtonPath:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/map/TiOverlayItem;->rightButtonPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public setLeftButton(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 28
    iput-object p1, p0, Lti/modules/titanium/map/TiOverlayItem;->leftButtonPath:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setLeftView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "leftView"

    .prologue
    .line 44
    iput-object p1, p0, Lti/modules/titanium/map/TiOverlayItem;->leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 45
    return-void
.end method

.method public setRightButton(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 36
    iput-object p1, p0, Lti/modules/titanium/map/TiOverlayItem;->rightButtonPath:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setRightView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "rightView"

    .prologue
    .line 53
    iput-object p1, p0, Lti/modules/titanium/map/TiOverlayItem;->rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 54
    return-void
.end method
