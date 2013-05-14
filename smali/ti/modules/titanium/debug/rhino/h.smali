.class public abstract Lti/modules/titanium/debug/rhino/h;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/HashMap;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lti/modules/titanium/debug/rhino/h;->b:Ljava/util/HashMap;

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/s;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/s;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/p;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/p;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/i;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/i;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/d;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/d;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/c;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/c;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/b;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/b;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/n;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/n;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/a;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/a;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/f;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/f;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/h;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/h;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/g;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/g;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/q;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/q;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/l;

    const-string v1, "stepInto"

    invoke-direct {v0, v1}, Lti/modules/titanium/debug/rhino/handlers/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/l;

    const-string v1, "stepOver"

    invoke-direct {v0, v1}, Lti/modules/titanium/debug/rhino/handlers/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/l;

    const-string v1, "stepReturn"

    invoke-direct {v0, v1}, Lti/modules/titanium/debug/rhino/handlers/l;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/e;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/e;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/k;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/k;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/m;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/m;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/j;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/j;-><init>()V

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/h;->a(Lti/modules/titanium/debug/rhino/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/modules/titanium/debug/rhino/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lti/modules/titanium/debug/rhino/h;
    .locals 1

    sget-object v0, Lti/modules/titanium/debug/rhino/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/debug/rhino/h;

    return-object v0
.end method

.method private static a(Lti/modules/titanium/debug/rhino/h;)V
    .locals 2

    sget-object v0, Lti/modules/titanium/debug/rhino/h;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lti/modules/titanium/debug/rhino/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
.end method
