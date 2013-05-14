.class public Lorg/appcelerator/titanium/util/TiImageLruCache;
.super Landroid/support/v4/util/LruCache;
.source "TiImageLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field protected static _instance:Lorg/appcelerator/titanium/util/TiImageLruCache;

.field private static final cacheSize:I

.field private static final maxMemory:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lorg/appcelerator/titanium/util/TiImageLruCache;->maxMemory:I

    .line 22
    sget v0, Lorg/appcelerator/titanium/util/TiImageLruCache;->maxMemory:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Lorg/appcelerator/titanium/util/TiImageLruCache;->cacheSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lorg/appcelerator/titanium/util/TiImageLruCache;->cacheSize:I

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 37
    return-void
.end method

.method public static getInstance()Lorg/appcelerator/titanium/util/TiImageLruCache;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/appcelerator/titanium/util/TiImageLruCache;->_instance:Lorg/appcelerator/titanium/util/TiImageLruCache;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiImageLruCache;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiImageLruCache;->_instance:Lorg/appcelerator/titanium/util/TiImageLruCache;

    .line 31
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiImageLruCache;->_instance:Lorg/appcelerator/titanium/util/TiImageLruCache;

    return-object v0
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Integer;Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiImageLruCache;->sizeOf(Ljava/lang/Integer;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
