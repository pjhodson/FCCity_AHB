.class public Lti/modules/titanium/media/TiCameraActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiCameraActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiCameraActivity"

.field public static callbackContext:Lorg/appcelerator/kroll/KrollObject;

.field private static camera:Landroid/hardware/Camera;

.field public static cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

.field public static cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

.field public static errorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field static jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field public static overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field public static saveToPhotoGallery:Z

.field public static successCallback:Lorg/appcelerator/kroll/KrollFunction;


# instance fields
.field private cameraLayout:Landroid/widget/FrameLayout;

.field private localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private preview:Landroid/view/SurfaceView;

.field private previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

.field private previewRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 54
    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lti/modules/titanium/media/TiCameraActivity;->saveToPhotoGallery:Z

    .line 302
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$2;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCameraActivity$2;-><init>()V

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    .line 60
    return-void
.end method

.method static synthetic access$000([B)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lti/modules/titanium/media/TiCameraActivity;->saveToPhotoGallery([B)V

    return-void
.end method

.method private static getOptimalPreviewSize(Ljava/util/List;IID)Landroid/hardware/Camera$Size;
    .locals 16
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "aspectRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;IID)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3f50624dd2f1a9fcL

    .line 212
    .local v2, ASPECT_TOLERANCE:D
    const/4 v7, 0x0

    .line 213
    .local v7, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v5, 0x7fefffffffffffffL

    .line 215
    .local v5, minDiff:D
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 216
    .local v11, targetHeight:I
    if-gtz v11, :cond_0

    .line 218
    move/from16 v11, p2

    .line 221
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 222
    .local v10, size:Landroid/hardware/Camera$Size;
    iget v12, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v12

    iget v14, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v14

    div-double v8, v12, v14

    .line 223
    .local v8, ratio:D
    sub-double v12, v8, p3

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_1

    .line 225
    iget v12, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    cmpg-double v12, v12, v5

    if-gez v12, :cond_1

    .line 226
    move-object v7, v10

    .line 227
    iget v12, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v5, v12

    goto :goto_0

    .line 234
    .end local v8           #ratio:D
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_2
    if-nez v7, :cond_4

    .line 235
    const-string v12, "TiCameraActivity"

    const-string v13, "No preview size found that matches the aspect ratio."

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-wide v5, 0x7fefffffffffffffL

    .line 237
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 238
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    iget v12, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    cmpg-double v12, v12, v5

    if-gez v12, :cond_3

    .line 239
    move-object v7, v10

    .line 240
    iget v12, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v5, v12

    goto :goto_1

    .line 245
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_4
    return-object v7
.end method

.method private static onError(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "message"

    .prologue
    .line 249
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-nez v1, :cond_0

    .line 250
    const-string v1, "TiCameraActivity"

    invoke-static {v1, p1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 255
    .local v0, dict:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v0, p0, p1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 256
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->errorCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->callbackContext:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v1, v2, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private static saveToPhotoGallery([B)V
    .locals 9
    .parameter "data"

    .prologue
    .line 262
    invoke-static {}, Lti/modules/titanium/media/MediaModule;->createGalleryImageFile()Ljava/io/File;

    move-result-object v3

    .line 264
    .local v3, imageFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 265
    .local v4, imageOut:Ljava/io/FileOutputStream;
    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 266
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    .end local v4           #imageOut:Ljava/io/FileOutputStream;
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v5, mediaScanIntent:Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 278
    .local v1, contentUri:Landroid/net/Uri;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 279
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    return-void

    .line 268
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v5           #mediaScanIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 269
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v6, "TiCameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open gallery image file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 272
    .local v2, e:Ljava/io/IOException;
    const-string v6, "TiCameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write image to gallery file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    goto :goto_0
.end method

.method public static takePicture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 285
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, focusMode:Ljava/lang/String;
    const-string v2, "edof"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fixed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "infinity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$1;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCameraActivity$1;-><init>()V

    .line 296
    .local v0, focusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 300
    .end local v0           #focusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    :goto_0
    return-void

    .line 298
    :cond_0
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v2, v4, v4, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 92
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    .line 96
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 97
    .local v0, previewHolder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 98
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 101
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 102
    const/4 v1, 0x0

    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 105
    new-instance v1, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    .line 106
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    .line 107
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 108
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiCameraActivity;->setRequestedOrientation(I)V

    .line 111
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/TiCameraActivity;->setContentView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    .line 179
    invoke-direct {p0}, Lti/modules/titanium/media/TiCameraActivity;->stopPreview()V

    .line 180
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->removeView(Landroid/view/View;)V

    .line 181
    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 184
    :try_start_0
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 185
    const/4 v1, 0x0

    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    sput-object v4, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 191
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "TiCameraActivity"

    const-string v2, "Camera is not open, unable to release"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 168
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    .line 170
    sput-object p0, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    .line 171
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->preview:Landroid/view/SurfaceView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lti/modules/titanium/media/TiCameraActivity;->cameraLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lti/modules/titanium/media/TiCameraActivity;->localOverlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 11
    .parameter "previewHolder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 115
    iget-boolean v7, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    if-nez v7, :cond_2

    .line 117
    sget-object v7, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 118
    .local v2, param:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 119
    .local v3, pictureSize:Landroid/hardware/Camera$Size;
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double v0, v7, v9

    .line 120
    .local v0, aspectRatio:D
    iget-object v7, p0, Lti/modules/titanium/media/TiCameraActivity;->previewLayout:Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;

    invoke-virtual {v7, v0, v1}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->setAspectRatio(D)V

    .line 121
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 122
    .local v6, supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {v6, p3, p4, v0, v1}, Lti/modules/titanium/media/TiCameraActivity;->getOptimalPreviewSize(Ljava/util/List;IID)Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 125
    .local v4, previewSize:Landroid/hardware/Camera$Size;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    .line 126
    .local v5, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "continuous-picture"

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 127
    const-string v7, "continuous-picture"

    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 135
    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 136
    sget-object v7, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v7, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 139
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lti/modules/titanium/media/TiCameraActivity;->previewRunning:Z

    .line 140
    sget-object v7, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->startPreview()V

    .line 142
    .end local v0           #aspectRatio:D
    .end local v2           #param:Landroid/hardware/Camera$Parameters;
    .end local v3           #pictureSize:Landroid/hardware/Camera$Size;
    .end local v4           #previewSize:Landroid/hardware/Camera$Size;
    .end local v5           #supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    return-void

    .line 128
    .restart local v0       #aspectRatio:D
    .restart local v2       #param:Landroid/hardware/Camera$Parameters;
    .restart local v3       #pictureSize:Landroid/hardware/Camera$Size;
    .restart local v4       #previewSize:Landroid/hardware/Camera$Size;
    .restart local v5       #supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    const-string v7, "auto"

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 129
    const-string v7, "auto"

    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    const-string v7, "macro"

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    const-string v7, "macro"

    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "previewHolder"

    .prologue
    .line 145
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    .line 148
    :try_start_0
    sget-object v1, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to setup preview surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lti/modules/titanium/media/TiCameraActivity;->onError(ILjava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    sput-object v1, Lti/modules/titanium/media/TiCameraActivity;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 153
    invoke-virtual {p0}, Lti/modules/titanium/media/TiCameraActivity;->finish()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "previewHolder"

    .prologue
    .line 161
    invoke-direct {p0}, Lti/modules/titanium/media/TiCameraActivity;->stopPreview()V

    .line 162
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lti/modules/titanium/media/TiCameraActivity;->camera:Landroid/hardware/Camera;

    .line 164
    return-void
.end method
