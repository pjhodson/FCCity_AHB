.class public Lti/modules/titanium/media/android/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiMedia.Android"

.field protected static _instance:Lti/modules/titanium/media/android/AndroidModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lti/modules/titanium/media/android/AndroidModule;->_instance:Lti/modules/titanium/media/android/AndroidModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 43
    sput-object p0, Lti/modules/titanium/media/android/AndroidModule;->_instance:Lti/modules/titanium/media/android/AndroidModule;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 48
    invoke-direct {p0}, Lti/modules/titanium/media/android/AndroidModule;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public scanMediaFiles([Ljava/lang/Object;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 5
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 54
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 55
    .local v2, mediaPaths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 56
    const/4 v3, 0x0

    aget-object v4, p1, v1

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/media/android/AndroidModule;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;

    invoke-direct {v3, v0, v2, p2, p3}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V

    invoke-virtual {v3}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->scan()V

    .line 61
    return-void
.end method

.method public setSystemWallpaper(Lorg/appcelerator/titanium/TiBlob;Z)V
    .locals 7
    .parameter "image"
    .parameter "scale"

    .prologue
    .line 66
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 67
    .local v1, ctx:Landroid/content/Context;
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 68
    .local v4, wm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lti/modules/titanium/media/android/AndroidModule;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v3

    .line 69
    .local v3, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    const/4 v0, 0x0

    .line 70
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    :goto_0
    if-eqz v0, :cond_1

    .line 77
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    return-void

    .line 73
    :cond_0
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TiMedia.Android"

    const-string v6, "Unable to set wallpaper bitmap"

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 82
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    const-string v5, "TiMedia.Android"

    const-string v6, "Unable to get bitmap to set wallpaper"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
