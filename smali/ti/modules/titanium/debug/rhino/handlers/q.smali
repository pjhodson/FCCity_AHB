.class public final Lti/modules/titanium/debug/rhino/handlers/q;
.super Lti/modules/titanium/debug/rhino/h;


# static fields
.field private static b:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lti/modules/titanium/debug/rhino/handlers/r;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/handlers/r;-><init>()V

    sput-object v0, Lti/modules/titanium/debug/rhino/handlers/q;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "variables"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/mozilla/javascript/Scriptable;ZLjava/util/HashMap;)V
    .locals 7

    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lti/modules/titanium/debug/rhino/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0, v0, p0}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lti/modules/titanium/debug/rhino/k;->d(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0, v5, v0, p1}, Lti/modules/titanium/debug/rhino/k;->a(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v2}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v0

    invoke-static {v0, v1}, Lti/modules/titanium/debug/rhino/k;->a(Lti/modules/titanium/debug/rhino/i;Ljava/lang/String;)Lti/modules/titanium/debug/rhino/l;

    move-result-object v5

    iget-object v0, v5, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    instance-of v0, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    iget-object v0, v5, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lti/modules/titanium/debug/rhino/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v4}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v6, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, v5, Lti/modules/titanium/debug/rhino/l;->a:Lorg/mozilla/javascript/Scriptable;

    move-object v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    if-ne v0, v4, :cond_2

    iget-boolean v1, v5, Lti/modules/titanium/debug/rhino/l;->d:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    invoke-static {v0, v1, v7}, Lti/modules/titanium/debug/rhino/handlers/q;->a(Lorg/mozilla/javascript/Scriptable;ZLjava/util/HashMap;)V

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lti/modules/titanium/debug/rhino/handlers/q;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-static {p2, v1}, Lti/modules/titanium/debug/rhino/b;->a(Lti/modules/titanium/debug/rhino/b;Ljava/util/List;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_5
    new-array v0, v3, [Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Lti/modules/titanium/debug/rhino/c;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    goto :goto_5
.end method
