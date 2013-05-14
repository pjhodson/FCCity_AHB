.class public Lorg/appcelerator/titanium/view/Ti2DMatrix;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "Ti2DMatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANCHOR_VALUE:F = -1.0f

.field public static final VALUE_UNSPECIFIED:F = 1.4E-45f


# instance fields
.field protected next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

.field protected prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V
    .locals 1
    .parameter "prev"
    .parameter "opType"

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 79
    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 83
    iput-object p0, p1, Lorg/appcelerator/titanium/view/Ti2DMatrix;->next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 85
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-direct {v0, p2}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 86
    return-void
.end method

.method private containsOperationOfType(I)Z
    .locals 2
    .parameter "operationType"

    .prologue
    .line 229
    move-object v0, p0

    .line 230
    .local v0, check:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_0
    if-eqz v0, :cond_1

    .line 231
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v1, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    if-ne v1, p1, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 236
    :goto_1
    return v1

    .line 234
    :cond_0
    iget-object v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public finalValuesAfterInterpolation(II)[F
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v4, 0x3f00

    .line 190
    const/high16 v1, 0x3f80

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->interpolate(FIIFF)Landroid/graphics/Matrix;

    move-result-object v6

    .line 191
    .local v6, m:Landroid/graphics/Matrix;
    const/16 v0, 0x9

    new-array v7, v0, [F

    .line 192
    .local v7, result:[F
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 193
    return-object v7
.end method

.method public getRotateOperationParameters()[F
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 352
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-nez v0, :cond_0

    .line 353
    new-array v0, v1, [F

    .line 356
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v2, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v2, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v2, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v2, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    aput v2, v0, v1

    goto :goto_0
.end method

.method protected handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "dict"

    .prologue
    .line 108
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 110
    .local v0, anchorPoint:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "x"

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    .line 112
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "y"

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    .line 115
    .end local v0           #anchorPoint:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "dict"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 92
    const-string v0, "rotate"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x0

    iput v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 95
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v1, "rotate"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 96
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 98
    :cond_0
    const-string v0, "scale"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 100
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/high16 v2, 0x3f80

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    iput v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 101
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "scale"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 102
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 104
    :cond_1
    return-void
.end method

.method public hasRotateOperation()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->containsOperationOfType(I)Z

    move-result v0

    return v0
.end method

.method public hasScaleOperation()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->containsOperationOfType(I)Z

    move-result v0

    return v0
.end method

.method public interpolate(FIIFF)Landroid/graphics/Matrix;
    .locals 11
    .parameter "interpolatedTime"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    .line 198
    move-object v8, p0

    .line 199
    .local v8, first:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v10, preMatrixList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/Ti2DMatrix;>;"
    :goto_0
    iget-object v0, v8, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v0, :cond_0

    .line 203
    iget-object v8, v8, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 206
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 210
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 211
    .local v7, current:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v0, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->apply(FLandroid/graphics/Matrix;IIFF)V

    goto :goto_1

    .line 215
    .end local v7           #current:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->apply(FLandroid/graphics/Matrix;IIFF)V

    .line 218
    :cond_3
    return-object v2
.end method

.method public invert()Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    return-object v0
.end method

.method public multiply(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 2
    .parameter "other"

    .prologue
    .line 182
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 183
    .local v0, newMatrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-object p0, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->multiplyWith:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 184
    return-object v0
.end method

.method public rotate([Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-direct {v0, p0, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 160
    .local v0, newMatrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    array-length v1, p1

    if-ne v1, v4, :cond_1

    .line 161
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotationFromValueSpecified:Z

    .line 162
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x1

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 163
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 164
    :cond_1
    array-length v1, p1

    if-ne v1, v2, :cond_0

    .line 165
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v4, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotationFromValueSpecified:Z

    .line 166
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 167
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    goto :goto_0
.end method

.method public scale([Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-direct {v0, p0, v4}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 130
    .local v0, newMatrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v3, 0x1

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 131
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/high16 v3, 0x3f80

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 133
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 135
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v5, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    .line 136
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 137
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    .line 138
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v6

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 139
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 141
    :cond_0
    array-length v1, p1

    if-ne v1, v6, :cond_2

    .line 143
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v4, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    .line 144
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 145
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 152
    :cond_1
    :goto_0
    return-object v0

    .line 146
    :cond_2
    array-length v1, p1

    if-ne v1, v5, :cond_1

    .line 148
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v4, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    .line 149
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v3, p1, v4

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    goto :goto_0
.end method

.method public setRotationFromDegrees(F)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 366
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput p1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 369
    :cond_0
    return-void
.end method

.method public translate(DD)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 120
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 121
    .local v0, newMatrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    double-to-float v2, p1

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateX:F

    .line 122
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    double-to-float v2, p3

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateY:F

    .line 123
    return-object v0
.end method

.method public verifyRotationValues(Lorg/appcelerator/titanium/view/TiUIView;Z)F
    .locals 8
    .parameter "view"
    .parameter "autoreverse"

    .prologue
    .line 312
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v4, rotationOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    move-object v0, p0

    .line 315
    .local v0, check:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_0
    if-eqz v0, :cond_1

    .line 317
    iget-object v6, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v6, v6, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 318
    const/4 v6, 0x0

    iget-object v7, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 320
    :cond_0
    iget-object v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_0

    .line 323
    :cond_1
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .line 325
    .local v5, viewCurrentRotation:F
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 346
    .end local v5           #viewCurrentRotation:F
    :cond_2
    :goto_2
    return v5

    .line 323
    :cond_3
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getAnimatedRotationDegrees()F

    move-result v5

    goto :goto_1

    .line 329
    .restart local v5       #viewCurrentRotation:F
    :cond_4
    move v2, v5

    .line 331
    .local v2, lastRotation:F
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 332
    .local v3, op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotationFromValueSpecified:Z

    if-nez v6, :cond_5

    .line 335
    iput v2, v3, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 337
    :cond_5
    iget v2, v3, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    goto :goto_3

    .line 343
    .end local v3           #op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    :cond_6
    if-nez p2, :cond_2

    move v5, v2

    .line 346
    goto :goto_2
.end method

.method public verifyScaleValues(Lorg/appcelerator/titanium/view/TiUIView;Z)Landroid/util/Pair;
    .locals 10
    .parameter "view"
    .parameter "autoreverse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f80

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v5, scaleOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    move-object v0, p0

    .line 262
    .local v0, check:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_0
    if-eqz v0, :cond_1

    .line 264
    iget-object v7, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v7, :cond_0

    iget-object v7, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v7, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    if-nez v7, :cond_0

    .line 265
    const/4 v7, 0x0

    iget-object v8, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-virtual {v5, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    :cond_0
    iget-object v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_0

    .line 270
    :cond_1
    if-nez p1, :cond_3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 274
    .local v6, viewCurrentScale:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 298
    .end local v6           #viewCurrentScale:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_2
    :goto_2
    return-object v6

    .line 270
    :cond_3
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getAnimatedScaleValues()Landroid/util/Pair;

    move-result-object v6

    goto :goto_1

    .line 278
    .restart local v6       #viewCurrentScale:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 279
    .local v2, lastToX:F
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 281
    .local v3, lastToY:F
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 282
    .local v4, op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    iget-boolean v7, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    if-nez v7, :cond_5

    .line 285
    iput v2, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 286
    iput v3, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    .line 288
    :cond_5
    iget v2, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 289
    iget v3, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    goto :goto_3

    .line 295
    .end local v4           #op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    :cond_6
    if-nez p2, :cond_2

    .line 298
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_2
.end method
