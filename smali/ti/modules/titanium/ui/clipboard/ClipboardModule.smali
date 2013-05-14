.class public Lti/modules/titanium/ui/clipboard/ClipboardModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "ClipboardModule.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 22
    const-string v0, "Clipboard"

    iput-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModule;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 31
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;-><init>()V

    .line 32
    return-void
.end method

.method private board()Landroid/text/ClipboardManager;
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    return-object v0
.end method

.method private isTextType(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearData(Ljava/lang/String;)V
    .locals 0
    .parameter "type"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->clearText()V

    .line 56
    return-void
.end method

.method public clearText()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "type"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->getText()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasData(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->hasText()Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 107
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModule;->TAG:Ljava/lang/String;

    const-string v1, "Android clipboard only supports text data"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 116
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method
