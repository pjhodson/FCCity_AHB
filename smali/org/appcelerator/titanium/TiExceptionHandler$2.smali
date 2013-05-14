.class final Lorg/appcelerator/titanium/TiExceptionHandler$2;
.super Ljava/lang/Object;
.source "TiExceptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiExceptionHandler;->createDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 164
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 175
    :cond_0
    :goto_0
    invoke-static {}, Lorg/appcelerator/titanium/TiExceptionHandler;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-static {}, Lorg/appcelerator/titanium/TiExceptionHandler;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    invoke-static {v0}, Lorg/appcelerator/titanium/TiExceptionHandler;->createDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    .line 181
    :goto_1
    return-void

    .line 166
    :cond_1
    const/4 v0, -0x3

    if-eq p2, v0, :cond_0

    .line 168
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/appcelerator/titanium/TiExceptionHandler;->access$102(Z)Z

    goto :goto_1
.end method
