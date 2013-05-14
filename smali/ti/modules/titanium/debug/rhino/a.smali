.class public final Lti/modules/titanium/debug/rhino/a;
.super Ljava/util/HashMap;


# instance fields
.field private a:Lorg/mozilla/javascript/tools/debugger/Dim;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lti/modules/titanium/debug/rhino/a;->a:Lorg/mozilla/javascript/tools/debugger/Dim;

    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "suspendOnErrors"

    if-eq p1, v0, :cond_0

    const-string v0, "suspendOnExceptions"

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lti/modules/titanium/debug/rhino/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lti/modules/titanium/debug/rhino/a;->a:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setBreakOnExceptions(Z)V

    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/debug/rhino/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
