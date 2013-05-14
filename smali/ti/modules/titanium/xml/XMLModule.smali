.class public Lti/modules/titanium/xml/XMLModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "XMLModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XMLModule"

.field private static builder:Ljavax/xml/parsers/DocumentBuilder;

.field private static transformerFactory:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 39
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 40
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    sput-object v2, Lti/modules/titanium/xml/XMLModule;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    .line 46
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v2, "XMLModule"

    const-string v3, "Error finding DOM implementation"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Lti/modules/titanium/xml/XMLModule;-><init>()V

    .line 56
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 2
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 5
    .parameter "xml"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v1, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    new-instance v1, Lti/modules/titanium/xml/DocumentProxy;

    sget-object v2, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-direct {v1, v2}, Lti/modules/titanium/xml/DocumentProxy;-><init>(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Lorg/xml/sax/SAXException;
    const-string v1, "XMLModule"

    const-string v2, "Error parsing XML"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    throw v0

    .line 86
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    const-string v1, "XMLModule"

    const-string v2, "Error reading XML"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    throw v0

    .line 91
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 1
    .parameter "tiContext"
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 1
    .parameter "tiContext"
    .parameter "xml"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p1, p2}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseString(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 1
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lti/modules/titanium/xml/XMLModule;->parse(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public serializeToString(Lti/modules/titanium/xml/NodeProxy;)Ljava/lang/String;
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v2, Lti/modules/titanium/xml/XMLModule;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 104
    .local v0, transformer:Ljavax/xml/transform/Transformer;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 105
    .local v1, writer:Ljava/io/StringWriter;
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 106
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
