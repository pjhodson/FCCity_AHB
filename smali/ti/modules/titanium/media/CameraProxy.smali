.class public Lti/modules/titanium/media/CameraProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "CameraProxy.java"


# static fields
.field private static camera:Lti/modules/titanium/media/TiCamera;

.field private static cameraPreview:Lti/modules/titanium/media/CameraPreviewProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lti/modules/titanium/media/CameraProxy;->camera:Lti/modules/titanium/media/TiCamera;

    .line 19
    sput-object v0, Lti/modules/titanium/media/CameraProxy;->cameraPreview:Lti/modules/titanium/media/CameraPreviewProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 25
    sget-object v0, Lti/modules/titanium/media/CameraProxy;->camera:Lti/modules/titanium/media/TiCamera;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lti/modules/titanium/media/TiCamera;

    invoke-direct {v0}, Lti/modules/titanium/media/TiCamera;-><init>()V

    sput-object v0, Lti/modules/titanium/media/CameraProxy;->camera:Lti/modules/titanium/media/TiCamera;

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 32
    invoke-direct {p0}, Lti/modules/titanium/media/CameraProxy;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getPreview(Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/media/CameraPreviewProxy;
    .locals 2
    .parameter "options"

    .prologue
    .line 38
    sget-object v0, Lti/modules/titanium/media/CameraProxy;->cameraPreview:Lti/modules/titanium/media/CameraPreviewProxy;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lti/modules/titanium/media/CameraPreviewProxy;

    invoke-direct {v0}, Lti/modules/titanium/media/CameraPreviewProxy;-><init>()V

    sput-object v0, Lti/modules/titanium/media/CameraProxy;->cameraPreview:Lti/modules/titanium/media/CameraPreviewProxy;

    .line 40
    sget-object v0, Lti/modules/titanium/media/CameraProxy;->cameraPreview:Lti/modules/titanium/media/CameraPreviewProxy;

    sget-object v1, Lti/modules/titanium/media/CameraProxy;->camera:Lti/modules/titanium/media/TiCamera;

    invoke-virtual {v1}, Lti/modules/titanium/media/TiCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/CameraPreviewProxy;->setCamera(Landroid/hardware/Camera;)V

    .line 41
    sget-object v0, Lti/modules/titanium/media/CameraProxy;->cameraPreview:Lti/modules/titanium/media/CameraPreviewProxy;

    invoke-virtual {v0, p1}, Lti/modules/titanium/media/CameraPreviewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 44
    :cond_0
    sget-object v0, Lti/modules/titanium/media/CameraProxy;->cameraPreview:Lti/modules/titanium/media/CameraPreviewProxy;

    return-object v0
.end method
