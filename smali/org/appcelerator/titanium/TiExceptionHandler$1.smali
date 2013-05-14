.class Lorg/appcelerator/titanium/TiExceptionHandler$1;
.super Ljava/lang/Object;
.source "TiExceptionHandler.java"

# interfaces
.implements Lorg/appcelerator/kroll/common/CurrentActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiExceptionHandler;->handleOpenErrorDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiExceptionHandler;

.field final synthetic val$fError:Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiExceptionHandler;Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lorg/appcelerator/titanium/TiExceptionHandler$1;->this$0:Lorg/appcelerator/titanium/TiExceptionHandler;

    iput-object p2, p0, Lorg/appcelerator/titanium/TiExceptionHandler$1;->val$fError:Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityReady(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/TiExceptionHandler$1;->val$fError:Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    invoke-static {v0}, Lorg/appcelerator/titanium/TiExceptionHandler;->createDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    .line 95
    return-void
.end method
