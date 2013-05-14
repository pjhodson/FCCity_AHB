.class public Lorg/appcelerator/titanium/util/TiImageHelper;
.super Ljava/lang/Object;
.source "TiImageHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiImageHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static imageWithAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "image"

    .prologue
    .line 38
    if-nez p0, :cond_1

    .line 39
    const/4 p0, 0x0

    .line 44
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 41
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static imageWithRoundedCorner(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "image"
    .parameter "cornerRadius"
    .parameter "borderSize"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v4, 0x0

    .line 95
    :goto_0
    return-object v4

    .line 64
    :cond_0
    cmpg-float v9, p1, v10

    if-lez v9, :cond_1

    cmpg-float v9, p2, v10

    if-gez v9, :cond_2

    .line 65
    :cond_1
    const-string v9, "TiImageHelper"

    const-string v10, "Unable to add rounded corners. Invalid corner radius or borderSize for imageWithRoundedCorner"

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p0

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 70
    .local v8, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 71
    .local v3, height:I
    mul-float v9, p2, v11

    float-to-int v9, v9

    add-int/2addr v9, v8

    mul-float v10, p2, v11

    float-to-int v10, v10

    add-int/2addr v10, v3

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 73
    .local v4, imageRoundedCorner:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 76
    .local v1, clipPath:Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v9, v8

    add-float/2addr v9, p2

    int-to-float v10, v3

    add-float/2addr v10, p2

    invoke-direct {v5, p2, p2, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    .local v5, imgRect:Landroid/graphics/RectF;
    const/16 v9, 0x8

    new-array v7, v9, [F

    .line 79
    .local v7, radii:[F
    invoke-static {v7, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 80
    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v5, v7, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 84
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .local v6, paint:Landroid/graphics/Paint;
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 93
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 94
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v9, p2, p2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 85
    .end local v6           #paint:Landroid/graphics/Paint;
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "TiImageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create the image with rounded corners. clipPath failed on canvas: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_1
.end method

.method public static imageWithTransparentBorder(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "image"
    .parameter "borderSize"

    .prologue
    const/4 v5, 0x1

    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 p0, 0x0

    .line 127
    .end local p0
    :goto_0
    return-object p0

    .line 112
    .restart local p0
    :cond_0
    if-gtz p1, :cond_1

    .line 113
    const-string v5, "TiImageHelper"

    const-string v6, "Unable to add a transparent border. Invalid border size for imageWithTransparentBorder."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 120
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 123
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 124
    .local v1, height:I
    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v4

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v6, v1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 125
    .local v2, imageBorder:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    int-to-float v6, p1

    int-to-float v7, p1

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v2

    .line 127
    goto :goto_0
.end method
