.class public final enum Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;
.super Ljava/lang/Enum;
.source "TiGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/TiGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

.field public static final enum LINEAR_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

.field public static final enum RADIAL_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    const-string v1, "LINEAR_GRADIENT"

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->LINEAR_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    new-instance v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    const-string v1, "RADIAL_GRADIENT"

    invoke-direct {v0, v1, v3}, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->RADIAL_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->LINEAR_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->RADIAL_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->$VALUES:[Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    return-object v0
.end method

.method public static values()[Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->$VALUES:[Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    invoke-virtual {v0}, [Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    return-object v0
.end method
