.class public Lorg/appcelerator/titanium/util/TiUIHelper;
.super Ljava/lang/Object;
.source "TiUIHelper.java"


# static fields
.field private static final BACKGROUND_DEFAULT_STATE_1:[I = null

.field private static final BACKGROUND_DEFAULT_STATE_2:[I = null

.field private static final BACKGROUND_DISABLED_STATE:[I = null

.field private static final BACKGROUND_FOCUSED_STATE:[I = null

.field private static final BACKGROUND_SELECTED_STATE:[I = null

.field public static final FACE_DOWN:I = 0x6

.field public static final FACE_UP:I = 0x5

.field public static final LANDSCAPE_LEFT:I = 0x3

.field public static final LANDSCAPE_RIGHT:I = 0x4

.field public static final PORTRAIT:I = 0x1

.field public static final SIZED_VALUE:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "TiUIHelper"

.field public static final UNKNOWN:I = 0x7

.field public static final UPSIDE_PORTRAIT:I = 0x2

.field private static final customFontPath:Ljava/lang/String; = "Resources/fonts"

.field private static mCustomTypeFaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static overridePendingTransition:Ljava/lang/reflect/Method;

.field private static resourceImageKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    const-string v0, "([0-9]*\\.?[0-9]+)\\W*(px|dp|dip|sp|sip|mm|pt|in)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    .line 527
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_DEFAULT_STATE_1:[I

    .line 531
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_DEFAULT_STATE_2:[I

    .line 534
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_SELECTED_STATE:[I

    .line 539
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_FOCUSED_STATE:[I

    .line 544
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_DISABLED_STATE:[I

    return-void

    .line 527
    :array_0
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data

    .line 534
    :array_1
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 539
    :array_2
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "color"
    .parameter "image"
    .parameter "tileImage"
    .parameter "gradientDrawable"

    .prologue
    .line 494
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    .local v2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    if-eqz p0, :cond_0

    .line 497
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 498
    .local v0, colorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v0           #colorDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p3, :cond_1

    .line 502
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_1
    const/4 v1, 0x0

    .line 506
    .local v1, imageDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_3

    .line 507
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v3

    .line 508
    .local v3, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v5, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 510
    if-eqz p2, :cond_2

    .line 511
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 512
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 513
    .local v4, tiledBackground:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 514
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 515
    move-object v1, v4

    .line 519
    .end local v4           #tiledBackground:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    if-eqz v1, :cond_3

    .line 520
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    .end local v3           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_3
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public static buildBackgroundDrawable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .parameter "image"
    .parameter "tileImage"
    .parameter "color"
    .parameter "selectedImage"
    .parameter "selectedColor"
    .parameter "disabledImage"
    .parameter "disabledColor"
    .parameter "focusedImage"
    .parameter "focusedColor"
    .parameter "gradientDrawable"

    .prologue
    .line 560
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 562
    .local v4, sld:Landroid/graphics/drawable/StateListDrawable;
    invoke-static {p4, p3, p1, p9}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 563
    .local v3, bgSelectedDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 564
    sget-object v5, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_SELECTED_STATE:[I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 567
    :cond_0
    invoke-static {p8, p7, p1, p9}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 568
    .local v2, bgFocusedDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 569
    sget-object v5, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_FOCUSED_STATE:[I

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 572
    :cond_1
    invoke-static {p6, p5, p1, p9}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 573
    .local v0, bgDisabledDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 574
    sget-object v5, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_DISABLED_STATE:[I

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 577
    :cond_2
    invoke-static {p2, p0, p1, p9}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 578
    .local v1, bgDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 579
    sget-object v5, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_DEFAULT_STATE_1:[I

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 580
    sget-object v5, Lorg/appcelerator/titanium/util/TiUIHelper;->BACKGROUND_DEFAULT_STATE_2:[I

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 583
    :cond_3
    return-object v4
.end method

.method public static createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "stream"

    .prologue
    const/4 v4, 0x1

    .line 702
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 703
    .local v3, pad:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 704
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 705
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 707
    const/4 v0, 0x0

    .line 709
    .local v0, b:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4, v5, p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 713
    :goto_0
    return-object v0

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "TiUIHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;
    .locals 4
    .parameter "opacity"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 896
    const/16 v1, 0x14

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput p0, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    .line 903
    .local v0, matrix:[F
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static createDictForImage(II[B)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 588
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 589
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v2, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v2, "width"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v2, "height"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 595
    .local v0, cropRect:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v2, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v2, "width"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v2, "height"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v2, "cropRect"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v2, "media"

    const-string v3, "image/png"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-object v1
.end method

.method public static createDoNothingListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$1;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiUIHelper$1;-><init>()V

    return-object v0
.end method

.method public static createFinishListener(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "me"

    .prologue
    .line 119
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$3;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiUIHelper$3;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static createKillListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$2;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiUIHelper$2;-><init>()V

    return-object v0
.end method

.method public static doKillOrContinueDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "positiveListener"
    .parameter "negativeListener"

    .prologue
    .line 127
    if-nez p3, :cond_0

    .line 128
    invoke-static {}, Lorg/appcelerator/titanium/util/TiUIHelper;->createDoNothingListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p3

    .line 130
    :cond_0
    if-nez p4, :cond_1

    .line 131
    invoke-static {}, Lorg/appcelerator/titanium/util/TiUIHelper;->createKillListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p4

    .line 134
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Continue"

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Kill"

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 138
    return-void
.end method

.method public static doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "title"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 188
    new-instance p2, Lorg/appcelerator/titanium/util/TiUIHelper$5;

    .end local p2
    invoke-direct {p2}, Lorg/appcelerator/titanium/util/TiUIHelper$5;-><init>()V

    .line 197
    .restart local p2
    :cond_0
    move-object v0, p2

    .line 198
    .local v0, fListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lorg/appcelerator/titanium/util/TiUIHelper$6;

    invoke-direct {v1, p0, p1, v0}, Lorg/appcelerator/titanium/util/TiUIHelper$6;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    .line 218
    return-void
.end method

.method public static firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 1004
    if-eqz p0, :cond_0

    const-string v0, "postlayout"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    const-string v0, "postlayout"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 1007
    :cond_0
    return-void
.end method

.method public static getDefaultFontSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 409
    const-string v0, "15.0px"

    .line 410
    .local v0, size:Ljava/lang/String;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 411
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    const/4 v1, 0x0

    .line 416
    :cond_0
    return-object v0
.end method

.method public static getDefaultFontWeight(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 420
    const-string v0, "normal"

    .line 421
    .local v0, style:Ljava/lang/String;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 422
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 424
    .local v1, tf:Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    const-string v0, "bold"

    .line 429
    .end local v1           #tf:Landroid/graphics/Typeface;
    :cond_0
    return-object v0
.end method

.method public static getImageFromDict(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .parameter "dict"

    .prologue
    .line 607
    if-eqz p0, :cond_0

    .line 608
    const-string v1, "media"

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const-string v1, "media"

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 610
    .local v0, media:Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v1, :cond_0

    .line 611
    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    .line 615
    .end local v0           #media:Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRawDIPSize(FLandroid/content/Context;)F
    .locals 1
    .parameter "size"
    .parameter "context"

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(IFLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getRawSize(IFLandroid/content/Context;)F
    .locals 2
    .parameter "unit"
    .parameter "size"
    .parameter "context"

    .prologue
    .line 294
    if-eqz p2, :cond_0

    .line 295
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 299
    .local v0, r:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1

    .line 297
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .restart local v0       #r:Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public static getRawSize(Ljava/lang/String;Landroid/content/Context;)F
    .locals 2
    .parameter "size"
    .parameter "context"

    .prologue
    .line 307
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSizeUnits(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(IFLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getResourceBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "res_id"

    .prologue
    const/4 v3, 0x1

    .line 800
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 801
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 802
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 804
    const/4 v0, 0x0

    .line 806
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 810
    :goto_0
    return-object v0

    .line 807
    :catch_0
    move-exception v1

    .line 808
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "TiUIHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getResourceBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"

    .prologue
    .line 784
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 785
    .local v0, id:I
    if-nez v0, :cond_0

    .line 786
    const/4 v1, 0x0

    .line 788
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResourceDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res_id"

    .prologue
    .line 845
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "path"

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 854
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 855
    new-instance v2, Lorg/appcelerator/titanium/util/TiUrl;

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    .line 856
    .local v2, imageUrl:Lorg/appcelerator/titanium/util/TiUrl;
    new-instance v3, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 857
    .local v3, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 865
    .end local v2           #imageUrl:Lorg/appcelerator/titanium/util/TiUrl;
    .end local v3           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :goto_0
    return-object v0

    .line 859
    .restart local p0
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 861
    .end local p0
    :catch_0
    move-exception v1

    .line 862
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "TiUIHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load drawable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "url"

    .prologue
    .line 829
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->loadFastDevDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 831
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 840
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 835
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 836
    .local v1, id:I
    if-nez v1, :cond_1

    .line 837
    const/4 v0, 0x0

    goto :goto_0

    .line 840
    :cond_1
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getResourceId(Ljava/lang/String;)I
    .locals 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 760
    const-string v3, "Resources/images/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v2

    .line 764
    :cond_1
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceKeyForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 770
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;Z)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    goto :goto_0
.end method

.method private static getResourceKeyForImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 718
    sget-object v9, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v9, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 719
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 755
    :cond_0
    :goto_0
    return-object v8

    .line 722
    :cond_1
    const-string v9, "^.*/Resources/images/(.*$)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 723
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 724
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 728
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, chopped:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 734
    move-object v2, v0

    .line 735
    .local v2, forHash:Ljava/lang/String;
    const-string v8, ".9.png"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 736
    const-string v8, ".9.png"

    const-string v9, ".png"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 738
    :cond_2
    move-object v7, v0

    .line 740
    .local v7, withoutExtension:Ljava/lang/String;
    const-string v8, "^.*\\..*$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 741
    const-string v8, ".9.png"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 742
    const-string v8, ".9.png"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 748
    :cond_3
    :goto_1
    const-string v8, "[^a-z0-9_]"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, cleanedWithoutExtension:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 750
    .local v5, result:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x50

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 754
    .local v6, sResult:Ljava/lang/String;
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->resourceImageKeys:Ljava/util/Map;

    invoke-interface {v8, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v6

    .line 755
    goto/16 :goto_0

    .line 744
    .end local v1           #cleanedWithoutExtension:Ljava/lang/String;
    .end local v5           #result:Ljava/lang/StringBuilder;
    .end local v6           #sResult:Ljava/lang/String;
    :cond_4
    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static getSize(Ljava/lang/String;)F
    .locals 4
    .parameter "size"

    .prologue
    .line 281
    const/high16 v1, 0x4170

    .line 282
    .local v1, value:F
    if-eqz p0, :cond_0

    .line 283
    sget-object v2, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 284
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 289
    .end local v0           #m:Ljava/util/regex/Matcher;
    :cond_0
    return v1
.end method

.method public static getSizeUnits(Ljava/lang/String;)I
    .locals 6
    .parameter "size"

    .prologue
    const/4 v5, 0x2

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, units:I
    const/4 v1, 0x0

    .line 244
    .local v1, unitString:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 245
    sget-object v3, Lorg/appcelerator/titanium/util/TiUIHelper;->SIZED_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 246
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 248
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .end local v0           #m:Ljava/util/regex/Matcher;
    :cond_0
    if-nez v1, :cond_1

    .line 254
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getDefaultUnit()Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_1
    const-string v3, "px"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "system"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    :cond_2
    const/4 v2, 0x0

    .line 277
    :cond_3
    :goto_0
    return v2

    .line 259
    :cond_4
    const-string v3, "pt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 260
    const/4 v2, 0x3

    goto :goto_0

    .line 261
    :cond_5
    const-string v3, "dp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "dip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 262
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 263
    :cond_7
    const-string v3, "sp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 264
    :cond_8
    const/4 v2, 0x2

    goto :goto_0

    .line 265
    :cond_9
    const-string v3, "mm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 266
    const/4 v2, 0x5

    goto :goto_0

    .line 267
    :cond_a
    const-string v3, "cm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 268
    const/4 v2, 0x6

    goto :goto_0

    .line 269
    :cond_b
    const-string v3, "in"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 270
    const/4 v2, 0x4

    goto :goto_0

    .line 272
    :cond_c
    if-eqz v1, :cond_3

    .line 273
    const-string v3, "TiUIHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 1
    .parameter "tv"
    .parameter "autoLink"

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 145
    :cond_0
    return-void
.end method

.method public static loadFastDevDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "url"

    .prologue
    .line 816
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v3

    .line 817
    .local v3, tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 818
    .local v2, stream:Ljava/io/InputStream;
    invoke-static {v2, p0}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 819
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #stream:Ljava/io/InputStream;
    .end local v3           #tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    :goto_0
    return-object v0

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, e:Ljava/io/IOException;
    const-string v4, "TiUIHelper"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 12
    .parameter "context"
    .parameter "fontFamily"

    .prologue
    const/4 v8, 0x0

    .line 382
    if-nez p0, :cond_0

    .line 405
    :goto_0
    return-object v8

    .line 385
    :cond_0
    sget-object v9, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 386
    sget-object v8, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 390
    .local v6, mgr:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v9, "Resources/fonts"

    invoke-virtual {v6, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, fontFiles:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 392
    .local v2, f:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    if-eq v9, v10, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 393
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resources/fonts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 394
    .local v7, tf:Landroid/graphics/Typeface;
    sget-object v10, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    monitor-enter v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :try_start_1
    sget-object v9, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    invoke-interface {v9, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    monitor-exit v10

    move-object v8, v7

    .line 397
    goto :goto_0

    .line 396
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 400
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #fontFiles:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #tf:Landroid/graphics/Typeface;
    :catch_0
    move-exception v1

    .line 401
    .local v1, e:Ljava/io/IOException;
    const-string v9, "TiUIHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load \'fonts\' assets. Perhaps doesn\'t exist? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    sget-object v9, Lorg/appcelerator/titanium/util/TiUIHelper;->mCustomTypeFaces:Ljava/util/Map;

    invoke-interface {v9, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 391
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #f:Ljava/lang/String;
    .restart local v3       #fontFiles:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static overridePendingTransition(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 870
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 876
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "overridePendingTransition"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 883
    :cond_2
    :goto_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 885
    :try_start_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called incorrectly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 878
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v1, "TiUIHelper"

    const-string v2, "Activity.overridePendingTransition() not found"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 888
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 889
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V
    .locals 4
    .parameter "proxy"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 920
    const/4 v0, 0x0

    .line 922
    .local v0, focusState:I
    const-string v1, "softKeyboardOnFocus"

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const-string v1, "softKeyboardOnFocus"

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 926
    :cond_0
    if-lez v0, :cond_1

    .line 927
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 928
    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 935
    :cond_1
    :goto_0
    return-void

    .line 929
    :cond_2
    if-ne v0, v2, :cond_3

    .line 930
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    goto :goto_0

    .line 932
    :cond_3
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown onFocus state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static runUiDelayed(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 967
    new-instance v0, Lorg/appcelerator/titanium/util/TiUIHelper$7;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiUIHelper$7;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 984
    return-void
.end method

.method public static runUiDelayedIfBlock(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 993
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->runUiDelayed(Ljava/lang/Runnable;)V

    .line 1000
    :goto_0
    return-void

    .line 998
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tv"
    .parameter "textAlign"
    .parameter "verticalAlign"

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, gravity:I
    if-eqz p1, :cond_5

    .line 437
    const-string v1, "left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    or-int/lit8 v0, v0, 0x3

    .line 459
    :cond_0
    :goto_0
    if-eqz p2, :cond_9

    .line 460
    const-string v1, "top"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 461
    or-int/lit8 v0, v0, 0x30

    .line 480
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 481
    return-void

    .line 439
    :cond_2
    const-string v1, "center"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_3
    const-string v1, "right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 442
    or-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 444
    :cond_4
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported horizontal alignment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_5
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No alignment set - old horizontal align was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 462
    :cond_6
    const-string v1, "middle"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 463
    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 464
    :cond_7
    const-string v1, "bottom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 465
    or-int/lit8 v0, v0, 0x50

    goto :goto_1

    .line 467
    :cond_8
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported vertical alignment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 472
    :cond_9
    const-string v1, "TiUIHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No alignment set - old vertical align was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    if-eqz v1, :cond_1

    .line 476
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    goto/16 :goto_1
.end method

.method public static setDrawableOpacity(Landroid/graphics/drawable/Drawable;F)V
    .locals 1
    .parameter "drawable"
    .parameter "opacity"

    .prologue
    .line 907
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 908
    :cond_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 912
    :cond_1
    :goto_0
    return-void

    .line 909
    :cond_2
    if-eqz p0, :cond_1

    .line 910
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public static setPaintOpacity(Landroid/graphics/Paint;F)V
    .locals 1
    .parameter "paint"
    .parameter "opacity"

    .prologue
    .line 915
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 916
    return-void
.end method

.method public static setTextViewDIPPadding(Landroid/widget/TextView;II)V
    .locals 4
    .parameter "textView"
    .parameter "horizontalPadding"
    .parameter "verticalPadding"

    .prologue
    .line 484
    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v2

    float-to-int v0, v2

    .line 485
    .local v0, rawHPadding:I
    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v2

    float-to-int v1, v2

    .line 486
    .local v1, rawVPadding:I
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 487
    return-void
.end method

.method public static showSoftKeyboard(Landroid/view/View;Z)V
    .locals 7
    .parameter "view"
    .parameter "show"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 944
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 946
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    .line 947
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_4

    :cond_0
    move v2, v4

    .line 948
    .local v2, useForce:Z
    :goto_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, model:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "droid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 950
    const/4 v2, 0x1

    .line 952
    :cond_1
    if-eqz p1, :cond_5

    .line 953
    if-eqz v2, :cond_2

    const/4 v4, 0x2

    :cond_2
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 958
    .end local v1           #model:Ljava/lang/String;
    .end local v2           #useForce:Z
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v2, v3

    .line 947
    goto :goto_0

    .line 955
    .restart local v1       #model:Ljava/lang/String;
    .restart local v2       #useForce:Z
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {v0, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public static styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tv"
    .parameter "fontFamily"
    .parameter "fontSize"
    .parameter "fontWeight"

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public static styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tv"
    .parameter "fontFamily"
    .parameter "fontSize"
    .parameter "fontWeight"
    .parameter "fontStyle"

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 345
    .local v0, tf:Landroid/graphics/Typeface;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 346
    invoke-static {p3, p4}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 347
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSizeUnits(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 348
    return-void
.end method

.method public static styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V
    .locals 5
    .parameter "tv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 312
    if-nez p1, :cond_0

    .line 313
    invoke-static {p0, v4, v4, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v1, 0x0

    .line 318
    .local v1, fontSize:Ljava/lang/String;
    const/4 v3, 0x0

    .line 319
    .local v3, fontWeight:Ljava/lang/String;
    const/4 v0, 0x0

    .line 320
    .local v0, fontFamily:Ljava/lang/String;
    const/4 v2, 0x0

    .line 322
    .local v2, fontStyle:Ljava/lang/String;
    const-string v4, "fontSize"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    const-string v4, "fontSize"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    :cond_1
    const-string v4, "fontWeight"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    const-string v4, "fontWeight"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    :cond_2
    const-string v4, "fontFamily"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    const-string v4, "fontFamily"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_3
    const-string v4, "fontStyle"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 332
    const-string v4, "fontStyle"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    :cond_4
    invoke-static {p0, v0, v1, v3, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .parameter "context"
    .parameter "fontFamily"

    .prologue
    .line 352
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 354
    .local v1, tf:Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 355
    const-string v2, "monospace"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 374
    :cond_0
    :goto_0
    return-object v1

    .line 357
    :cond_1
    const-string v2, "serif"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 359
    :cond_2
    const-string v2, "sans-serif"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 360
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 362
    :cond_3
    const/4 v0, 0x0

    .line 363
    .local v0, loadedTf:Landroid/graphics/Typeface;
    if-eqz p0, :cond_4

    .line 364
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->loadTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 366
    :cond_4
    if-nez v0, :cond_5

    .line 367
    const-string v2, "TiUIHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported font: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' supported fonts are \'monospace\', \'serif\', \'sans-serif\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public static toTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .parameter "fontFamily"

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static toTypefaceStyle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "fontWeight"
    .parameter "fontStyle"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, style:I
    if-eqz p0, :cond_3

    .line 225
    const-string v1, "bold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    if-eqz p1, :cond_1

    const-string v1, "italic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const/4 v0, 0x3

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :cond_2
    if-eqz p1, :cond_0

    const-string v1, "italic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v0, 0x2

    goto :goto_0

    .line 234
    :cond_3
    if-eqz p1, :cond_0

    const-string v1, "italic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;
    .locals 16
    .parameter "proxyDict"
    .parameter "view"

    .prologue
    .line 620
    new-instance v8, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v8}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 622
    .local v8, image:Lorg/appcelerator/kroll/KrollDict;
    if-eqz p1, :cond_7

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 624
    .local v10, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 627
    .local v5, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    if-nez v13, :cond_0

    if-eqz p0, :cond_0

    const-string v13, "width"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 628
    new-instance v11, Lorg/appcelerator/titanium/TiDimension;

    const-string v13, "width"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 629
    .local v11, widthDimension:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v10

    .line 631
    .end local v11           #widthDimension:Lorg/appcelerator/titanium/TiDimension;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    if-nez v13, :cond_1

    if-eqz p0, :cond_1

    const-string v13, "height"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 632
    new-instance v6, Lorg/appcelerator/titanium/TiDimension;

    const-string v13, "height"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    invoke-direct {v6, v13, v14}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 634
    .local v6, heightDimension:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    .line 637
    .end local v6           #heightDimension:Lorg/appcelerator/titanium/TiDimension;
    :cond_1
    if-nez v10, :cond_8

    const/4 v12, 0x0

    .line 638
    .local v12, wmode:I
    :goto_0
    if-nez v5, :cond_9

    const/4 v7, 0x0

    .line 639
    .local v7, hmode:I
    :goto_1
    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/View;->measure(II)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 646
    if-nez v10, :cond_2

    .line 647
    const/16 v10, 0x64

    .line 648
    const-string v13, "TiUIHelper"

    const-string v14, "Width property is 0 for view, display view before calling toImage()"

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_2
    if-nez v5, :cond_3

    .line 651
    const/16 v5, 0x64

    .line 652
    const-string v13, "TiUIHelper"

    const-string v14, "Height property is 0 for view, display view before calling toImage()"

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_4

    .line 656
    const-string v13, "TiUIHelper"

    const-string v14, "View does not have parent, calling layout"

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v10, v5}, Landroid/view/View;->layout(IIII)V

    .line 661
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 663
    .local v2, bitmapConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 664
    .local v9, viewBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_5

    .line 673
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 674
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 678
    :cond_5
    invoke-static {v10, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 679
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 680
    .local v4, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 682
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 683
    .local v3, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v1, v13, v14, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 684
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-static {v10, v5, v13}, Lorg/appcelerator/titanium/util/TiUIHelper;->createDictForImage(II[B)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    .line 687
    :cond_6
    const/4 v4, 0x0

    .line 688
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 691
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapConfig:Landroid/graphics/Bitmap$Config;
    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v5           #height:I
    .end local v7           #hmode:I
    .end local v9           #viewBackground:Landroid/graphics/drawable/Drawable;
    .end local v10           #width:I
    .end local v12           #wmode:I
    :cond_7
    return-object v8

    .line 637
    .restart local v5       #height:I
    .restart local v10       #width:I
    :cond_8
    const/high16 v12, 0x4000

    goto/16 :goto_0

    .line 638
    .restart local v12       #wmode:I
    :cond_9
    const/high16 v7, 0x4000

    goto/16 :goto_1
.end method

.method public static waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 157
    invoke-static {}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getWaitingForOpen()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v2

    .line 158
    .local v2, waitingForOpen:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    if-eqz v2, :cond_1

    .line 159
    new-instance v3, Lorg/appcelerator/titanium/util/TiUIHelper$4;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/util/TiUIHelper$4;-><init>(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setPostOpenListener(Lorg/appcelerator/titanium/proxy/TiWindowProxy$PostOpenListener;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 172
    .local v1, app:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {p0, v0}, Lorg/appcelerator/kroll/common/CurrentActivityListener;->onCurrentActivityReady(Landroid/app/Activity;)V

    goto :goto_0
.end method
