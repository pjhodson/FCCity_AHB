.class public Lorg/appcelerator/titanium/util/TiLoadImageManager;
.super Ljava/lang/Object;
.source "TiLoadImageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;
    }
.end annotation


# static fields
.field private static final MSG_FIRE_LOAD_FAILED:I = 0x3e9

.field private static final MSG_FIRE_LOAD_FINISHED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TiLoadImageManager"

.field public static final THREAD_POOL_SIZE:I = 0x2

.field protected static _instance:Lorg/appcelerator/titanium/util/TiLoadImageManager;


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected listeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/appcelerator/titanium/util/TiLoadImageListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected loadingImageRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->listeners:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->loadingImageRefs:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->handler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void
.end method

.method public static getInstance()Lorg/appcelerator/titanium/util/TiLoadImageManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->_instance:Lorg/appcelerator/titanium/util/TiLoadImageManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/appcelerator/titanium/util/TiLoadImageManager;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiLoadImageManager;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->_instance:Lorg/appcelerator/titanium/util/TiLoadImageManager;

    .line 44
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->_instance:Lorg/appcelerator/titanium/util/TiLoadImageManager;

    return-object v0
.end method


# virtual methods
.method protected handleLoadImageMessage(IILandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "what"
    .parameter "hash"
    .parameter "bitmap"

    .prologue
    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v4, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->listeners:Landroid/util/SparseArray;

    monitor-enter v6

    .line 85
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 86
    .local v3, listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 87
    .local v2, listener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/util/TiLoadImageListener;

    .line 88
    .local v1, l:Lorg/appcelerator/titanium/util/TiLoadImageListener;
    if-eqz v1, :cond_0

    .line 89
    const/16 v5, 0x3e8

    if-ne p1, v5, :cond_1

    .line 90
    invoke-interface {v1, p2, p3}, Lorg/appcelerator/titanium/util/TiLoadImageListener;->loadImageFinished(ILandroid/graphics/Bitmap;)V

    .line 94
    :goto_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lorg/appcelerator/titanium/util/TiLoadImageListener;
    .end local v2           #listener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;"
    .end local v3           #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 92
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #l:Lorg/appcelerator/titanium/util/TiLoadImageListener;
    .restart local v2       #listener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;"
    .restart local v3       #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/appcelerator/titanium/util/TiLoadImageListener;->loadImageFailed()V

    goto :goto_1

    .line 97
    .end local v1           #l:Lorg/appcelerator/titanium/util/TiLoadImageListener;
    .end local v2           #listener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;"
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 98
    .restart local v2       #listener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    .end local v2           #listener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;"
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    const/16 v2, 0x3e8

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v3, v0}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->handleLoadImageMessage(IILandroid/graphics/Bitmap;)V

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :pswitch_1
    const/16 v0, 0x3e9

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->handleLoadImageMessage(IILandroid/graphics/Bitmap;)V

    move v0, v1

    .line 111
    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public load(Lorg/appcelerator/titanium/view/TiDrawableReference;Lorg/appcelerator/titanium/util/TiLoadImageListener;)V
    .locals 9
    .parameter "imageref"
    .parameter "listener"

    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    .line 56
    .local v1, hash:I
    const/4 v4, 0x0

    .line 57
    .local v4, listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->listeners:Landroid/util/SparseArray;

    monitor-enter v7

    .line 58
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    .end local v4           #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    .local v5, listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    :try_start_1
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v5

    .line 65
    .end local v5           #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    .restart local v4       #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 66
    .local v3, l:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p2, :cond_0

    .line 67
    monitor-exit v7

    .line 79
    .end local v3           #l:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;"
    :goto_1
    return-void

    .line 62
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_0

    .line 70
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->loadingImageRefs:Ljava/util/ArrayList;

    monitor-enter v7

    .line 74
    :try_start_3
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->loadingImageRefs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 75
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->loadingImageRefs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;

    invoke-direct {v8, p0, p1}, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;-><init>(Lorg/appcelerator/titanium/util/TiLoadImageManager;Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    invoke-interface {v6, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 78
    :cond_3
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 71
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    :goto_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .end local v4           #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    .restart local v5       #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    .restart local v4       #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiLoadImageListener;>;>;"
    goto :goto_2
.end method
