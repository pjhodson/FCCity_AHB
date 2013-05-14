.class public Lorg/jaxen/function/ext/UpperFunction;
.super Lorg/jaxen/function/ext/LocaleFunctionSupport;
.source "UpperFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/jaxen/function/ext/LocaleFunctionSupport;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Ljava/util/Locale;Lorg/jaxen/Navigator;)Ljava/lang/String;
    .locals 2
    .parameter "strArg"
    .parameter "locale"
    .parameter "nav"

    .prologue
    .line 108
    invoke-static {p0, p2}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, str:Ljava/lang/String;
    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 113
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .parameter "context"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 80
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    .line 81
    .local v1, navigator:Lorg/jaxen/Navigator;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 82
    .local v2, size:I
    if-lez v2, :cond_1

    .line 84
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, text:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 86
    .local v0, locale:Ljava/util/Locale;
    if-le v2, v5, :cond_0

    .line 88
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lorg/jaxen/function/ext/UpperFunction;->getLocale(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/util/Locale;

    move-result-object v0

    .line 90
    :cond_0
    invoke-static {v3, v0, v1}, Lorg/jaxen/function/ext/UpperFunction;->evaluate(Ljava/lang/Object;Ljava/util/Locale;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 92
    .end local v0           #locale:Ljava/util/Locale;
    .end local v3           #text:Ljava/lang/Object;
    :cond_1
    new-instance v4, Lorg/jaxen/FunctionCallException;

    const-string v5, "upper-case() requires at least one argument."

    invoke-direct {v4, v5}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
