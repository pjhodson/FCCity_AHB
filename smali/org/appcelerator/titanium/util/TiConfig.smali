.class public Lorg/appcelerator/titanium/util/TiConfig;
.super Ljava/lang/Object;
.source "TiConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static DEBUG:Z

.field public static LOGD:Z

.field public static LOGV:Z

.field public static PROFILE:Z

.field public static RELEASE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    .line 18
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGV:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGV:Z

    .line 19
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->DEBUG:Z

    .line 20
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->RELEASE:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->RELEASE:Z

    .line 21
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->RELEASE:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->PROFILE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
