.class public Lorg/appcelerator/titanium/view/TiDrawableReference;
.super Ljava/lang/Object;
.source "TiDrawableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;,
        Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;
    }
.end annotation


# static fields
.field public static final DEFAULT_DECODE_RETRIES:I = 0x5

.field private static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final TAG:Ljava/lang/String; = "TiDrawableReference"

.field private static final UNKNOWN:I = -0x1

.field private static boundsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anyDensityFalse:Z

.field private autoRotate:Z

.field private blob:Lorg/appcelerator/titanium/TiBlob;

.field private decodeRetries:I

.field private file:Lorg/appcelerator/titanium/io/TiBaseFile;

.field private oomOccurred:Z

.field private orientation:I

.field private resourceId:I

.field private softActivity:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V
    .locals 3
    .parameter "activity"
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 82
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 83
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    .line 85
    iput v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    .line 95
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 96
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    .line 99
    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 104
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    .line 105
    const/4 v1, 0x5

    iput v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->decodeRetries:I

    .line 106
    return-void

    .line 102
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    goto :goto_0
.end method

.method private calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    .locals 14
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "destWidthDimension"
    .parameter "destHeightDimension"
    .parameter "parent"

    .prologue
    .line 483
    new-instance v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;-><init>()V

    .line 486
    .local v2, bounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    const/4 v3, -0x1

    .local v3, containerHeight:I
    move v4, v3

    .local v4, containerWidth:I
    move v9, v3

    .local v9, parentHeight:I
    move v10, v3

    .local v10, parentWidth:I
    move v5, v3

    .local v5, destHeight:I
    move v6, v3

    .line 488
    .local v6, destWidth:I
    const/4 v11, 0x0

    .line 489
    .local v11, widthSpecified:Z
    const/4 v7, 0x0

    .line 491
    .local v7, heightSpecified:Z
    if-eqz p5, :cond_0

    .line 492
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 493
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 497
    :cond_0
    if-eqz p3, :cond_6

    .line 498
    invoke-virtual/range {p3 .. p3}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 499
    move v4, p1

    .line 509
    :cond_1
    :goto_0
    if-gez v4, :cond_2

    .line 510
    const-string v12, "TiDrawableReference"

    const-string v13, "Could not determine container width for image. Defaulting to source width. This shouldn\'t happen."

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    move v4, p1

    .line 515
    :cond_2
    if-eqz p4, :cond_8

    .line 516
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 517
    move/from16 v3, p2

    .line 528
    :cond_3
    :goto_1
    if-gez v3, :cond_4

    .line 529
    const-string v12, "TiDrawableReference"

    const-string v13, "Could not determine container height for image. Defaulting to source height. This shouldn\'t happen."

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move/from16 v3, p2

    .line 533
    :cond_4
    int-to-float v12, p1

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v8, v12, v13

    .line 535
    .local v8, origAspectRatio:F
    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    .line 536
    move v6, v4

    .line 537
    move v5, v3

    .line 554
    :goto_2
    iput v6, v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 555
    iput v5, v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 556
    return-object v2

    .line 501
    .end local v8           #origAspectRatio:F
    :cond_5
    const/4 v11, 0x1

    .line 502
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    goto :goto_0

    .line 505
    :cond_6
    if-ltz v10, :cond_1

    .line 506
    move v4, v10

    goto :goto_0

    .line 519
    :cond_7
    const/4 v7, 0x1

    .line 520
    invoke-virtual/range {p4 .. p5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    goto :goto_1

    .line 523
    :cond_8
    if-ltz v9, :cond_3

    .line 524
    move v3, v9

    goto :goto_1

    .line 538
    .restart local v8       #origAspectRatio:F
    :cond_9
    if-eqz v11, :cond_a

    .line 539
    move v6, v4

    .line 540
    int-to-float v12, v6

    div-float/2addr v12, v8

    float-to-int v5, v12

    goto :goto_2

    .line 541
    :cond_a
    if-eqz v7, :cond_b

    .line 542
    move v5, v3

    .line 543
    int-to-float v12, v5

    mul-float/2addr v12, v8

    float-to-int v6, v12

    goto :goto_2

    .line 545
    :cond_b
    const/high16 v12, 0x3f80

    cmpl-float v12, v8, v12

    if-lez v12, :cond_c

    .line 546
    move v6, v4

    .line 547
    int-to-float v12, v6

    div-float/2addr v12, v8

    float-to-int v5, v12

    goto :goto_2

    .line 549
    :cond_c
    move v5, v3

    .line 550
    int-to-float v12, v5

    mul-float/2addr v12, v8

    float-to-int v6, v12

    goto :goto_2
.end method

.method public static fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "activity"
    .parameter "blob"

    .prologue
    .line 151
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 152
    .local v0, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    .line 153
    return-object v0
.end method

.method public static fromDictionary(Landroid/app/Activity;Ljava/util/HashMap;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "activity"
    .parameter "dict"

    .prologue
    .line 210
    const-string v0, "media"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    const-string v1, "media"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/util/HashMap;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 213
    :cond_0
    const-string v0, "TiDrawableReference"

    const-string v1, "Unknown drawable reference inside dictionary.  Expected key \'media\' to be a blob.  Returning null drawable reference"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "activity"
    .parameter "file"

    .prologue
    .line 203
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 204
    .local v0, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 205
    return-object v0
.end method

.method public static fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .parameter "activity"
    .parameter "object"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 244
    .end local p1
    :goto_0
    return-object v0

    .line 231
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 232
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_1
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 234
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromDictionary(Landroid/app/Activity;Ljava/util/HashMap;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 235
    .restart local p1
    :cond_2
    instance-of v0, p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v0, :cond_3

    .line 236
    check-cast p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    .end local p1
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 237
    .restart local p1
    :cond_3
    instance-of v0, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_4

    .line 238
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 240
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromResourceId(Landroid/app/Activity;I)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 242
    .restart local p1
    :cond_5
    const-string v0, "TiDrawableReference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown image resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Returning null drawable reference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromResourceId(Landroid/app/Activity;I)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "activity"
    .parameter "resourceId"

    .prologue
    .line 137
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 138
    .local v0, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 139
    return-object v0
.end method

.method public static fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .parameter "activity"
    .parameter "url"

    .prologue
    .line 180
    new-instance v1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v1, p0, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 181
    .local v1, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 188
    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 189
    iput v0, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 192
    .end local v0           #id:I
    :cond_0
    return-object v1
.end method

.method public static fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .parameter "proxy"
    .parameter "url"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 168
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/kroll/KrollProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method private getResourceDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeResourceId()Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    const/4 v0, 0x0

    .line 400
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    const/4 v0, 0x0

    .line 392
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 393
    .local v2, resources:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    if-lez v3, :cond_0

    .line 395
    :try_start_0
    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 867
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 868
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 869
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calcSampleSize(IIII)I
    .locals 2
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 830
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 831
    :cond_0
    const/4 v0, 0x1

    .line 833
    :goto_0
    return v0

    :cond_1
    div-int v0, p1, p3

    div-int v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public calcSampleSize(Landroid/view/View;IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)I
    .locals 9
    .parameter "parent"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "destWidthDimension"
    .parameter "destHeightDimension"

    .prologue
    .line 851
    const/4 v7, -0x1

    .local v7, destHeight:I
    move v8, v7

    .local v8, destWidth:I
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 852
    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v6

    .line 853
    .local v6, destBounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v8, v6, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 854
    iget v7, v6, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 855
    invoke-virtual {p0, p2, p3, v8, v7}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 129
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 132
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v0

    check-cast p1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .end local p1
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "destWidth"

    .prologue
    .line 468
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v3

    .line 469
    .local v3, orig:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v5, v3, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 470
    .local v5, srcWidth:I
    iget v4, v3, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 471
    .local v4, srcHeight:I
    if-lez v5, :cond_0

    if-gtz v4, :cond_1

    .line 472
    :cond_0
    const-string v6, "TiDrawableReference"

    const-string v7, "Bitmap bounds could not be determined.  If bitmap is loaded, it won\'t be scaled."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 477
    :goto_0
    return-object v6

    .line 475
    :cond_1
    int-to-double v6, v5

    int-to-double v8, v4

    div-double v0, v6, v8

    .line 476
    .local v0, aspectRatio:D
    int-to-double v6, p1

    div-double/2addr v6, v0

    double-to-int v2, v6

    .line 477
    .local v2, destHeight:I
    invoke-virtual {p0, p1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 455
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "parent"
    .parameter "destWidthDimension"
    .parameter "destHeightDimension"

    .prologue
    .line 573
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v11

    .line 574
    .local v11, bounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v3, v11, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 575
    .local v3, srcWidth:I
    iget v4, v11, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 577
    .local v4, srcHeight:I
    if-lez v3, :cond_0

    if-gtz v4, :cond_2

    .line 578
    :cond_0
    const-string v2, "TiDrawableReference"

    const-string v5, "Bitmap bounds could not be determined. If bitmap is loaded, it won\'t be scaled."

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 713
    :cond_1
    :goto_0
    return-object v9

    .line 582
    :cond_2
    if-nez p1, :cond_3

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 584
    .local v8, activity:Landroid/app/Activity;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 585
    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .end local v8           #activity:Landroid/app/Activity;
    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    .line 589
    invoke-direct/range {v2 .. v7}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v12

    .line 590
    .local v12, destBounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v14, v12, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 591
    .local v14, destWidth:I
    iget v13, v12, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 594
    .local v13, destHeight:I
    if-ne v3, v14, :cond_4

    if-ne v4, v13, :cond_4

    .line 595
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 598
    :cond_4
    if-lez v14, :cond_5

    if-gtz v13, :cond_6

    .line 600
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 603
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 604
    .local v17, is:Ljava/io/InputStream;
    if-nez v17, :cond_7

    .line 605
    const-string v2, "TiDrawableReference"

    const-string v5, "Could not open stream to get bitmap"

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v9, 0x0

    goto :goto_0

    .line 609
    :cond_7
    const/4 v9, 0x0

    .line 611
    .local v9, b:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 612
    .local v18, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 613
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 614
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v14, v13}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 615
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 616
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v19, sb:Ljava/lang/StringBuilder;
    const-string v2, "Bitmap calcSampleSize results: inSampleSize="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    const-string v2, "; srcWidth="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    const-string v2, "; srcHeight="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    const-string v2, "; finalWidth="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    const-string v2, "; finalHeight="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 630
    .end local v19           #sb:Ljava/lang/StringBuilder;
    :cond_8
    const/4 v10, 0x0

    .line 632
    .local v10, bTemp:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 633
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 634
    if-nez v10, :cond_a

    .line 635
    const-string v2, "TiDrawableReference"

    const-string v5, "Decoded bitmap is null"

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 636
    const/4 v2, 0x0

    .line 693
    if-eqz v10, :cond_9

    if-eq v10, v9, :cond_9

    .line 694
    :try_start_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 695
    const/4 v10, 0x0

    .line 701
    :cond_9
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    move-object v9, v2

    .line 704
    goto/16 :goto_0

    .line 702
    :catch_0
    move-exception v16

    .line 703
    .local v16, e:Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 639
    .end local v16           #e:Ljava/io/IOException;
    :cond_a
    :try_start_4
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 640
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .restart local v19       #sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeStream resulting bitmap: .getWidth()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; .getHeight()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getDensity()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v19           #sb:Ljava/lang/StringBuilder;
    :cond_b
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 650
    .local v15, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v15}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 651
    iget v2, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v10, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 654
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->autoRotate:Z

    if-eqz v2, :cond_e

    .line 656
    move-object/from16 v0, p0

    iget v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    if-gez v2, :cond_c

    .line 657
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    .line 659
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    if-lez v2, :cond_e

    .line 660
    move-object/from16 v0, p0

    iget v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    .line 693
    if-eqz v10, :cond_d

    if-eq v10, v9, :cond_d

    .line 694
    :try_start_5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 695
    const/4 v10, 0x0

    .line 701
    :cond_d
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_2
    move-object v9, v2

    .line 704
    goto/16 :goto_0

    .line 702
    :catch_1
    move-exception v16

    .line 703
    .restart local v16       #e:Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 664
    .end local v16           #e:Ljava/io/IOException;
    :cond_e
    :try_start_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v2

    if-eqz v2, :cond_10

    .line 666
    move-object v9, v10

    .line 667
    const/4 v10, 0x0

    .line 693
    :goto_3
    if-eqz v10, :cond_f

    if-eq v10, v9, :cond_f

    .line 694
    :try_start_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 695
    const/4 v10, 0x0

    .line 701
    .end local v15           #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_f
    :goto_4
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 706
    :goto_5
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .restart local v19       #sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Details of returned bitmap: .getWidth()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getHeight()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getDensity()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 669
    .end local v19           #sb:Ljava/lang/StringBuilder;
    .restart local v15       #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_10
    :try_start_a
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 670
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scaling bitmap to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v2, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    if-eqz v2, :cond_12

    iget v2, v15, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f80

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_12

    .line 677
    int-to-float v2, v14

    iget v5, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f00

    add-float/2addr v2, v5

    float-to-int v14, v2

    .line 678
    int-to-float v2, v13

    iget v5, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f00

    add-float/2addr v2, v5

    float-to-int v13, v2

    .line 683
    :cond_12
    const/4 v2, 0x1

    invoke-static {v10, v14, v13, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v9

    goto/16 :goto_3

    .line 686
    .end local v15           #displayMetrics:Landroid/util/DisplayMetrics;
    :catch_2
    move-exception v16

    .line 687
    .local v16, e:Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x1

    :try_start_b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 688
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 693
    if-eqz v10, :cond_f

    if-eq v10, v9, :cond_f

    .line 694
    :try_start_c
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 695
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 693
    .end local v16           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_13

    if-eq v10, v9, :cond_13

    .line 694
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 695
    const/4 v10, 0x0

    :cond_13
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 700
    .end local v10           #bTemp:Landroid/graphics/Bitmap;
    .end local v18           #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v2

    .line 701
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 704
    :goto_6
    throw v2

    .line 702
    .restart local v10       #bTemp:Landroid/graphics/Bitmap;
    .restart local v18       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v16

    .line 703
    .local v16, e:Ljava/io/IOException;
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem closing stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 702
    .end local v10           #bTemp:Landroid/graphics/Bitmap;
    .end local v16           #e:Ljava/io/IOException;
    .end local v18           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v16

    .line 703
    .restart local v16       #e:Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "needRetry"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 301
    .local v3, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 302
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 303
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 304
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 305
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 308
    if-eqz p1, :cond_3

    .line 309
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget v6, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->decodeRetries:I

    if-ge v2, v6, :cond_1

    .line 312
    if-nez v3, :cond_0

    .line 313
    const-string v6, "TiDrawableReference"

    const-string v7, "Unable to get input stream for bitmap. Will retry."

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    .line 319
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 309
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_0
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 324
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 325
    if-eqz v0, :cond_2

    .line 367
    .end local v2           #i:I
    :cond_1
    :goto_3
    if-nez v3, :cond_6

    .line 368
    const-string v6, "TiDrawableReference"

    const-string v7, "Could not open stream to get bitmap"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_4
    return-object v5

    .line 333
    .restart local v2       #i:I
    :cond_2
    :try_start_4
    const-string v6, "TiDrawableReference"

    const-string v7, "Unable to decode bitmap. Will retry."

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 335
    const-wide/16 v6, 0xfa

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 336
    :catch_0
    move-exception v6

    goto :goto_2

    .line 339
    :catch_1
    move-exception v1

    .line 340
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const/4 v6, 0x1

    :try_start_6
    iput-boolean v6, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 341
    const-string v6, "TiDrawableReference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    const-string v6, "TiDrawableReference"

    const-string v7, "Clear memory cache and signal a GC. Will retry load."

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lorg/appcelerator/titanium/util/TiImageLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/util/TiImageLruCache;->evictAll()V

    .line 344
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 346
    const-wide/16 v6, 0x3e8

    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7

    .line 350
    :goto_5
    const-wide/high16 v6, 0x4000

    int-to-double v8, v2

    :try_start_8
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 367
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #i:I
    :catchall_0
    move-exception v6

    if-nez v3, :cond_7

    .line 368
    const-string v6, "TiDrawableReference"

    const-string v7, "Could not open stream to get bitmap"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 354
    :cond_3
    if-nez v3, :cond_5

    .line 355
    :try_start_9
    const-string v6, "TiDrawableReference"

    const-string v7, "Could not open stream to get bitmap"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 367
    if-nez v3, :cond_4

    .line 368
    const-string v6, "TiDrawableReference"

    const-string v7, "Could not open stream to get bitmap"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 372
    :cond_4
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .line 373
    :catch_2
    move-exception v1

    .line 374
    .local v1, e:Ljava/io/IOException;
    const-string v6, "TiDrawableReference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem closing stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 359
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    const/4 v6, 0x0

    :try_start_b
    iput-boolean v6, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 360
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v0

    goto/16 :goto_3

    .line 361
    :catch_3
    move-exception v1

    .line 362
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const/4 v6, 0x1

    :try_start_c
    iput-boolean v6, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 363
    const-string v6, "TiDrawableReference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 372
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_6
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :goto_6
    move-object v5, v0

    .line 378
    goto/16 :goto_4

    .line 373
    :catch_4
    move-exception v1

    .line 374
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 372
    .end local v1           #e:Ljava/io/IOException;
    :cond_7
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 375
    :goto_7
    throw v6

    .line 373
    :catch_5
    move-exception v1

    .line 374
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem closing stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 316
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    :catch_6
    move-exception v6

    goto/16 :goto_1

    .line 347
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :catch_7
    move-exception v6

    goto/16 :goto_5
.end method

.method public getBitmapAsync(Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 721
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    const-string v1, "TiDrawableReference"

    const-string v2, "getBitmapAsync called on non-network url.  Will attempt load."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiDownloadManager;->getInstance()Lorg/appcelerator/titanium/util/TiDownloadManager;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiUrl;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lorg/appcelerator/titanium/util/TiDownloadManager;->download(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 732
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v1, "TiDrawableReference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI Invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 729
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 730
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "TiDrawableReference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 438
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 439
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 442
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 445
    .end local v0           #b:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 423
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 424
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 425
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 426
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 427
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 430
    .end local v0           #b:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "parent"
    .parameter "destWidthDimension"
    .parameter "destHeightDimension"

    .prologue
    .line 408
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 409
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 410
    invoke-virtual {p0, p1, p2, p3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 412
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 415
    .end local v0           #b:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 782
    const/4 v1, 0x0

    .line 784
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 786
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    const-string v4, "file:///android_asset/Resources/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v2

    .line 789
    .local v2, tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 815
    .end local v2           #tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_0
    :goto_0
    return-object v1

    .line 791
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, e:Ljava/io/IOException;
    const-string v3, "TiDrawableReference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem opening stream with url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 797
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeFile()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v3, :cond_3

    .line 799
    :try_start_1
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 800
    :catch_1
    move-exception v0

    .line 801
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "TiDrawableReference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem opening stream from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 804
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeBlob()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_4

    .line 805
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_0

    .line 806
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeResourceId()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 808
    :try_start_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto/16 :goto_0

    .line 809
    :catch_2
    move-exception v0

    .line 810
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "TiDrawableReference"

    const-string v4, "Drawable resource could not be opened. Are you sure you have the resource for the current device configuration (orientation, screen size, etc.)?"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    throw v0
.end method

.method public getOrientation()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 874
    const/4 v5, 0x0

    .line 875
    .local v5, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 877
    .local v4, orientation:I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeBlob()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v7, :cond_1

    .line 878
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v5

    .line 890
    :cond_0
    :goto_0
    if-nez v5, :cond_3

    .line 891
    :try_start_0
    const-string v7, "TiDrawableReference"

    const-string v8, "Path of image file could not determined. Could not create an exifInterface from an invalid path."

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_1
    return v6

    .line 879
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeFile()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v7, :cond_2

    .line 880
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 882
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 883
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 884
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v7

    const-string v8, "EXIF-TMP"

    const/4 v9, 0x1

    invoke-virtual {v7, v3, v8, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFileFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 885
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 897
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_3
    :try_start_1
    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 898
    const-string v6, "file://"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 901
    :cond_4
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 902
    .local v1, exifInterface:Landroid/media/ExifInterface;
    const-string v6, "Orientation"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 904
    const/4 v6, 0x6

    if-ne v4, v6, :cond_5

    .line 905
    const/16 v4, 0x5a

    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    :goto_2
    move v6, v4

    .line 918
    goto :goto_1

    .line 906
    .restart local v1       #exifInterface:Landroid/media/ExifInterface;
    :cond_5
    const/4 v6, 0x3

    if-ne v4, v6, :cond_6

    .line 907
    const/16 v4, 0xb4

    goto :goto_2

    .line 908
    :cond_6
    const/16 v6, 0x8

    if-ne v4, v6, :cond_7

    .line 909
    const/16 v4, 0x10e

    goto :goto_2

    .line 911
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 914
    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 915
    .local v0, e:Ljava/io/IOException;
    const-string v6, "TiDrawableReference"

    const-string v7, "Error creating exifInterface, could not determine orientation."

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 116
    const/16 v1, 0x11

    .line 117
    .local v1, total:I
    const/16 v0, 0x25

    .line 118
    .local v0, constant:I
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->ordinal()I

    move-result v2

    add-int/lit16 v1, v2, 0x275

    .line 119
    mul-int/lit8 v4, v1, 0x25

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 120
    mul-int/lit8 v4, v1, 0x25

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 121
    mul-int/lit8 v2, v1, 0x25

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 122
    mul-int/lit8 v2, v1, 0x25

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    add-int v1, v2, v3

    .line 123
    return v1

    .line 119
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 120
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 121
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isNetworkUrl()Z
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeBlob()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeFile()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeNull()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeResourceId()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeUrl()Z
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public outOfMemoryOccurred()Z
    .locals 1

    .prologue
    .line 863
    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    return v0
.end method

.method public peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    .locals 9

    .prologue
    .line 741
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v3

    .line 742
    .local v3, hash:I
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 743
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-object v1, v5

    .line 771
    :cond_0
    :goto_0
    return-object v1

    .line 745
    :cond_1
    new-instance v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;-><init>()V

    .line 746
    .local v1, bounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeNull()Z

    move-result v5

    if-nez v5, :cond_0

    .line 748
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 751
    .local v4, stream:Ljava/io/InputStream;
    if-eqz v4, :cond_3

    .line 752
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 753
    .local v0, bfo:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 754
    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 755
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 756
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    .end local v0           #bfo:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    if-eqz v4, :cond_2

    .line 763
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 770
    :cond_2
    :goto_2
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 758
    :cond_3
    :try_start_2
    const-string v5, "TiDrawableReference"

    const-string v6, "Could not open stream for drawable, therefore bounds checking could not be completed"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 761
    :catchall_0
    move-exception v5

    .line 762
    if-eqz v4, :cond_4

    .line 763
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 767
    :cond_4
    :goto_3
    throw v5

    .line 765
    :catch_0
    move-exception v2

    .line 766
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 765
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 766
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "TiDrawableReference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem closing stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public setAutoRotate(Z)V
    .locals 0
    .parameter "autoRotate"

    .prologue
    .line 924
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->autoRotate:Z

    .line 925
    return-void
.end method

.method public setDecodeRetries(I)V
    .locals 0
    .parameter "decodeRetries"

    .prologue
    .line 929
    iput p1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->decodeRetries:I

    .line 930
    return-void
.end method
