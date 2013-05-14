.class public final enum Lorg/appcelerator/kroll/KrollRuntime$State;
.super Ljava/lang/Enum;
.source "KrollRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/appcelerator/kroll/KrollRuntime$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/appcelerator/kroll/KrollRuntime$State;

.field public static final enum DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

.field public static final enum INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

.field public static final enum RELAUNCHED:Lorg/appcelerator/kroll/KrollRuntime$State;

.field public static final enum RELEASED:Lorg/appcelerator/kroll/KrollRuntime$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lorg/appcelerator/kroll/KrollRuntime$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/kroll/KrollRuntime$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    new-instance v0, Lorg/appcelerator/kroll/KrollRuntime$State;

    const-string v1, "RELEASED"

    invoke-direct {v0, v1, v3}, Lorg/appcelerator/kroll/KrollRuntime$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->RELEASED:Lorg/appcelerator/kroll/KrollRuntime$State;

    new-instance v0, Lorg/appcelerator/kroll/KrollRuntime$State;

    const-string v1, "RELAUNCHED"

    invoke-direct {v0, v1, v4}, Lorg/appcelerator/kroll/KrollRuntime$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->RELAUNCHED:Lorg/appcelerator/kroll/KrollRuntime$State;

    new-instance v0, Lorg/appcelerator/kroll/KrollRuntime$State;

    const-string v1, "DISPOSED"

    invoke-direct {v0, v1, v5}, Lorg/appcelerator/kroll/KrollRuntime$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/appcelerator/kroll/KrollRuntime$State;

    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->INITIALIZED:Lorg/appcelerator/kroll/KrollRuntime$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->RELEASED:Lorg/appcelerator/kroll/KrollRuntime$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->RELAUNCHED:Lorg/appcelerator/kroll/KrollRuntime$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/appcelerator/kroll/KrollRuntime$State;->DISPOSED:Lorg/appcelerator/kroll/KrollRuntime$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->$VALUES:[Lorg/appcelerator/kroll/KrollRuntime$State;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollRuntime$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lorg/appcelerator/kroll/KrollRuntime$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollRuntime$State;

    return-object v0
.end method

.method public static values()[Lorg/appcelerator/kroll/KrollRuntime$State;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime$State;->$VALUES:[Lorg/appcelerator/kroll/KrollRuntime$State;

    invoke-virtual {v0}, [Lorg/appcelerator/kroll/KrollRuntime$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/kroll/KrollRuntime$State;

    return-object v0
.end method
