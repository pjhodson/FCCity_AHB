.class public Lorg/appcelerator/kroll/KrollException;
.super Ljava/lang/Object;
.source "KrollException.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private lineNumber:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private stack:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "stack"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollException;->message:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollException;->stack:Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollException;->parseInfo()V

    .line 21
    return-void
.end method

.method private parseInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 25
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollException;->stack:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollException;->stack:Ljava/lang/String;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, split:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v6, :cond_0

    .line 32
    aget-object v1, v2, v5

    .line 33
    .local v1, secondLine:Ljava/lang/String;
    const-string v3, "at"

    const-string v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, info:[Ljava/lang/String;
    array-length v3, v0

    if-lt v3, v6, :cond_0

    .line 38
    aget-object v3, v0, v5

    iput-object v3, p0, Lorg/appcelerator/kroll/KrollException;->lineNumber:Ljava/lang/String;

    .line 39
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, p0, Lorg/appcelerator/kroll/KrollException;->fileName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollException;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollException;->lineNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollException;->stack:Ljava/lang/String;

    return-object v0
.end method
