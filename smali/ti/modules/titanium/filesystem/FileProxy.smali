.class public Lti/modules/titanium/filesystem/FileProxy;
.super Lorg/appcelerator/titanium/TiFileProxy;
.source "FileProxy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "sourceUrl"
    .parameter "parts"

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0
    .parameter "sourceUrl"
    .parameter "parts"
    .parameter "resolve"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;)V
    .locals 2
    .parameter "tiContext"
    .parameter "parts"

    .prologue
    .line 24
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)V
    .locals 1
    .parameter "tiContext"
    .parameter "parts"
    .parameter "resolve"

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 35
    return-void
.end method
