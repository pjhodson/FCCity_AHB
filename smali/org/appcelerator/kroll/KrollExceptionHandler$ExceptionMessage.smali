.class public Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;
.super Ljava/lang/Object;
.source "KrollExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionMessage"
.end annotation


# instance fields
.field public line:I

.field public lineOffset:I

.field public lineSource:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public sourceName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "title"
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->title:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->message:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->sourceName:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->lineSource:Ljava/lang/String;

    .line 48
    iput p4, p0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->line:I

    .line 49
    iput p6, p0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->lineOffset:I

    .line 50
    return-void
.end method
