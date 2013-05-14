.class final Lti/modules/titanium/media/TiCameraActivity$1;
.super Ljava/lang/Object;
.source "TiCameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiCameraActivity;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "success"
    .parameter "camera"

    .prologue
    const/4 v1, 0x0

    .line 293
    sget-object v0, Lti/modules/titanium/media/TiCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p2, v1, v1, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 294
    return-void
.end method
