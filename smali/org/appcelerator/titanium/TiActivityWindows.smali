.class public Lorg/appcelerator/titanium/TiActivityWindows;
.super Ljava/lang/Object;
.source "TiActivityWindows.java"


# static fields
.field protected static windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static windows:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/appcelerator/titanium/TiActivityWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I
    .locals 2
    .parameter "window"

    .prologue
    .line 23
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 24
    .local v0, windowId:I
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    return v0
.end method

.method public static dispose()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 45
    return-void
.end method

.method public static removeWindow(I)V
    .locals 1
    .parameter "windowId"

    .prologue
    .line 39
    sget-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 40
    return-void
.end method

.method public static windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;I)V
    .locals 2
    .parameter "activity"
    .parameter "windowId"

    .prologue
    .line 30
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiActivityWindow;

    .line 31
    .local v0, window:Lorg/appcelerator/titanium/TiActivityWindow;
    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p0}, Lorg/appcelerator/titanium/TiActivityWindow;->windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;)V

    .line 33
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    :cond_0
    return-void
.end method
