.class public Lorg/appcelerator/titanium/TiDimension;
.super Ljava/lang/Object;
.source "TiDimension.java"


# static fields
.field public static final CM_INCH:D = 2.54

.field public static final COMPLEX_UNIT_AUTO:I = 0x12

.field public static final COMPLEX_UNIT_CM:I = 0x6

.field public static final COMPLEX_UNIT_PERCENT:I = 0x11

.field public static final COMPLEX_UNIT_UNDEFINED:I = 0x10

.field public static DIMENSION_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final MM_INCH:D = 25.4

.field public static final POINT_DPI:D = 72.0

.field private static final TAG:Ljava/lang/String; = "TiDimension"

.field public static final TYPE_BOTTOM:I = 0x5

.field public static final TYPE_CENTER_X:I = 0x1

.field public static final TYPE_CENTER_Y:I = 0x4

.field public static final TYPE_HEIGHT:I = 0x7

.field public static final TYPE_LEFT:I = 0x0

.field public static final TYPE_RIGHT:I = 0x2

.field public static final TYPE_TOP:I = 0x3

.field public static final TYPE_UNDEFINED:I = -0x1

.field public static final TYPE_WIDTH:I = 0x6

.field public static final UNIT_AUTO:Ljava/lang/String; = "auto"

.field public static final UNIT_CM:Ljava/lang/String; = "cm"

.field public static final UNIT_DIP:Ljava/lang/String; = "dip"

.field public static final UNIT_DP:Ljava/lang/String; = "dp"

.field public static final UNIT_IN:Ljava/lang/String; = "in"

.field public static final UNIT_MM:Ljava/lang/String; = "mm"

.field public static final UNIT_PERCENT:Ljava/lang/String; = "%"

.field public static final UNIT_PT:Ljava/lang/String; = "pt"

.field public static final UNIT_PX:Ljava/lang/String; = "px"

.field public static final UNIT_SIP:Ljava/lang/String; = "sip"

.field public static final UNIT_SP:Ljava/lang/String; = "sp"

.field public static final UNIT_SYSTEM:Ljava/lang/String; = "system"

.field protected static metrics:Landroid/util/DisplayMetrics;


# instance fields
.field protected units:I

.field protected value:D

.field protected valueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "(-?[0-9]*\\.?[0-9]+)\\s*(system|px|dp|dip|sp|sip|mm|cm|pt|in|%)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/TiDimension;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 1
    .parameter "value"
    .parameter "valueType"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-wide p1, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 88
    iput p3, p0, Lorg/appcelerator/titanium/TiDimension;->valueType:I

    .line 89
    const/16 v0, 0x10

    iput v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .parameter "svalue"
    .parameter "valueType"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p2, p0, Lorg/appcelerator/titanium/TiDimension;->valueType:I

    .line 102
    iput v5, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    .line 103
    if-eqz p1, :cond_2

    .line 104
    sget-object v2, Lorg/appcelerator/titanium/TiDimension;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 105
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 106
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 108
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 109
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, unit:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 112
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getDefaultUnit()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_0
    const-string v2, "px"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    :cond_1
    iput v5, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    .line 141
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #unit:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 116
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #unit:Ljava/lang/String;
    :cond_3
    const-string v2, "pt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    const/4 v2, 0x3

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 118
    :cond_4
    const-string v2, "dp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "dip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    :cond_5
    iput v6, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 120
    :cond_6
    const-string v2, "sp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "sip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 121
    :cond_7
    iput v4, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 122
    :cond_8
    const-string v2, "%"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 123
    const/16 v2, 0x11

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 124
    :cond_9
    const-string v2, "mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 125
    const/4 v2, 0x5

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 126
    :cond_a
    const-string v2, "cm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 127
    const/4 v2, 0x6

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 128
    :cond_b
    const-string v2, "in"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 129
    const/4 v2, 0x4

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto :goto_0

    .line 131
    :cond_c
    if-eqz v1, :cond_2

    .line 132
    const-string v2, "TiDimension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v1           #unit:Ljava/lang/String;
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const-wide/high16 v2, -0x3e20

    iput-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 138
    const/16 v2, 0x12

    iput v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    goto/16 :goto_0
.end method

.method protected static getDisplayMetrics(Landroid/view/View;)Landroid/util/DisplayMetrics;
    .locals 4
    .parameter "parent"

    .prologue
    .line 314
    sget-object v2, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 316
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 317
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v2, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    .line 318
    sget-object v2, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 320
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #windowManager:Landroid/view/WindowManager;
    :cond_0
    sget-object v2, Lorg/appcelerator/titanium/TiDimension;->metrics:Landroid/util/DisplayMetrics;

    return-object v2
.end method


# virtual methods
.method public getAsCentimeters(Landroid/view/View;)D
    .locals 4
    .parameter "parent"

    .prologue
    .line 238
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 239
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 242
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getDPIForType(Landroid/view/View;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide v2, 0x400451eb851eb852L

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public getAsDIP(Landroid/view/View;)I
    .locals 4
    .parameter "parent"

    .prologue
    .line 256
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    double-to-int v0, v0

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v0

    invoke-static {p1}, Lorg/appcelerator/titanium/TiDimension;->getDisplayMetrics(Landroid/view/View;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getAsDefault(Landroid/view/View;)D
    .locals 3
    .parameter "parent"

    .prologue
    .line 271
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getDefaultUnit()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, defaultUnit:Ljava/lang/String;
    const-string v1, "dp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsDIP(Landroid/view/View;)I

    move-result v1

    int-to-double v1, v1

    .line 286
    :goto_0
    return-wide v1

    .line 275
    :cond_1
    const-string v1, "mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsMillimeters(Landroid/view/View;)D

    move-result-wide v1

    goto :goto_0

    .line 278
    :cond_2
    const-string v1, "cm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsCentimeters(Landroid/view/View;)D

    move-result-wide v1

    goto :goto_0

    .line 281
    :cond_3
    const-string v1, "in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsInches(Landroid/view/View;)D

    move-result-wide v1

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v1

    int-to-double v1, v1

    goto :goto_0
.end method

.method public getAsInches(Landroid/view/View;)D
    .locals 4
    .parameter "parent"

    .prologue
    .line 247
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 248
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 251
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getDPIForType(Landroid/view/View;)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getAsMillimeters(Landroid/view/View;)D
    .locals 4
    .parameter "parent"

    .prologue
    .line 229
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 230
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 233
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getDPIForType(Landroid/view/View;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide v2, 0x4039666666666666L

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public getAsPixels(Landroid/view/View;)I
    .locals 2
    .parameter "parent"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getDPIForType(Landroid/view/View;)D
    .locals 4
    .parameter "parent"

    .prologue
    .line 336
    invoke-static {p1}, Lorg/appcelerator/titanium/TiDimension;->getDisplayMetrics(Landroid/view/View;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 337
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const/high16 v0, -0x4080

    .line 338
    .local v0, dpi:F
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->valueType:I

    packed-switch v2, :pswitch_data_0

    .line 352
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 355
    :goto_0
    float-to-double v2, v0

    return-wide v2

    .line 343
    :pswitch_0
    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 344
    goto :goto_0

    .line 349
    :pswitch_1
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 350
    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIntValue()I
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method protected getPercentPixels(Landroid/view/View;)D
    .locals 5
    .parameter "parent"

    .prologue
    .line 291
    const/4 v0, -0x1

    .line 292
    .local v0, dimension:I
    iget v1, p0, Lorg/appcelerator/titanium/TiDimension;->valueType:I

    packed-switch v1, :pswitch_data_0

    .line 306
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 307
    iget-wide v1, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    int-to-double v3, v0

    mul-double/2addr v1, v3

    .line 309
    :goto_1
    return-wide v1

    .line 297
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 298
    goto :goto_0

    .line 303
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 309
    :cond_0
    const-wide/high16 v1, -0x4010

    goto :goto_1

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPixels(Landroid/view/View;)D
    .locals 2
    .parameter "parent"

    .prologue
    .line 198
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :pswitch_0
    const-wide/high16 v0, -0x4010

    :goto_0
    return-wide v0

    .line 201
    :pswitch_1
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    double-to-int v0, v0

    int-to-double v0, v0

    goto :goto_0

    .line 203
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getPercentPixels(Landroid/view/View;)D

    move-result-wide v0

    goto :goto_0

    .line 206
    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getScaledPixels(Landroid/view/View;)D

    move-result-wide v0

    goto :goto_0

    .line 211
    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getSizePixels(Landroid/view/View;)D

    move-result-wide v0

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getScaledPixels(Landroid/view/View;)D
    .locals 5
    .parameter "parent"

    .prologue
    .line 325
    invoke-static {p1}, Lorg/appcelerator/titanium/TiDimension;->getDisplayMetrics(Landroid/view/View;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 326
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 327
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    iget-wide v3, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    mul-double/2addr v1, v3

    .line 331
    :goto_0
    return-wide v1

    .line 328
    :cond_0
    iget v1, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 329
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-double v1, v1

    iget-wide v3, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    mul-double/2addr v1, v3

    goto :goto_0

    .line 331
    :cond_1
    const-wide/high16 v1, -0x4010

    goto :goto_0
.end method

.method protected getSizePixels(Landroid/view/View;)D
    .locals 6
    .parameter "parent"

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiDimension;->getDPIForType(Landroid/view/View;)D

    move-result-wide v0

    .line 362
    .local v0, dpi:D
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 363
    iget-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    const-wide/high16 v4, 0x4052

    div-double v4, v0, v4

    mul-double/2addr v2, v4

    .line 371
    :goto_0
    return-wide v2

    .line 364
    :cond_0
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 365
    iget-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    const-wide v4, 0x4039666666666666L

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    goto :goto_0

    .line 366
    :cond_1
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 367
    iget-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    const-wide v4, 0x400451eb851eb852L

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    goto :goto_0

    .line 368
    :cond_2
    iget v2, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 369
    iget-wide v2, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    mul-double/2addr v2, v0

    goto :goto_0

    .line 371
    :cond_3
    const-wide/high16 v2, -0x4010

    goto :goto_0
.end method

.method public getUnits()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    return-wide v0
.end method

.method public isUnitAuto()Z
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnitPercent()Z
    .locals 2

    .prologue
    .line 387
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnitUndefined()Z
    .locals 2

    .prologue
    .line 379
    iget v0, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUnits(I)V
    .locals 0
    .parameter "units"

    .prologue
    .line 193
    iput p1, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    .line 194
    return-void
.end method

.method public setValue(D)V
    .locals 0
    .parameter "value"

    .prologue
    .line 165
    iput-wide p1, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 401
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    iget-wide v1, p0, Lorg/appcelerator/titanium/TiDimension;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 403
    iget v1, p0, Lorg/appcelerator/titanium/TiDimension;->units:I

    packed-switch v1, :pswitch_data_0

    .line 433
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 405
    :pswitch_1
    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 408
    :pswitch_2
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 411
    :pswitch_3
    const-string v1, "dip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 414
    :pswitch_4
    const-string v1, "sp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 417
    :pswitch_5
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 420
    :pswitch_6
    const-string v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 423
    :pswitch_7
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 426
    :pswitch_8
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 430
    :cond_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
