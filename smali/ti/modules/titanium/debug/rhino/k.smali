.class public final Lti/modules/titanium/debug/rhino/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/debug/rhino/k;->a:Ljava/util/regex/Pattern;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "setTimeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "setInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "clearTimeout"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "clearInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "require"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alert"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sandbox"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "kroll"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Module"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "L"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/debug/rhino/k;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "v"

    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    instance-of v1, p0, Lorg/mozilla/javascript/RhinoException;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static a(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Lti/modules/titanium/debug/rhino/c;
    .locals 4

    invoke-static {p2}, Lti/modules/titanium/debug/rhino/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    instance-of v1, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v1, :cond_4

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->isConst(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->hasAttributes(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_4

    const-string v1, "w"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_4
    invoke-static {p2}, Lti/modules/titanium/debug/rhino/k;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const/4 v0, 0x3

    invoke-static {p2}, Lti/modules/titanium/debug/rhino/k;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    new-instance v0, Lti/modules/titanium/debug/rhino/c;

    invoke-direct {v0, v2}, Lti/modules/titanium/debug/rhino/c;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lti/modules/titanium/debug/rhino/i;Ljava/lang/String;)Lti/modules/titanium/debug/rhino/l;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    new-instance v4, Lti/modules/titanium/debug/rhino/l;

    invoke-direct {v4}, Lti/modules/titanium/debug/rhino/l;-><init>()V

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v6

    const-string v3, "frame["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v5, v6

    const-string v3, "frame["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v6

    const/4 v3, 0x6

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lti/modules/titanium/debug/rhino/i;->f()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->getFrame(I)Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    :goto_1
    if-eqz v0, :cond_b

    array-length v1, v5

    if-le v1, v2, :cond_9

    :goto_2
    array-length v1, v5

    if-ge v2, v1, :cond_a

    iput-object v0, v4, Lti/modules/titanium/debug/rhino/l;->a:Lorg/mozilla/javascript/Scriptable;

    aget-object v1, v5, v2

    iput-object v1, v4, Lti/modules/titanium/debug/rhino/l;->b:Ljava/lang/String;

    aget-object v1, v5, v2

    sget-object v3, Lti/modules/titanium/debug/rhino/k;->a:Ljava/util/regex/Pattern;

    aget-object v6, v5, v2

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v1, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    move-object v3, v0

    :goto_3
    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v3, v0, v3}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_8

    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_7

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v3, v0, v3}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    iput-object v0, v4, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    iget-object v0, v4, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    instance-of v0, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v0, v5, v6

    const-string v3, "eval["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    aget-object v0, v5, v6

    const-string v3, "eval["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_6
    invoke-static {v0}, Lti/modules/titanium/debug/rhino/handlers/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    iput-object v0, v4, Lti/modules/titanium/debug/rhino/l;->a:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_6

    :cond_4
    iput-object v0, v4, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v3}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v3}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-interface {v3}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    :cond_9
    iput-object v0, v4, Lti/modules/titanium/debug/rhino/l;->a:Lorg/mozilla/javascript/Scriptable;

    iput-boolean v2, v4, Lti/modules/titanium/debug/rhino/l;->d:Z

    iget-object v1, v4, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    if-nez v1, :cond_a

    iput-object v0, v4, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    :cond_a
    :goto_7
    return-object v4

    :cond_b
    iput-object v0, v4, Lti/modules/titanium/debug/rhino/l;->a:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, v4, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    if-nez v1, :cond_a

    iput-object v0, v4, Lti/modules/titanium/debug/rhino/l;->c:Ljava/lang/Object;

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lti/modules/titanium/debug/rhino/k;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "Object"

    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    const-string v0, "Number"

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v0, "String"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "frame["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const-string v0, "null"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, v1, :cond_2

    instance-of v1, p0, Lorg/mozilla/javascript/Undefined;

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "undefined"

    goto :goto_0

    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_0

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    instance-of v2, v2, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/appcelerator/kroll/runtime/rhino/Proxy;->isModule()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    instance-of v0, v0, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    move-object v0, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
