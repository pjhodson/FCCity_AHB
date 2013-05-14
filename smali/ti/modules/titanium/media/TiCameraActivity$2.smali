.class final Lti/modules/titanium/media/TiCameraActivity$2;
.super Ljava/lang/Object;
.source "TiCameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/TiCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 304
    sget-boolean v2, Lti/modules/titanium/media/TiCameraActivity;->saveToPhotoGallery:Z

    if-eqz v2, :cond_0

    .line 305
    #calls: Lti/modules/titanium/media/TiCameraActivity;->saveToPhotoGallery([B)V
    invoke-static {p1}, Lti/modules/titanium/media/TiCameraActivity;->access$000([B)V

    .line 308
    :cond_0
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_1

    .line 309
    invoke-static {p1}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v1

    .line 310
    .local v1, imageData:Lorg/appcelerator/titanium/TiBlob;
    const-string v2, "image/jpeg"

    invoke-static {v1, v2}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 311
    .local v0, dict:Lorg/appcelerator/kroll/KrollDict;
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->successCallback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v3, Lti/modules/titanium/media/TiCameraActivity;->callbackContext:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v2, v3, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 314
    .end local v0           #dict:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #imageData:Lorg/appcelerator/titanium/TiBlob;
    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lti/modules/titanium/media/TiCameraActivity;->cancelCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 315
    sget-object v2, Lti/modules/titanium/media/TiCameraActivity;->cameraActivity:Lti/modules/titanium/media/TiCameraActivity;

    invoke-virtual {v2}, Lti/modules/titanium/media/TiCameraActivity;->finish()V

    .line 316
    return-void
.end method
