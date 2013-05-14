.class public Lti/modules/titanium/map/MapModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "MapModule.java"


# static fields
.field public static final ANNOTATION_GREEN:I = 0x2

.field public static final ANNOTATION_PURPLE:I = 0x3

.field public static final ANNOTATION_RED:I = 0x1

.field public static final HYBRID_TYPE:I = 0x3

.field public static final SATELLITE_TYPE:I = 0x2

.field public static final STANDARD_TYPE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/map/MapModule;-><init>()V

    .line 33
    return-void
.end method
