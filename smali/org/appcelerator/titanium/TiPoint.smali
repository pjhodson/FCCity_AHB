.class public Lorg/appcelerator/titanium/TiPoint;
.super Ljava/lang/Object;
.source "TiPoint.java"


# instance fields
.field private x:Lorg/appcelerator/titanium/TiDimension;

.field private y:Lorg/appcelerator/titanium/TiDimension;


# direct methods
.method public constructor <init>(DD)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    const/4 v1, 0x6

    invoke-direct {v0, p1, p2, v1}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->x:Lorg/appcelerator/titanium/TiDimension;

    .line 22
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    const/4 v1, 0x7

    invoke-direct {v0, p3, p4, v1}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->y:Lorg/appcelerator/titanium/TiDimension;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->x:Lorg/appcelerator/titanium/TiDimension;

    .line 60
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    const/4 v1, 0x7

    invoke-direct {v0, p2, v1}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->y:Lorg/appcelerator/titanium/TiDimension;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 6
    .parameter "object"

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/titanium/TiPoint;-><init>(Ljava/util/HashMap;DD)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;DD)V
    .locals 3
    .parameter "object"
    .parameter "defaultValueX"
    .parameter "defaultValueY"

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->x:Lorg/appcelerator/titanium/TiDimension;

    .line 41
    iget-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->x:Lorg/appcelerator/titanium/TiDimension;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v0, p2, p3, v1}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->x:Lorg/appcelerator/titanium/TiDimension;

    .line 45
    :cond_0
    const-string v0, "y"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->y:Lorg/appcelerator/titanium/TiDimension;

    .line 46
    iget-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->y:Lorg/appcelerator/titanium/TiDimension;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v0, p4, p5, v2}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->y:Lorg/appcelerator/titanium/TiDimension;

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public getX()Lorg/appcelerator/titanium/TiDimension;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->x:Lorg/appcelerator/titanium/TiDimension;

    return-object v0
.end method

.method public getY()Lorg/appcelerator/titanium/TiDimension;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/appcelerator/titanium/TiPoint;->y:Lorg/appcelerator/titanium/TiDimension;

    return-object v0
.end method
