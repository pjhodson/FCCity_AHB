.class public Lti/modules/titanium/media/MediaModule$CameraResultHandler;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/MediaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraResultHandler"
.end annotation


# instance fields
.field protected activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

.field protected cameraIntent:Landroid/content/Intent;

.field protected cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected code:I

.field protected errorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected imageFile:Ljava/io/File;

.field protected imageUrl:Ljava/lang/String;

.field protected saveToPhotoGallery:Z

.field protected successCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;


# direct methods
.method protected constructor <init>(Lti/modules/titanium/media/MediaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invokeSuccessCallback(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8
    .parameter "activity"
    .parameter "localImageUrl"

    .prologue
    .line 585
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v3, :cond_0

    .line 586
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    move-object v3, v0

    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v6}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v6

    const-string v7, "image/jpeg"

    invoke-static {p2, v7}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    #calls: Lti/modules/titanium/media/MediaModule;->invokeCallback(Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V
    invoke-static {v4, v3, v5, v6, v7}, Lti/modules/titanium/media/MediaModule;->access$000(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 589
    .restart local p1
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Ljava/lang/OutOfMemoryError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough memory to get image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, msg:Ljava/lang/String;
    const-string v3, "TiMedia"

    invoke-static {v3, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v3, :cond_0

    .line 593
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    check-cast p1, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local p1
    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v5}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v7, -0x1

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v6, v7, v2}, Lti/modules/titanium/media/MediaModule;->access$100(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    #calls: Lti/modules/titanium/media/MediaModule;->invokeCallback(Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V
    invoke-static {v3, p1, v4, v5, v6}, Lti/modules/titanium/media/MediaModule;->access$000(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method private moveImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 519
    .local v2, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .local v8, src:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .local v5, dst:Ljava/io/File;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x1fa0

    invoke-direct {v1, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 524
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x1fa0

    invoke-direct {v3, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 526
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .local v3, bos:Ljava/io/BufferedOutputStream;
    const/16 v9, 0x1fa0

    :try_start_3
    new-array v4, v9, [B

    .line 527
    .local v4, buf:[B
    const/4 v7, 0x0

    .line 529
    .local v7, len:I
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 530
    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 534
    .end local v4           #buf:[B
    .end local v7           #len:I
    :catchall_0
    move-exception v9

    move-object v2, v3

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v0, :cond_0

    .line 535
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 538
    :cond_0
    if-eqz v2, :cond_1

    .line 539
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 544
    .end local v5           #dst:Ljava/io/File;
    .end local v8           #src:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 545
    .local v6, e:Ljava/io/IOException;
    :goto_2
    const-string v9, "TiMedia"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to move file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #e:Ljava/io/IOException;
    :goto_3
    return-void

    .line 534
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #buf:[B
    .restart local v5       #dst:Ljava/io/File;
    .restart local v7       #len:I
    .restart local v8       #src:Ljava/io/File;
    :cond_2
    if-eqz v1, :cond_3

    .line 535
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 538
    :cond_3
    if-eqz v3, :cond_4

    .line 539
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 542
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 546
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 544
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v6

    move-object v2, v3

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 534
    .end local v4           #buf:[B
    .end local v7           #len:I
    :catchall_1
    move-exception v9

    goto :goto_1

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private processImage(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    .line 551
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    .line 552
    .local v1, localUrl:Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, localPath:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 555
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v5, "_display_name"

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v5, "datetaken"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 558
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-boolean v5, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    if-eqz v5, :cond_0

    .line 560
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 561
    .local v3, rootsd:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dcim/Camera/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string v5, "bucket_id"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const-string v5, "bucket_display_name"

    const-string v6, "Camera"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->moveImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    .end local v3           #rootsd:Ljava/io/File;
    :goto_0
    const-string v5, "_data"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 576
    new-instance v2, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-direct {v2, p1, v5, v8, v8}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 577
    .local v2, mediaScanner:Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;
    invoke-virtual {v2}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->scan()V

    .line 579
    invoke-direct {p0, p1, v0}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->invokeSuccessCallback(Landroid/app/Activity;Ljava/lang/String;)V

    .line 580
    return-void

    .line 568
    .end local v2           #mediaScanner:Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;
    :cond_0
    const-string v5, "bucket_id"

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string v5, "bucket_display_name"

    iget-object v6, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 5
    .parameter "activity"
    .parameter "requestCode"
    .parameter "e"

    .prologue
    .line 600
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 603
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, msg:Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v4, -0x1

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v3, v4, v0}, Lti/modules/titanium/media/MediaModule;->access$200(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 608
    :cond_1
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 25
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 395
    if-nez p3, :cond_2

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 399
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v3, :cond_1

    .line 400
    new-instance v20, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct/range {v20 .. v20}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 401
    .local v20, response:Lorg/appcelerator/kroll/KrollDict;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v4}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v3, v4, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 510
    .end local v20           #response:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    :goto_0
    return-void

    .line 408
    :cond_2
    if-nez p4, :cond_3

    .line 409
    invoke-direct/range {p0 .. p1}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->processImage(Landroid/app/Activity;)V

    goto :goto_0

    .line 413
    :cond_3
    const/4 v3, 0x7

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "mime_type"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "bucket_id"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "bucket_display_name"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "datetaken"

    aput-object v4, v5, v3

    .line 423
    .local v5, projection:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 424
    .local v22, title:Ljava/lang/String;
    const/4 v14, 0x0

    .line 425
    .local v14, displayName:Ljava/lang/String;
    const/16 v19, 0x0

    .line 426
    .local v19, mimeType:Ljava/lang/String;
    const/4 v10, 0x0

    .line 427
    .local v10, bucketId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 428
    .local v9, bucketDisplayName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 429
    .local v12, dataPath:Ljava/lang/String;
    const/4 v13, 0x0

    .line 431
    .local v13, dateTaken:Ljava/lang/String;
    const/4 v11, 0x0

    .line 432
    .local v11, c:Landroid/database/Cursor;
    const/16 v17, 0x1

    .line 433
    .local v17, isDataValid:Z
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 436
    :cond_4
    if-nez v11, :cond_5

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "datetaken"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 439
    const/16 v17, 0x0

    .line 441
    :cond_5
    if-eqz v11, :cond_b

    .line 443
    const/16 v16, 0x0

    .line 444
    .local v16, isCursorValid:Z
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9

    if-eqz v17, :cond_9

    .line 445
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    .line 449
    :goto_1
    if-eqz v16, :cond_6

    .line 450
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 451
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 452
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 453
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 454
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 455
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 456
    const/4 v3, 0x6

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 458
    const-string v3, "TiMedia"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Image { title: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " displayName: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mimeType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bucketId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bucketDisplayName: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " path: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " }"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "DEBUG_MODE"

    invoke-static {v3, v4, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_6
    if-eqz v11, :cond_7

    .line 464
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 465
    const/4 v11, 0x0

    .line 474
    :cond_7
    move-object/from16 v18, v12

    .line 479
    .local v18, localImageUrl:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    if-nez v3, :cond_d

    .line 480
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 481
    .local v23, url:Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->moveImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v24, values:Landroid/content/ContentValues;
    const-string v3, "bucket_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string v3, "bucket_display_name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v3, "_data"

    move-object/from16 v0, p0

    iget-object v4, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_c

    if-eqz v17, :cond_c

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    .end local v23           #url:Ljava/net/URL;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->invokeSuccessCallback(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    .end local v18           #localImageUrl:Ljava/lang/String;
    :cond_9
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    goto/16 :goto_1

    .line 463
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_a

    .line 464
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 465
    const/4 v11, 0x0

    :cond_a
    throw v3

    .line 470
    .end local v16           #isCursorValid:Z
    :cond_b
    invoke-direct/range {p0 .. p1}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->processImage(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 492
    .restart local v16       #isCursorValid:Z
    .restart local v18       #localImageUrl:Ljava/lang/String;
    .restart local v23       #url:Ljava/net/URL;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_c
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "datetaken = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 503
    .end local v23           #url:Ljava/net/URL;
    .end local v24           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 504
    .local v15, e:Ljava/net/MalformedURLException;
    const-string v3, "TiMedia"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URL not moving image: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 497
    .end local v15           #e:Ljava/net/MalformedURLException;
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 499
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v23       #url:Ljava/net/URL;
    new-instance v21, Ljava/io/File;

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v21, source:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method public run()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    invoke-interface {v0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    .line 389
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cameraIntent:Landroid/content/Intent;

    iget v2, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    invoke-interface {v0, v1, v2, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 390
    return-void
.end method
