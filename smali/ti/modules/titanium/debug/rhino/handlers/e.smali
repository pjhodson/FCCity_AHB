.class public final Lti/modules/titanium/debug/rhino/handlers/e;
.super Lti/modules/titanium/debug/rhino/h;


# static fields
.field private static b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lti/modules/titanium/debug/rhino/handlers/e;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "eval"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lti/modules/titanium/debug/rhino/handlers/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2, v9}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v10}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v2

    invoke-static {v2, v0}, Lti/modules/titanium/debug/rhino/k;->a(Lti/modules/titanium/debug/rhino/i;Ljava/lang/String;)Lti/modules/titanium/debug/rhino/l;

    move-result-object v0

    iget-object v0, v0, Lti/modules/titanium/debug/rhino/l;->a:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    const-string v0, "EvalHandler"

    const-string v1, "No scope found for evaluation request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v8, [Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Lti/modules/titanium/debug/rhino/c;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lti/modules/titanium/debug/rhino/i;->c()Lorg/mozilla/javascript/tools/debugger/Dim;

    move-result-object v2

    invoke-virtual {v2, v0, v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->eval(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "exception"

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    invoke-virtual {p2, v1}, Lti/modules/titanium/debug/rhino/b;->a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lti/modules/titanium/debug/rhino/handlers/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lti/modules/titanium/debug/rhino/handlers/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/k;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lti/modules/titanium/debug/rhino/c;

    const-string v6, "result"

    invoke-direct {v5, v6}, Lti/modules/titanium/debug/rhino/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lti/modules/titanium/debug/rhino/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lti/modules/titanium/debug/rhino/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lti/modules/titanium/debug/rhino/c;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    invoke-static {v0}, Lti/modules/titanium/debug/rhino/k;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-direct {v1, v5}, Lti/modules/titanium/debug/rhino/c;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v4}, Lti/modules/titanium/debug/rhino/b;->a(Lti/modules/titanium/debug/rhino/b;Ljava/util/List;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    goto :goto_0
.end method
