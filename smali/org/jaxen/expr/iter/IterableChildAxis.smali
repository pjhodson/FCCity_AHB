.class public Lorg/jaxen/expr/iter/IterableChildAxis;
.super Lorg/jaxen/expr/iter/IterableAxis;
.source "IterableChildAxis.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/jaxen/expr/iter/IterableAxis;-><init>(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public iterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;
    .locals 1
    .parameter "contextNode"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public namedAccessIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .parameter "contextNode"
    .parameter "support"
    .parameter "localName"
    .parameter "namespacePrefix"
    .parameter "namespaceURI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    check-cast v0, Lorg/jaxen/NamedAccessNavigator;

    .line 98
    .local v0, nav:Lorg/jaxen/NamedAccessNavigator;
    invoke-interface {v0, p1, p3, p4, p5}, Lorg/jaxen/NamedAccessNavigator;->getChildAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public supportsNamedAccess(Lorg/jaxen/ContextSupport;)Z
    .locals 1
    .parameter "support"

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v0

    instance-of v0, v0, Lorg/jaxen/NamedAccessNavigator;

    return v0
.end method
