.class public Lorg/jaxen/function/LastFunction;
.super Ljava/lang/Object;
.source "LastFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lorg/jaxen/Context;)Ljava/lang/Double;
    .locals 3
    .parameter "context"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Lorg/jaxen/Context;->getSize()I

    move-result v1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .parameter "context"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {p1}, Lorg/jaxen/function/LastFunction;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "last() requires no arguments."

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
