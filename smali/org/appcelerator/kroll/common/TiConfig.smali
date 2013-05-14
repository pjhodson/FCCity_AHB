.class public Lorg/appcelerator/kroll/common/TiConfig;
.super Ljava/lang/Object;
.source "TiConfig.java"


# static fields
.field public static DEBUG:Z

.field public static LOGD:Z

.field public static LOGV:Z

.field public static PROFILE:Z

.field public static RELEASE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-boolean v1, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    .line 29
    sput-boolean v1, Lorg/appcelerator/kroll/common/TiConfig;->LOGV:Z

    .line 30
    sput-boolean v1, Lorg/appcelerator/kroll/common/TiConfig;->DEBUG:Z

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->RELEASE:Z

    .line 32
    sput-boolean v1, Lorg/appcelerator/kroll/common/TiConfig;->PROFILE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
