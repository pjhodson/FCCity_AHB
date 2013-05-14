.class public final enum Lti/modules/titanium/debug/rhino/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lti/modules/titanium/debug/rhino/d;

.field public static final enum b:Lti/modules/titanium/debug/rhino/d;

.field public static final enum c:Lti/modules/titanium/debug/rhino/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lti/modules/titanium/debug/rhino/d;

    const-string v1, "Request"

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/debug/rhino/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/debug/rhino/d;->a:Lti/modules/titanium/debug/rhino/d;

    new-instance v0, Lti/modules/titanium/debug/rhino/d;

    const-string v1, "Reply"

    invoke-direct {v0, v1, v3}, Lti/modules/titanium/debug/rhino/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/debug/rhino/d;->b:Lti/modules/titanium/debug/rhino/d;

    new-instance v0, Lti/modules/titanium/debug/rhino/d;

    const-string v1, "Message"

    invoke-direct {v0, v1, v4}, Lti/modules/titanium/debug/rhino/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/debug/rhino/d;->c:Lti/modules/titanium/debug/rhino/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lti/modules/titanium/debug/rhino/d;

    sget-object v1, Lti/modules/titanium/debug/rhino/d;->a:Lti/modules/titanium/debug/rhino/d;

    aput-object v1, v0, v2

    sget-object v1, Lti/modules/titanium/debug/rhino/d;->b:Lti/modules/titanium/debug/rhino/d;

    aput-object v1, v0, v3

    sget-object v1, Lti/modules/titanium/debug/rhino/d;->c:Lti/modules/titanium/debug/rhino/d;

    aput-object v1, v0, v4

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
