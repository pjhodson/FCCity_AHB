.class public Lti/modules/titanium/ui/ImageViewProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "ImageViewProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxy;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 38
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;-><init>()V

    .line 39
    return-void
.end method

.method private getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIImageView;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 43
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getAnimating()Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public getPaused()Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->isPaused()Z

    move-result v0

    return v0
.end method

.method public getReverse()Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->isReverse()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->pause()V

    .line 63
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    .line 68
    return-void
.end method

.method public setReverse(Z)V
    .locals 1
    .parameter "reverse"

    .prologue
    .line 88
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setReverse(Z)V

    .line 89
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->start()V

    .line 53
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->stop()V

    .line 58
    return-void
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->toBlob()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method
