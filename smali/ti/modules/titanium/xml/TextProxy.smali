.class public Lti/modules/titanium/xml/TextProxy;
.super Lti/modules/titanium/xml/CharacterDataProxy;
.source "TextProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Text"


# instance fields
.field private text:Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Text;)V
    .locals 0
    .parameter "tiContext"
    .parameter "text"

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/TextProxy;-><init>(Lorg/w3c/dom/Text;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Text;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/CharacterDataProxy;-><init>(Lorg/w3c/dom/CharacterData;)V

    .line 25
    iput-object p1, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    .line 26
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    const-string v0, "Text"

    const-string v1, "The text property of Text is deprecated, use textContent instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lti/modules/titanium/xml/TextProxy;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public splitText(I)Lti/modules/titanium/xml/TextProxy;
    .locals 7
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v6, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    invoke-interface {v6}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, originalValue:Ljava/lang/String;
    iget-object v6, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    invoke-interface {v6, p1}, Lorg/w3c/dom/Text;->splitText(I)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 45
    .local v5, splitResultNode:Lorg/w3c/dom/Text;
    if-nez p1, :cond_3

    .line 46
    const-string v0, ""

    .line 51
    .local v0, leftValueShouldBe:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    invoke-interface {v6}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, newValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 53
    :cond_0
    iget-object v6, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    invoke-interface {v6, v0}, Lorg/w3c/dom/Text;->setData(Ljava/lang/String;)V

    .line 59
    :cond_1
    move-object v3, v5

    .line 60
    .local v3, returnNode:Lorg/w3c/dom/Text;
    iget-object v6, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    if-ne v5, v6, :cond_2

    .line 65
    iget-object v6, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    invoke-interface {v6}, Lorg/w3c/dom/Text;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 66
    .local v4, sibling:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_2

    instance-of v6, v4, Lorg/w3c/dom/Text;

    if-eqz v6, :cond_2

    move-object v3, v4

    .line 67
    check-cast v3, Lorg/w3c/dom/Text;

    .line 70
    .end local v4           #sibling:Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual {p0, v3}, Lti/modules/titanium/xml/TextProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v6

    check-cast v6, Lti/modules/titanium/xml/TextProxy;

    return-object v6

    .line 48
    .end local v0           #leftValueShouldBe:Ljava/lang/String;
    .end local v1           #newValue:Ljava/lang/String;
    .end local v3           #returnNode:Lorg/w3c/dom/Text;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v2, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #leftValueShouldBe:Ljava/lang/String;
    goto :goto_0
.end method
