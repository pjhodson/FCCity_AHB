.class public Lti/modules/titanium/debug/rhino/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lti/modules/titanium/debug/rhino/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lti/modules/titanium/debug/rhino/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/b;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lti/modules/titanium/debug/rhino/b;->a:Lti/modules/titanium/debug/rhino/d;

    return-void
.end method

.method public static a(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/mozilla/javascript/NativeCall;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeCall;

    const-string v2, ","

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeCall;->getParamNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->args()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->args()[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->args()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/debug/rhino/b;
    .locals 2

    new-instance v0, Lti/modules/titanium/debug/rhino/b;

    sget-object v1, Lti/modules/titanium/debug/rhino/d;->a:Lti/modules/titanium/debug/rhino/d;

    invoke-direct {v0, v1}, Lti/modules/titanium/debug/rhino/b;-><init>(Lti/modules/titanium/debug/rhino/d;)V

    iput-object p0, v0, Lti/modules/titanium/debug/rhino/b;->b:Ljava/lang/String;

    iput-object p1, v0, Lti/modules/titanium/debug/rhino/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    new-instance v4, Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lti/modules/titanium/debug/rhino/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lti/modules/titanium/debug/rhino/b;

    sget-object v2, Lti/modules/titanium/debug/rhino/d;->c:Lti/modules/titanium/debug/rhino/d;

    invoke-direct {v0, v2}, Lti/modules/titanium/debug/rhino/b;-><init>(Lti/modules/titanium/debug/rhino/d;)V

    iput-object p0, v0, Lti/modules/titanium/debug/rhino/b;->c:Ljava/lang/String;

    iget-object v2, v0, Lti/modules/titanium/debug/rhino/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static a(Lti/modules/titanium/debug/rhino/b;Ljava/util/List;)Lti/modules/titanium/debug/rhino/b;
    .locals 2

    new-instance v0, Lti/modules/titanium/debug/rhino/b;

    sget-object v1, Lti/modules/titanium/debug/rhino/d;->b:Lti/modules/titanium/debug/rhino/d;

    invoke-direct {v0, v1}, Lti/modules/titanium/debug/rhino/b;-><init>(Lti/modules/titanium/debug/rhino/d;)V

    iget-object v1, p0, Lti/modules/titanium/debug/rhino/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lti/modules/titanium/debug/rhino/b;->b:Ljava/lang/String;

    iget-object v1, v0, Lti/modules/titanium/debug/rhino/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public varargs a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    new-instance v4, Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lti/modules/titanium/debug/rhino/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lti/modules/titanium/debug/rhino/b;->a(Lti/modules/titanium/debug/rhino/b;Ljava/util/List;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lti/modules/titanium/debug/rhino/c;)Lti/modules/titanium/debug/rhino/b;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lti/modules/titanium/debug/rhino/b;->a(Lti/modules/titanium/debug/rhino/b;Ljava/util/List;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lti/modules/titanium/debug/rhino/c;
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/debug/rhino/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/b;->a:Lti/modules/titanium/debug/rhino/d;

    sget-object v2, Lti/modules/titanium/debug/rhino/d;->c:Lti/modules/titanium/debug/rhino/d;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lti/modules/titanium/debug/rhino/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/debug/rhino/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/debug/rhino/c;

    invoke-virtual {v0, v1}, Lti/modules/titanium/debug/rhino/c;->a(Ljava/lang/StringBuilder;)V

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lti/modules/titanium/debug/rhino/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
