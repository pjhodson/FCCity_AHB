.class public Lti/modules/titanium/map/TiMapView$SelectedAnnotation;
.super Ljava/lang/Object;
.source "TiMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/map/TiMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedAnnotation"
.end annotation


# instance fields
.field animate:Z

.field center:Z

.field selectedAnnotation:Lti/modules/titanium/map/AnnotationProxy;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lti/modules/titanium/map/AnnotationProxy;ZZ)V
    .locals 0
    .parameter "title"
    .parameter "selectedAnnotation"
    .parameter "animate"
    .parameter "center"

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->title:Ljava/lang/String;

    .line 431
    iput-boolean p3, p0, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->animate:Z

    .line 432
    iput-boolean p4, p0, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->center:Z

    .line 433
    iput-object p2, p0, Lti/modules/titanium/map/TiMapView$SelectedAnnotation;->selectedAnnotation:Lti/modules/titanium/map/AnnotationProxy;

    .line 434
    return-void
.end method
