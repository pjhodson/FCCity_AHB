.class public Lti/modules/titanium/media/MediaModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "MediaModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/MediaModule$CameraResultHandler;,
        Lti/modules/titanium/media/MediaModule$CallbackWrapper;
    }
.end annotation

.annotation runtime Lorg/appcelerator/titanium/ContextSpecific;
.end annotation


# static fields
.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field public static final DEVICE_BUSY:I = 0x1

.field private static final FEATURE_CAMERA_FRONT:Ljava/lang/String; = "android.hardware.camera.front"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final MEDIA_TYPE_PHOTO:Ljava/lang/String; = "public.image"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "public.video"

.field protected static final MSG_INVOKE_CALLBACK:I = 0x136

.field protected static final MSG_LAST_ID:I = 0x136

.field public static final NO_CAMERA:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final NO_VIDEO:I = 0x3

.field private static final PHOTO_DCIM_CAMERA:Ljava/lang/String; = "/sdcard/dcim/Camera"

.field private static final TAG:Ljava/lang/String; = "TiMedia"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final VIDEO_CONTROL_DEFAULT:I = 0x0

.field public static final VIDEO_CONTROL_EMBEDDED:I = 0x1

.field public static final VIDEO_CONTROL_FULLSCREEN:I = 0x2

.field public static final VIDEO_CONTROL_HIDDEN:I = 0x4

.field public static final VIDEO_CONTROL_NONE:I = 0x3

.field public static final VIDEO_FINISH_REASON_PLAYBACK_ENDED:I = 0x0

.field public static final VIDEO_FINISH_REASON_PLAYBACK_ERROR:I = 0x1

.field public static final VIDEO_FINISH_REASON_USER_EXITED:I = 0x2

.field public static final VIDEO_LOAD_STATE_PLAYABLE:I = 0x1

.field public static final VIDEO_LOAD_STATE_PLAYTHROUGH_OK:I = 0x2

.field public static final VIDEO_LOAD_STATE_STALLED:I = 0x4

.field public static final VIDEO_LOAD_STATE_UNKNOWN:I = 0x0

.field public static final VIDEO_PLAYBACK_STATE_INTERRUPTED:I = 0x3

.field public static final VIDEO_PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final VIDEO_PLAYBACK_STATE_PLAYING:I = 0x1

.field public static final VIDEO_PLAYBACK_STATE_SEEKING_BACKWARD:I = 0x5

.field public static final VIDEO_PLAYBACK_STATE_SEEKING_FORWARD:I = 0x4

.field public static final VIDEO_PLAYBACK_STATE_STOPPED:I = 0x0

.field public static final VIDEO_SCALING_ASPECT_FILL:I = 0x1

.field public static final VIDEO_SCALING_ASPECT_FIT:I = 0x2

.field public static final VIDEO_SCALING_MODE_FILL:I = 0x3

.field public static final VIDEO_SCALING_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lti/modules/titanium/media/MediaModule;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 123
    invoke-direct {p0}, Lti/modules/titanium/media/MediaModule;-><init>()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lti/modules/titanium/media/MediaModule;->invokeCallback(Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V

    return-void
.end method

.method static synthetic access$100(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method public static createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .parameter "path"
    .parameter "mimeType"

    .prologue
    const/4 v3, 0x0

    .line 686
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    aput-object p0, v1, v3

    .line 687
    .local v1, parts:[Ljava/lang/String;
    invoke-static {v1, v3}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    .line 688
    .local v0, imageData:Lorg/appcelerator/titanium/TiBlob;
    invoke-static {v0, p1}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    return-object v2
.end method

.method public static createDictForImage(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 8
    .parameter "imageData"
    .parameter "mimeType"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 692
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 693
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v7, v6}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 695
    const/4 v4, -0x1

    .line 696
    .local v4, width:I
    const/4 v2, -0x1

    .line 698
    .local v2, height:I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 699
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 703
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 705
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 706
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 708
    const-string v5, "x"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v5, "y"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string v5, "width"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v5, "height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 714
    .local v0, cropRect:Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "x"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v5, "y"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v5, "width"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v5, "height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v5, "cropRect"

    invoke-virtual {v1, v5, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v5, "mediaType"

    const-string v6, "public.image"

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v5, "media"

    invoke-virtual {v1, v5, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    return-object v1
.end method

.method public static createGalleryImageFile()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 330
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 331
    .local v3, pictureDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v4

    invoke-interface {v4}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    .local v0, appPictureDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    const-string v4, "TiMedia"

    const-string v5, "Failed to create application gallery directory."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-object v2

    .line 341
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v4

    const-string v5, ".jpg"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, imageFile:Ljava/io/File;
    goto :goto_0

    .line 343
    .end local v2           #imageFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/io/IOException;
    const-string v4, "TiMedia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create gallery image file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doInvokeCallback(Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .parameter "callbackActivity"
    .parameter "callback"
    .parameter "krollObject"
    .parameter "callbackArgs"

    .prologue
    .line 365
    iget-boolean v1, p1, Lorg/appcelerator/titanium/TiBaseActivity;->isResumed:Z

    if-eqz v1, :cond_0

    .line 366
    invoke-interface {p2, p3, p4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 373
    :goto_0
    return-void

    .line 369
    :cond_0
    new-instance v0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/media/MediaModule$CallbackWrapper;-><init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V

    .line 370
    .local v0, callbackWrapper:Lti/modules/titanium/media/MediaModule$CallbackWrapper;
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x136

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 371
    .local v6, message:Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private invokeCallback(Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .parameter "callbackActivity"
    .parameter "callback"
    .parameter "krollObject"
    .parameter "callbackArgs"

    .prologue
    .line 353
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollRuntime;->isRuntimeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Lti/modules/titanium/media/MediaModule;->doInvokeCallback(Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    new-instance v0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/media/MediaModule$CallbackWrapper;-><init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V

    .line 358
    .local v0, callbackWrapper:Lti/modules/titanium/media/MediaModule$CallbackWrapper;
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x136

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 359
    .local v6, message:Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method createDictForImage(II[B)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 727
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 729
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 735
    .local v0, cropRect:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v2, "cropRect"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v2, "mediaType"

    const-string v3, "public.image"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v2, "media"

    const-string v3, "image/png"

    invoke-static {p3, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    return-object v1
.end method

.method public getIsCameraSupported()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 863
    .local v0, application:Landroid/app/Application;
    if-nez v0, :cond_1

    .line 864
    const-string v3, "TiMedia"

    const-string v4, "Could not retrieve application instance, returning false for isCameraSupported."

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    :goto_0
    return v2

    .line 868
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 869
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-nez v1, :cond_2

    .line 870
    const-string v3, "TiMedia"

    const-string v4, "Could not retrieve PackageManager instance, returning false for isCameraSupported."

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_2
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .line 317
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 326
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 319
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;

    .line 320
    .local v0, callbackWrapper:Lti/modules/titanium/media/MediaModule$CallbackWrapper;
    iget-object v1, v0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->callbackActivity:Lorg/appcelerator/titanium/TiBaseActivity;

    iget-object v2, v0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v3, v0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    iget-object v4, v0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->callbackArgs:Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p0, v1, v2, v3, v4}, Lti/modules/titanium/media/MediaModule;->doInvokeCallback(Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V

    .line 322
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_0
    .end packed-switch
.end method

.method public openPhotoGallery(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .parameter "options"

    .prologue
    .line 614
    const/4 v9, 0x0

    .line 615
    .local v9, successCallback:Lorg/appcelerator/kroll/KrollFunction;
    const/4 v2, 0x0

    .line 616
    .local v2, cancelCallback:Lorg/appcelerator/kroll/KrollFunction;
    const/4 v4, 0x0

    .line 618
    .local v4, errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    const-string v10, "success"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 619
    const-string v10, "success"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #successCallback:Lorg/appcelerator/kroll/KrollFunction;
    check-cast v9, Lorg/appcelerator/kroll/KrollFunction;

    .line 621
    .restart local v9       #successCallback:Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    const-string v10, "cancel"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 622
    const-string v10, "cancel"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cancelCallback:Lorg/appcelerator/kroll/KrollFunction;
    check-cast v2, Lorg/appcelerator/kroll/KrollFunction;

    .line 624
    .restart local v2       #cancelCallback:Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v10, "error"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 625
    const-string v10, "error"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    check-cast v4, Lorg/appcelerator/kroll/KrollFunction;

    .line 628
    .restart local v4       #errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    move-object v7, v9

    .line 629
    .local v7, fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;
    move-object v5, v2

    .line 630
    .local v5, fCancelCallback:Lorg/appcelerator/kroll/KrollFunction;
    move-object v6, v4

    .line 632
    .local v6, fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;
    const-string v10, "TiMedia"

    const-string v11, "openPhotoGallery called"

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, activity:Landroid/app/Activity;
    move-object v1, v0

    .line 635
    check-cast v1, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 637
    .local v1, activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v8, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-direct {v8, v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 638
    .local v8, galleryIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.action.PICK"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    invoke-virtual {v8}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "image/*"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    invoke-virtual {v8}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v10, "GALLERY"

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 643
    invoke-interface {v1}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v3

    .line 644
    .local v3, code:I
    invoke-virtual {v8}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v10

    new-instance v11, Lti/modules/titanium/media/MediaModule$1;

    invoke-direct {v11, p0, v5, v7, v6}, Lti/modules/titanium/media/MediaModule$1;-><init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-interface {v1, v10, v3, v11}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 683
    return-void
.end method

.method public previewImage(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 16
    .parameter "options"

    .prologue
    .line 749
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 750
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 751
    const-string v13, "TiMedia"

    const-string v14, "Unable to get current activity for previewImage."

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_0
    return-void

    .line 755
    :cond_0
    const/4 v12, 0x0

    .line 756
    .local v12, successCallback:Lorg/appcelerator/kroll/KrollFunction;
    const/4 v4, 0x0

    .line 757
    .local v4, errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    const/4 v8, 0x0

    .line 759
    .local v8, image:Lorg/appcelerator/titanium/TiBlob;
    const-string v13, "success"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 760
    const-string v13, "success"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #successCallback:Lorg/appcelerator/kroll/KrollFunction;
    check-cast v12, Lorg/appcelerator/kroll/KrollFunction;

    .line 762
    .restart local v12       #successCallback:Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 763
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    check-cast v4, Lorg/appcelerator/kroll/KrollFunction;

    .line 765
    .restart local v4       #errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    const-string v13, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 766
    const-string v13, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #image:Lorg/appcelerator/titanium/TiBlob;
    check-cast v8, Lorg/appcelerator/titanium/TiBlob;

    .line 769
    .restart local v8       #image:Lorg/appcelerator/titanium/TiBlob;
    :cond_3
    if-nez v8, :cond_4

    .line 770
    if-eqz v4, :cond_4

    .line 771
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v13

    const/4 v14, -0x1

    const-string v15, "Missing image property"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 775
    :cond_4
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiBlob;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 777
    .local v5, f:Lorg/appcelerator/titanium/io/TiBaseFile;
    move-object v7, v12

    .line 778
    .local v7, fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;
    move-object v6, v4

    .line 780
    .local v6, fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;
    const-string v13, "TiMedia"

    const-string v14, "openPhotoGallery called"

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 782
    check-cast v2, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 784
    .local v2, activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .local v9, intent:Landroid/content/Intent;
    new-instance v11, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    invoke-direct {v11, v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 786
    .local v11, previewIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 788
    .local v10, mimeType:Ljava/lang/String;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 789
    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    :goto_1
    const-string v13, "PREVIEW"

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 796
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v3

    .line 797
    .local v3, code:I
    new-instance v13, Lti/modules/titanium/media/MediaModule$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v6}, Lti/modules/titanium/media/MediaModule$2;-><init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-interface {v2, v9, v3, v13}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    goto/16 :goto_0

    .line 791
    .end local v3           #code:I
    :cond_5
    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public showCamera(Ljava/util/HashMap;)V
    .locals 32
    .parameter "options"

    .prologue
    .line 141
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    .line 143
    .local v4, activity:Landroid/app/Activity;
    const-string v27, "TiMedia"

    const-string v28, "showCamera called"

    const-string v29, "DEBUG_MODE"

    invoke-static/range {v27 .. v29}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v24, 0x0

    .line 146
    .local v24, successCallback:Lorg/appcelerator/kroll/KrollFunction;
    const/4 v8, 0x0

    .line 147
    .local v8, cancelCallback:Lorg/appcelerator/kroll/KrollFunction;
    const/4 v10, 0x0

    .line 149
    .local v10, errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    const-string v27, "success"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 150
    const-string v27, "success"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #successCallback:Lorg/appcelerator/kroll/KrollFunction;
    check-cast v24, Lorg/appcelerator/kroll/KrollFunction;

    .line 152
    .restart local v24       #successCallback:Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    const-string v27, "cancel"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 153
    const-string v27, "cancel"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #cancelCallback:Lorg/appcelerator/kroll/KrollFunction;
    check-cast v8, Lorg/appcelerator/kroll/KrollFunction;

    .line 155
    .restart local v8       #cancelCallback:Lorg/appcelerator/kroll/KrollFunction;
    :cond_1
    const-string v27, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 156
    const-string v27, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    check-cast v10, Lorg/appcelerator/kroll/KrollFunction;

    .line 159
    .restart local v10       #errorCallback:Lorg/appcelerator/kroll/KrollFunction;
    :cond_2
    const/16 v23, 0x0

    .line 160
    .local v23, saveToPhotoGallery:Z
    const-string v27, "saveToPhotoGallery"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 161
    const-string v27, "saveToPhotoGallery"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v23

    .line 165
    :cond_3
    const-string v27, "overlay"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 166
    const-string v27, "overlay"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    sput-object v27, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 168
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v27

    sput-object v27, Lti/modules/titanium/media/TiCameraActivity;->callbackContext:Lorg/appcelerator/kroll/KrollObject;

    .line 169
    sput-object v24, Lti/modules/titanium/media/TiCameraActivity;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 170
    sput-object v10, Lti/modules/titanium/media/TiCameraActivity;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 171
    sput-object v8, Lti/modules/titanium/media/TiCameraActivity;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 172
    sput-boolean v23, Lti/modules/titanium/media/TiCameraActivity;->saveToPhotoGallery:Z

    .line 174
    new-instance v16, Landroid/content/Intent;

    const-class v27, Lti/modules/titanium/media/TiCameraActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 289
    .end local v16           #intent:Landroid/content/Intent;
    :cond_4
    :goto_0
    return-void

    .line 179
    :cond_5
    const/4 v6, 0x0

    .line 181
    .local v6, camera:Landroid/hardware/Camera;
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    .line 182
    if-eqz v6, :cond_6

    .line 183
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    const/4 v6, 0x0

    :cond_6
    move-object v5, v4

    .line 199
    check-cast v5, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 200
    .local v5, activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v26

    .line 202
    .local v26, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    new-instance v7, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 203
    .local v7, cameraIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    sget-object v27, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v27, :cond_d

    .line 204
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "android.intent.category.DEFAULT"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :goto_1
    const-string v27, "CAMERA"

    invoke-static/range {v27 .. v27}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 212
    .local v19, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const/high16 v28, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 215
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v17, 0x0

    .line 217
    .local v17, isHTCCameraApp:Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .line 219
    .local v22, rs:Landroid/content/pm/ResolveInfo;
    :try_start_1
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "HTC"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_8

    sget-object v27, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v28, "HTC"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v27

    if-eqz v27, :cond_7

    .line 220
    :cond_8
    const/16 v17, 0x1

    .line 228
    .end local v22           #rs:Landroid/content/pm/ResolveInfo;
    :cond_9
    const/4 v12, 0x0

    .line 229
    .local v12, imageDir:Ljava/io/File;
    const/4 v14, 0x0

    .line 232
    .local v14, imageFile:Ljava/io/File;
    if-eqz v23, :cond_e

    .line 234
    if-nez v17, :cond_a

    .line 235
    :try_start_2
    invoke-static {}, Lti/modules/titanium/media/MediaModule;->createGalleryImageFile()Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .line 273
    :cond_a
    :goto_3
    new-instance v20, Lti/modules/titanium/media/MediaModule$CameraResultHandler;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;-><init>(Lti/modules/titanium/media/MediaModule;)V

    .line 274
    .local v20, resultHandler:Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    move-object/from16 v0, v20

    iput-object v14, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    .line 275
    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    .line 276
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 277
    move-object/from16 v0, v20

    iput-object v8, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 278
    move-object/from16 v0, v20

    iput-object v10, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 279
    move-object/from16 v0, v20

    iput-object v5, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 280
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cameraIntent:Landroid/content/Intent;

    .line 282
    if-eqz v14, :cond_b

    .line 283
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "file://"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 284
    .local v15, imageUrl:Ljava/lang/String;
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "output"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    move-object/from16 v0, v20

    iput-object v15, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    .line 288
    .end local v15           #imageUrl:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 187
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    .end local v7           #cameraIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #imageDir:Ljava/io/File;
    .end local v14           #imageFile:Ljava/io/File;
    .end local v17           #isHTCCameraApp:Z
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #resultHandler:Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    .end local v26           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :catch_0
    move-exception v25

    .line 188
    .local v25, t:Ljava/lang/Throwable;
    if-eqz v6, :cond_c

    .line 189
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 192
    :cond_c
    if-eqz v10, :cond_4

    .line 193
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x2

    const-string v31, "Camera not available."

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v10, v0, v1}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 207
    .end local v25           #t:Ljava/lang/Throwable;
    .restart local v5       #activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    .restart local v7       #cameraIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .restart local v26       #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_d
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v27

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/appcelerator/titanium/TiApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v28

    const-class v29, Lti/modules/titanium/media/TiCameraActivity;

    invoke-virtual/range {v27 .. v29}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 239
    .restart local v3       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #imageDir:Ljava/io/File;
    .restart local v14       #imageFile:Ljava/io/File;
    .restart local v17       #isHTCCameraApp:Z
    .restart local v19       #pm:Landroid/content/pm/PackageManager;
    :cond_e
    :try_start_3
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    if-eqz v27, :cond_11

    .line 240
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v18

    .line 244
    .local v18, name:Ljava/lang/String;
    if-eqz v17, :cond_10

    .line 245
    new-instance v13, Ljava/io/File;

    const-string v27, "/sdcard/dcim/Camera"

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v12           #imageDir:Ljava/io/File;
    .local v13, imageDir:Ljava/io/File;
    move-object v12, v13

    .line 250
    .end local v13           #imageDir:Ljava/io/File;
    .restart local v12       #imageDir:Ljava/io/File;
    :goto_4
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_f

    .line 251
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 252
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_f

    .line 253
    const-string v27, "TiMedia"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Attempt to create \'"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\' failed silently."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v18           #name:Ljava/lang/String;
    :cond_f
    :goto_5
    const-string v27, ".jpg"

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v12, v1, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v14

    goto/16 :goto_3

    .line 247
    .restart local v18       #name:Ljava/lang/String;
    :cond_10
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    .line 248
    .local v21, rootsd:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/dcim/Camera/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v12           #imageDir:Ljava/io/File;
    .restart local v13       #imageDir:Ljava/io/File;
    move-object v12, v13

    .end local v13           #imageDir:Ljava/io/File;
    .restart local v12       #imageDir:Ljava/io/File;
    goto :goto_4

    .line 258
    .end local v18           #name:Ljava/lang/String;
    .end local v21           #rootsd:Ljava/io/File;
    :cond_11
    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lorg/appcelerator/titanium/util/TiFileHelper;->getDataDirectory(Z)Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v12

    goto :goto_5

    .line 264
    :catch_1
    move-exception v9

    .line 265
    .local v9, e:Ljava/io/IOException;
    const-string v27, "TiMedia"

    const-string v28, "Unable to create temp file"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    if-eqz v10, :cond_4

    .line 267
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v27

    const/16 v28, -0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v10, v0, v1}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 223
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #imageDir:Ljava/io/File;
    .end local v14           #imageFile:Ljava/io/File;
    .restart local v22       #rs:Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v27

    goto/16 :goto_2
.end method

.method public takePicture()V
    .locals 2

    .prologue
    .line 852
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    if-eqz v0, :cond_0

    .line 853
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->takePicture()V

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_0
    const-string v0, "TiMedia"

    const-string v1, "Camera preview is not open, unable to take photo"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takeScreenshot(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 9
    .parameter "callback"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 824
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 826
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 827
    const-string v3, "TiMedia"

    const-string v4, "Could not get current activity for takeScreenshot."

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v8, v4, v6

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 833
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    .line 836
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 838
    .local v2, w:Landroid/view/Window;
    :goto_2
    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 839
    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v2

    goto :goto_2

    .line 842
    :cond_3
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v8, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 843
    .local v1, image:Lorg/appcelerator/kroll/KrollDict;
    if-eqz p1, :cond_0

    .line 844
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {p1, v3, v4}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public vibrate([J)V
    .locals 3
    .parameter "pattern"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 129
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    sget-object p1, Lti/modules/titanium/media/MediaModule;->DEFAULT_VIBRATE_PATTERN:[J

    .line 132
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 133
    .local v0, vibrator:Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    .line 134
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 136
    :cond_2
    return-void
.end method
