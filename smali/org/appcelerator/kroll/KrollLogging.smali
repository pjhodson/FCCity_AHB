.class public Lorg/appcelerator/kroll/KrollLogging;
.super Ljava/lang/Object;
.source "KrollLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollLogging$LogListener;
    }
.end annotation


# static fields
.field public static final CRITICAL:I = 0x7

.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x6

.field public static final FATAL:I = 0x8

.field public static final INFO:I = 0x3

.field public static final NOTICE:I = 0x4

.field public static final TRACE:I = 0x1

.field public static final WARN:I = 0x5

.field private static instance:Lorg/appcelerator/kroll/KrollLogging;


# instance fields
.field private listener:Lorg/appcelerator/kroll/KrollLogging$LogListener;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lorg/appcelerator/kroll/KrollLogging;

    const-string v1, "TiAPI"

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollLogging;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/appcelerator/kroll/KrollLogging;->instance:Lorg/appcelerator/kroll/KrollLogging;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private varargs combineLogMessages([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 124
    if-nez p1, :cond_0

    move v1, v3

    .line 126
    .local v1, length:I
    :goto_0
    if-lez v1, :cond_1

    .line 127
    aget-object v2, p1, v3

    .line 132
    .local v2, msg:Ljava/lang/String;
    :goto_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 133
    const-string v4, " %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, p1, v0

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #msg:Ljava/lang/String;
    :cond_0
    array-length v1, p1

    goto :goto_0

    .line 129
    .restart local v1       #length:I
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .restart local v2       #msg:Ljava/lang/String;
    goto :goto_1

    .line 135
    .restart local v0       #i:I
    :cond_2
    return-object v2
.end method

.method public static getDefault()Lorg/appcelerator/kroll/KrollLogging;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/appcelerator/kroll/KrollLogging;->instance:Lorg/appcelerator/kroll/KrollLogging;

    return-object v0
.end method

.method private internalLog(ILjava/lang/String;)V
    .locals 2
    .parameter "severity"
    .parameter "msg"

    .prologue
    const/4 v1, 0x5

    .line 140
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->listener:Lorg/appcelerator/kroll/KrollLogging$LogListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->listener:Lorg/appcelerator/kroll/KrollLogging$LogListener;

    invoke-interface {v0, p1, p2}, Lorg/appcelerator/kroll/KrollLogging$LogListener;->onLog(ILjava/lang/String;)V

    .line 164
    :cond_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    .line 146
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_2
    if-ge p1, v1, :cond_3

    .line 150
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_3
    if-ne p1, v1, :cond_4

    .line 154
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollLogging;->tag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logWithDefaultLogger(ILjava/lang/String;)V
    .locals 1
    .parameter "severity"
    .parameter "msg"

    .prologue
    .line 34
    invoke-static {}, Lorg/appcelerator/kroll/KrollLogging;->getDefault()Lorg/appcelerator/kroll/KrollLogging;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public varargs critical([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 84
    const/4 v0, 0x7

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 85
    return-void
.end method

.method public varargs debug([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 54
    const/4 v0, 0x2

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public varargs error([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public varargs fatal([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 89
    const/16 v0, 0x8

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 90
    return-void
.end method

.method public varargs info([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "level"
    .parameter "args"

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, ulevel:Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x3

    .line 98
    .local v1, severity:I
    const-string v3, "TRACE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const/4 v1, 0x1

    .line 118
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 119
    return-void

    .line 100
    :cond_0
    const-string v3, "DEBUG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const/4 v1, 0x2

    goto :goto_0

    .line 102
    :cond_1
    const-string v3, "INFO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const/4 v1, 0x3

    goto :goto_0

    .line 104
    :cond_2
    const-string v3, "NOTICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    const/4 v1, 0x4

    goto :goto_0

    .line 106
    :cond_3
    const-string v3, "WARN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    const/4 v1, 0x5

    goto :goto_0

    .line 108
    :cond_4
    const-string v3, "ERROR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    const/4 v1, 0x6

    goto :goto_0

    .line 110
    :cond_5
    const-string v3, "CRITICAL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 111
    const/4 v1, 0x7

    goto :goto_0

    .line 112
    :cond_6
    const-string v3, "FATAL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 113
    const/16 v1, 0x8

    goto :goto_0

    .line 115
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs notice([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 79
    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 80
    return-void
.end method

.method public setLogListener(Lorg/appcelerator/kroll/KrollLogging$LogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollLogging;->listener:Lorg/appcelerator/kroll/KrollLogging$LogListener;

    .line 50
    return-void
.end method

.method public varargs trace([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 75
    return-void
.end method

.method public varargs warn([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollLogging;->combineLogMessages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/kroll/KrollLogging;->internalLog(ILjava/lang/String;)V

    .line 65
    return-void
.end method
