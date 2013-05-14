.class public Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;
.super Ljava/lang/Object;
.source "TiLoadImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiLoadImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoadImageJob"
.end annotation


# instance fields
.field protected imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;

.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiLoadImageManager;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiLoadImageManager;Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 0
    .parameter
    .parameter "imageref"

    .prologue
    .line 121
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->this$0:Lorg/appcelerator/titanium/util/TiLoadImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 123
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 128
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->this$0:Lorg/appcelerator/titanium/util/TiLoadImageManager;

    iget-object v4, v3, Lorg/appcelerator/titanium/util/TiLoadImageManager;->loadingImageRefs:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :try_start_1
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->this$0:Lorg/appcelerator/titanium/util/TiLoadImageManager;

    iget-object v3, v3, Lorg/appcelerator/titanium/util/TiLoadImageManager;->loadingImageRefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->this$0:Lorg/appcelerator/titanium/util/TiLoadImageManager;

    iget-object v3, v3, Lorg/appcelerator/titanium/util/TiLoadImageManager;->handler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 133
    .local v2, msg:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 135
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 131
    .end local v2           #msg:Landroid/os/Message;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "TiLoadImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception loading image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->this$0:Lorg/appcelerator/titanium/util/TiLoadImageManager;

    iget-object v3, v3, Lorg/appcelerator/titanium/util/TiLoadImageManager;->handler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 140
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiLoadImageManager$LoadImageJob;->imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 141
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
