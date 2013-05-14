.class public Lorg/appcelerator/titanium/view/TiGradientDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "TiGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiGradientDrawable$1;,
        Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;,
        Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_POINT:Lorg/appcelerator/titanium/TiPoint; = null

.field private static final DEFAULT_RADIUS:Lorg/appcelerator/titanium/TiDimension; = null

.field private static final DEFAULT_START_POINT:Lorg/appcelerator/titanium/TiPoint; = null

.field private static final TAG:Ljava/lang/String; = "TiGradientDrawable"


# instance fields
.field private colors:[I

.field private endPoint:Lorg/appcelerator/titanium/TiPoint;

.field private gradientType:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

.field private offsets:[F

.field private startPoint:Lorg/appcelerator/titanium/TiPoint;

.field private startRadius:Lorg/appcelerator/titanium/TiDimension;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    .line 29
    new-instance v0, Lorg/appcelerator/titanium/TiPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/appcelerator/titanium/TiPoint;-><init>(DD)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->DEFAULT_START_POINT:Lorg/appcelerator/titanium/TiPoint;

    .line 30
    new-instance v0, Lorg/appcelerator/titanium/TiPoint;

    const-string v1, "0"

    const-string v2, "100%"

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->DEFAULT_END_POINT:Lorg/appcelerator/titanium/TiPoint;

    .line 31
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    const-wide/high16 v1, 0x3ff0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->DEFAULT_RADIUS:Lorg/appcelerator/titanium/TiDimension;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .parameter "view"
    .parameter "properties"

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 35
    sget-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->DEFAULT_START_POINT:Lorg/appcelerator/titanium/TiPoint;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->startPoint:Lorg/appcelerator/titanium/TiPoint;

    sget-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->DEFAULT_END_POINT:Lorg/appcelerator/titanium/TiPoint;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->endPoint:Lorg/appcelerator/titanium/TiPoint;

    .line 46
    const-string v0, "type"

    const-string v1, "linear"

    invoke-virtual {p2, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, type:Ljava/lang/String;
    const-string v0, "linear"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    sget-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->LINEAR_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->gradientType:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    .line 63
    const-string v0, "startPoint"

    invoke-virtual {p2, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 64
    .local v8, startPointObject:Ljava/lang/Object;
    instance-of v0, v8, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lorg/appcelerator/titanium/TiPoint;

    move-object v1, v8

    check-cast v1, Ljava/util/HashMap;

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/titanium/TiPoint;-><init>(Ljava/util/HashMap;DD)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->startPoint:Lorg/appcelerator/titanium/TiPoint;

    .line 71
    :cond_0
    const-string v0, "endPoint"

    invoke-virtual {p2, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 72
    .local v7, endPointObject:Ljava/lang/Object;
    instance-of v0, v7, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lorg/appcelerator/titanium/TiPoint;

    move-object v1, v7

    check-cast v1, Ljava/util/HashMap;

    const-wide/high16 v4, 0x3ff0

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/titanium/TiPoint;-><init>(Ljava/util/HashMap;DD)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->endPoint:Lorg/appcelerator/titanium/TiPoint;

    .line 76
    :cond_1
    const-string v0, "startRadius"

    const/4 v1, -0x1

    invoke-static {p2, v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->startRadius:Lorg/appcelerator/titanium/TiDimension;

    .line 77
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->startRadius:Lorg/appcelerator/titanium/TiDimension;

    if-nez v0, :cond_2

    .line 78
    sget-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->DEFAULT_RADIUS:Lorg/appcelerator/titanium/TiDimension;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->startRadius:Lorg/appcelerator/titanium/TiDimension;

    .line 81
    :cond_2
    const-string v0, "colors"

    invoke-virtual {p2, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 82
    .local v6, colors:Ljava/lang/Object;
    instance-of v0, v6, [Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 83
    const-string v0, "TiGradientDrawable"

    const-string v1, "Android does not support gradients without colors."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an array of colors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    .end local v6           #colors:Ljava/lang/Object;
    .end local v7           #endPointObject:Ljava/lang/Object;
    .end local v8           #startPointObject:Ljava/lang/Object;
    :cond_3
    const-string v0, "radial"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    sget-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->RADIAL_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->gradientType:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    .line 91
    :goto_0
    return-void

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid gradient type. Must be linear or radial."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    .restart local v6       #colors:Ljava/lang/Object;
    .restart local v7       #endPointObject:Ljava/lang/Object;
    .restart local v8       #startPointObject:Ljava/lang/Object;
    :cond_5
    check-cast v6, [Ljava/lang/Object;

    .end local v6           #colors:Ljava/lang/Object;
    check-cast v6, [Ljava/lang/Object;

    invoke-direct {p0, v6}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->loadColors([Ljava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->view:Landroid/view/View;

    .line 90
    new-instance v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;-><init>(Lorg/appcelerator/titanium/view/TiGradientDrawable;Lorg/appcelerator/titanium/view/TiGradientDrawable$1;)V

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Lorg/appcelerator/titanium/TiPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->startPoint:Lorg/appcelerator/titanium/TiPoint;

    return-object v0
.end method

.method static synthetic access$300(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Lorg/appcelerator/titanium/TiPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->endPoint:Lorg/appcelerator/titanium/TiPoint;

    return-object v0
.end method

.method static synthetic access$400(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->gradientType:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    return-object v0
.end method

.method static synthetic access$500(Lorg/appcelerator/titanium/view/TiGradientDrawable;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->colors:[I

    return-object v0
.end method

.method static synthetic access$600(Lorg/appcelerator/titanium/view/TiGradientDrawable;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->offsets:[F

    return-object v0
.end method

.method private loadColors([Ljava/lang/Object;)V
    .locals 8
    .parameter "colors"

    .prologue
    .line 98
    array-length v6, p1

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->colors:[I

    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, offsetCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 101
    aget-object v0, p1, v2

    .line 102
    .local v0, color:Ljava/lang/Object;
    instance-of v6, v0, Ljava/util/HashMap;

    if-eqz v6, :cond_2

    move-object v1, v0

    .line 103
    check-cast v1, Ljava/util/HashMap;

    .line 104
    .local v1, colorRefObject:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->colors:[I

    const-string v7, "color"

    invoke-static {v1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    .line 106
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->offsets:[F

    if-nez v6, :cond_0

    .line 107
    array-length v6, p1

    new-array v6, v6, [F

    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->offsets:[F

    .line 110
    :cond_0
    const-string v6, "offset"

    const/high16 v7, -0x4080

    invoke-static {v1, v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v3

    .line 111
    .local v3, offset:F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_1

    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_1

    .line 112
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->offsets:[F

    add-int/lit8 v5, v4, 0x1

    .end local v4           #offsetCount:I
    .local v5, offsetCount:I
    aput v3, v6, v4

    move v4, v5

    .line 100
    .end local v1           #colorRefObject:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #offset:F
    .end local v5           #offsetCount:I
    .restart local v4       #offsetCount:I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->colors:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    goto :goto_1

    .line 122
    .end local v0           #color:Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->colors:[I

    array-length v6, v6

    if-eq v4, v6, :cond_4

    .line 123
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->offsets:[F

    .line 125
    :cond_4
    return-void
.end method


# virtual methods
.method public getGradientType()Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable;->gradientType:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    return-object v0
.end method
