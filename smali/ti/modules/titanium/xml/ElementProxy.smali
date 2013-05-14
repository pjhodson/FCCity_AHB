.class public Lti/modules/titanium/xml/ElementProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "ElementProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Element"


# instance fields
.field private element:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "context"
    .parameter "element"

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/ElementProxy;-><init>(Lorg/w3c/dom/Element;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/w3c/dom/Node;)V

    .line 28
    iput-object p1, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    .line 29
    return-void
.end method

.method private getTextImpl(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "node"
    .parameter "builder"

    .prologue
    .line 53
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 54
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 56
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 57
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 54
    .end local v0           #child:Lorg/w3c/dom/Node;
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .restart local v0       #child:Lorg/w3c/dom/Node;
    :pswitch_1
    check-cast v0, Lorg/w3c/dom/Text;

    .end local v0           #child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 61
    .restart local v0       #child:Lorg/w3c/dom/Node;
    :pswitch_2
    check-cast v0, Lorg/w3c/dom/CDATASection;

    .end local v0           #child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 64
    .restart local v0       #child:Lorg/w3c/dom/Node;
    :pswitch_3
    invoke-direct {p0, v0, p2}, Lti/modules/titanium/xml/ElementProxy;->getTextImpl(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 68
    .end local v0           #child:Lorg/w3c/dom/Node;
    :cond_0
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected filterThisFromNodeList(Lorg/w3c/dom/NodeList;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 3
    .parameter "list"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, offset:I
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 105
    :cond_0
    new-instance v1, Lti/modules/titanium/xml/NodeListProxy;

    invoke-direct {v1, p1, v0}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/w3c/dom/NodeList;I)V

    return-object v1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/AttrProxy;

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/AttrProxy;

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 1
    .parameter "name"

    .prologue
    .line 111
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->filterThisFromNodeList(Lorg/w3c/dom/NodeList;)Lti/modules/titanium/xml/NodeListProxy;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->filterThisFromNodeList(Lorg/w3c/dom/NodeList;)Lti/modules/titanium/xml/NodeListProxy;

    move-result-object v0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    const-string v0, "Element"

    const-string v1, "The text property of Element is deprecated, use textContent instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lti/modules/titanium/xml/ElementProxy;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-direct {p0, v1, v0}, Lti/modules/titanium/xml/ElementProxy;->getTextImpl(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 130
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public removeAttributeNode(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;
    .locals 2
    .parameter "oldAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/ElementProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/xml/AttrProxy;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public setAttributeNode(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;
    .locals 5
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, newAttrName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lti/modules/titanium/xml/ElementProxy;->getAttributeNode(Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;

    move-result-object v1

    .line 180
    .local v1, existedAttr:Lti/modules/titanium/xml/AttrProxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 208
    .end local v1           #existedAttr:Lti/modules/titanium/xml/AttrProxy;
    :goto_0
    return-object v1

    .line 195
    .restart local v1       #existedAttr:Lti/modules/titanium/xml/AttrProxy;
    :cond_0
    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p0, v1}, Lti/modules/titanium/xml/ElementProxy;->removeAttributeNode(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;

    .line 200
    :cond_1
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lorg/w3c/dom/DOMException;
    if-eqz v1, :cond_2

    .line 203
    iget-object v3, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {v1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 205
    :cond_2
    throw v0
.end method

.method public setAttributeNodeNS(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;
    .locals 4
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/xml/ElementProxy;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;

    move-result-object v1

    .line 218
    .local v1, existedAttr:Lti/modules/titanium/xml/AttrProxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v2

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 240
    .end local v1           #existedAttr:Lti/modules/titanium/xml/AttrProxy;
    :goto_0
    return-object v1

    .line 227
    .restart local v1       #existedAttr:Lti/modules/titanium/xml/AttrProxy;
    :cond_0
    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p0, v1}, Lti/modules/titanium/xml/ElementProxy;->removeAttributeNode(Lti/modules/titanium/xml/AttrProxy;)Lti/modules/titanium/xml/AttrProxy;

    .line 232
    :cond_1
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Lorg/w3c/dom/DOMException;
    if-eqz v1, :cond_2

    .line 235
    iget-object v2, p0, Lti/modules/titanium/xml/ElementProxy;->element:Lorg/w3c/dom/Element;

    invoke-virtual {v1}, Lti/modules/titanium/xml/AttrProxy;->getAttr()Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 237
    :cond_2
    throw v0
.end method
