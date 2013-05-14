.class final enum Lti/modules/titanium/debug/rhino/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lti/modules/titanium/debug/rhino/g;

.field public static final enum b:Lti/modules/titanium/debug/rhino/g;

.field public static final enum c:Lti/modules/titanium/debug/rhino/g;

.field public static final enum d:Lti/modules/titanium/debug/rhino/g;

.field private static final synthetic e:[Lti/modules/titanium/debug/rhino/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lti/modules/titanium/debug/rhino/g;

    const-string v1, "ParseLength"

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/debug/rhino/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/debug/rhino/g;->a:Lti/modules/titanium/debug/rhino/g;

    new-instance v0, Lti/modules/titanium/debug/rhino/g;

    const-string v1, "ParseRequestID"

    invoke-direct {v0, v1, v3}, Lti/modules/titanium/debug/rhino/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/debug/rhino/g;->b:Lti/modules/titanium/debug/rhino/g;

    new-instance v0, Lti/modules/titanium/debug/rhino/g;

    const-string v1, "ParseCommand"

    invoke-direct {v0, v1, v4}, Lti/modules/titanium/debug/rhino/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/debug/rhino/g;->c:Lti/modules/titanium/debug/rhino/g;

    new-instance v0, Lti/modules/titanium/debug/rhino/g;

    const-string v1, "ParseArguments"

    invoke-direct {v0, v1, v5}, Lti/modules/titanium/debug/rhino/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/debug/rhino/g;->d:Lti/modules/titanium/debug/rhino/g;

    const/4 v0, 0x4

    new-array v0, v0, [Lti/modules/titanium/debug/rhino/g;

    sget-object v1, Lti/modules/titanium/debug/rhino/g;->a:Lti/modules/titanium/debug/rhino/g;

    aput-object v1, v0, v2

    sget-object v1, Lti/modules/titanium/debug/rhino/g;->b:Lti/modules/titanium/debug/rhino/g;

    aput-object v1, v0, v3

    sget-object v1, Lti/modules/titanium/debug/rhino/g;->c:Lti/modules/titanium/debug/rhino/g;

    aput-object v1, v0, v4

    sget-object v1, Lti/modules/titanium/debug/rhino/g;->d:Lti/modules/titanium/debug/rhino/g;

    aput-object v1, v0, v5

    sput-object v0, Lti/modules/titanium/debug/rhino/g;->e:[Lti/modules/titanium/debug/rhino/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lti/modules/titanium/debug/rhino/g;
    .locals 1

    sget-object v0, Lti/modules/titanium/debug/rhino/g;->e:[Lti/modules/titanium/debug/rhino/g;

    invoke-virtual {v0}, [Lti/modules/titanium/debug/rhino/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/debug/rhino/g;

    return-object v0
.end method
