.class public Lorg/appcelerator/titanium/util/TiConvert;
.super Ljava/lang/Object;
.source "TiConvert.java"


# static fields
.field public static final ASSET_URL:Ljava/lang/String; = "file:///android_asset/"

.field public static final JSON_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final TAG:Ljava/lang/String; = "TiConvert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillLayout(Ljava/util/HashMap;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z
    .locals 10
    .parameter
    .parameter "layoutParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, dirty:Z
    const/4 v3, 0x0

    .line 171
    .local v3, width:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 175
    .local v1, height:Ljava/lang/Object;
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    .line 176
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    .line 178
    const-string v5, "size"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    const-string v5, "size"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 180
    .local v2, size:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 181
    const-string v5, "width"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 182
    const-string v5, "height"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 186
    .end local v1           #height:Ljava/lang/Object;
    .end local v2           #size:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #width:Ljava/lang/Object;
    :cond_0
    const-string v5, "left"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    const-string v5, "left"

    invoke-static {p0, v5, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 188
    const/4 v0, 0x1

    .line 191
    :cond_1
    const-string v5, "top"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 192
    const-string v5, "top"

    const/4 v6, 0x3

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 193
    const/4 v0, 0x1

    .line 196
    :cond_2
    const-string v5, "center"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 197
    const-string v5, "center"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/appcelerator/titanium/util/TiConvert;->updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V

    .line 198
    const/4 v0, 0x1

    .line 201
    :cond_3
    const-string v5, "right"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 202
    const-string v5, "right"

    const/4 v6, 0x2

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 203
    const/4 v0, 0x1

    .line 206
    :cond_4
    const-string v5, "bottom"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 207
    const-string v5, "bottom"

    const/4 v6, 0x5

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 208
    const/4 v0, 0x1

    .line 211
    :cond_5
    if-nez v3, :cond_6

    const-string v5, "width"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 212
    :cond_6
    if-nez v3, :cond_7

    .line 213
    const-string v5, "width"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 216
    :cond_7
    if-nez v3, :cond_e

    .line 217
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 218
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    .line 239
    :goto_0
    const/4 v0, 0x1

    .line 242
    :cond_8
    if-nez v1, :cond_9

    const-string v5, "height"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 243
    :cond_9
    if-nez v1, :cond_a

    .line 244
    const-string v5, "height"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 247
    :cond_a
    if-nez v1, :cond_12

    .line 248
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 249
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    .line 270
    :goto_1
    const/4 v0, 0x1

    .line 273
    :cond_b
    const-string v5, "zIndex"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 274
    const-string v5, "zIndex"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 275
    .local v4, zIndex:Ljava/lang/Object;
    if-eqz v4, :cond_16

    .line 276
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 281
    :goto_2
    const/4 v0, 0x1

    .line 284
    .end local v4           #zIndex:Ljava/lang/Object;
    :cond_c
    const-string v5, "transform"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 285
    const-string v5, "transform"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 288
    :cond_d
    return v0

    .line 220
    :cond_e
    const-string v5, "auto"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 221
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 222
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    goto :goto_0

    .line 224
    :cond_f
    const-string v5, "fill"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 226
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 227
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    .line 228
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    goto :goto_0

    .line 230
    :cond_10
    const-string v5, "size"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 232
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 233
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    .line 234
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    goto :goto_0

    .line 236
    :cond_11
    const/4 v5, 0x6

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 237
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    goto :goto_0

    .line 251
    :cond_12
    const-string v5, "auto"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 252
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 253
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    goto :goto_1

    .line 255
    :cond_13
    const-string v5, "fill"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 257
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 258
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    .line 259
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    goto :goto_1

    .line 261
    :cond_14
    const-string v5, "size"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 263
    iput-object v9, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 264
    iput-boolean v8, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    .line 265
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    goto/16 :goto_1

    .line 267
    :cond_15
    const/4 v5, 0x7

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 268
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    goto/16 :goto_1

    .line 279
    .restart local v4       #zIndex:Ljava/lang/Object;
    :cond_16
    iput v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    goto/16 :goto_2
.end method

.method public static putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter "d"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/String;

    if-nez v15, :cond_0

    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/Number;

    if-nez v15, :cond_0

    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/Boolean;

    if-nez v15, :cond_0

    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/util/Date;

    if-eqz v15, :cond_1

    .line 48
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local p2
    :goto_0
    return-object p2

    .line 50
    .restart local p2
    :cond_1
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v15, :cond_3

    .line 51
    new-instance v11, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v11}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .local v11, nd:Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v4, p2

    .line 52
    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .line 53
    .local v4, dict:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 54
    .local v8, k:Ljava/lang/String;
    invoke-virtual {v4, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v11, v8, v15}, Lorg/appcelerator/titanium/util/TiConvert;->putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    .end local v8           #k:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-object/from16 p2, v11

    .line 59
    .local p2, value:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0

    .end local v4           #dict:Lorg/appcelerator/kroll/KrollDict;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #nd:Lorg/appcelerator/kroll/KrollDict;
    .local p2, value:Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    instance-of v15, v0, [Ljava/lang/Object;

    if-eqz v15, :cond_b

    move-object/from16 v15, p2

    .line 60
    check-cast v15, [Ljava/lang/Object;

    move-object v2, v15

    check-cast v2, [Ljava/lang/Object;

    .line 61
    .local v2, a:[Ljava/lang/Object;
    array-length v9, v2

    .line 62
    .local v9, len:I
    if-lez v9, :cond_a

    .line 63
    const/4 v15, 0x0

    aget-object v14, v2, v15

    .line 64
    .local v14, v:Ljava/lang/Object;
    if-eqz v14, :cond_4

    .line 65
    const-string v15, "TiConvert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Array member is type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "DEBUG_MODE"

    invoke-static/range {v15 .. v17}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_2
    if-eqz v14, :cond_6

    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 72
    new-array v13, v9, [Ljava/lang/String;

    .line 73
    .local v13, sa:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v9, :cond_5

    .line 74
    aget-object v15, v2, v5

    check-cast v15, Ljava/lang/String;

    aput-object v15, v13, v5

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 68
    .end local v5           #i:I
    .end local v13           #sa:[Ljava/lang/String;
    :cond_4
    const-string v15, "TiConvert"

    const-string v16, "First member of array is null"

    const-string v17, "DEBUG_MODE"

    invoke-static/range {v15 .. v17}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 76
    .restart local v5       #i:I
    .restart local v13       #sa:[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 78
    .end local v5           #i:I
    .end local v13           #sa:[Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_8

    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_8

    .line 79
    new-array v3, v9, [D

    .line 80
    .local v3, da:[D
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    if-ge v5, v9, :cond_7

    .line 81
    aget-object v15, v2, v5

    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    aput-wide v15, v3, v5

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 83
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 95
    .end local v3           #da:[D
    .end local v5           #i:I
    :cond_8
    new-array v12, v9, [Ljava/lang/Object;

    .line 96
    .local v12, oa:[Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    if-ge v5, v9, :cond_9

    .line 97
    aget-object v15, v2, v5

    aput-object v15, v12, v5

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 99
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v5           #i:I
    .end local v12           #oa:[Ljava/lang/Object;
    .end local v14           #v:Ljava/lang/Object;
    :cond_a
    move-object/from16 v15, p2

    .line 104
    check-cast v15, [Ljava/lang/Object;

    check-cast v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    .end local v2           #a:[Ljava/lang/Object;
    .end local v9           #len:I
    :cond_b
    if-nez p2, :cond_c

    .line 108
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 110
    :cond_c
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v15, :cond_d

    .line 111
    invoke-virtual/range {p0 .. p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 113
    :cond_d
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/util/Map;

    if-eqz v15, :cond_f

    .line 114
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .restart local v4       #dict:Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v10, p2

    .line 115
    check-cast v10, Ljava/util/Map;

    .line 116
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 117
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 119
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 120
    .restart local v8       #k:Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v8, v15}, Lorg/appcelerator/titanium/util/TiConvert;->putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 122
    .end local v8           #k:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 125
    .end local v4           #dict:Lorg/appcelerator/kroll/KrollDict;
    .end local v7           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_f
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported property type "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method public static toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 0
    .parameter "value"

    .prologue
    .line 690
    check-cast p0, Lorg/appcelerator/titanium/TiBlob;

    .end local p0
    return-object p0
.end method

.method public static toBlob(Ljava/util/HashMap;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .parameter
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/titanium/TiBlob;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, object:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 349
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 350
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 353
    :goto_0
    return v0

    .line 352
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 353
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 356
    .restart local p0
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to boolean."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static toBoolean(Ljava/lang/Object;Z)Z
    .locals 1
    .parameter "value"
    .parameter "def"

    .prologue
    .line 334
    :try_start_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 336
    .end local p1
    :goto_0
    return p1

    .line 335
    .restart local p1
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter "key"
    .parameter "def"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static toColor(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 140
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static toColor(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static toColorDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;
    .locals 2
    .parameter "value"

    .prologue
    .line 158
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public static toColorDrawable(Ljava/util/HashMap;Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/ColorDrawable;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColorDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static toDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 3
    .parameter "value"

    .prologue
    .line 826
    instance-of v2, p0, Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 827
    check-cast p0, Ljava/util/Date;

    .line 835
    .end local p0
    .local v0, millis:J
    :goto_0
    return-object p0

    .line 829
    .end local v0           #millis:J
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 830
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 832
    .restart local v0       #millis:J
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 835
    .end local v0           #millis:J
    .restart local p0
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toDouble(Ljava/lang/Object;)D
    .locals 3
    .parameter "value"

    .prologue
    .line 517
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 518
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 524
    :goto_0
    return-wide v0

    .line 520
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 521
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 523
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 524
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 527
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDouble(Ljava/util/HashMap;Ljava/lang/String;)D
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .prologue
    .line 540
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(Ljava/lang/Object;)F
    .locals 2
    .parameter "value"

    .prologue
    .line 449
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 450
    check-cast p0, Ljava/lang/Float;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 459
    :goto_0
    return v0

    .line 452
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 453
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_0

    .line 455
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 456
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    goto :goto_0

    .line 458
    .restart local p0
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 459
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 462
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Unable to convert value to float."

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toFloat(Ljava/lang/Object;F)F
    .locals 1
    .parameter "value"
    .parameter "def"

    .prologue
    .line 477
    :try_start_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 479
    .end local p1
    :goto_0
    return p1

    .line 478
    .restart local p1
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toFloat(Ljava/util/HashMap;Ljava/lang/String;)F
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F
    .locals 1
    .parameter
    .parameter "key"
    .parameter "def"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "F)F"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 394
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 395
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 404
    :goto_0
    return v0

    .line 397
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 398
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 400
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 401
    check-cast p0, Ljava/lang/Long;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0

    .line 403
    .restart local p0
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 404
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 407
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toInt(Ljava/lang/Object;I)I
    .locals 1
    .parameter "value"
    .parameter "def"

    .prologue
    .line 422
    :try_start_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 424
    .end local p1
    :goto_0
    return p1

    .line 423
    .restart local p1
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toInt(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static toIntArray([Ljava/lang/Object;)[I
    .locals 3
    .parameter "inArray"

    .prologue
    .line 608
    array-length v2, p0

    new-array v1, v2, [I

    .line 609
    .local v1, outArray:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 610
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    return-object v1
.end method

.method public static toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_1

    .line 714
    const/4 v2, 0x0

    .line 751
    :cond_0
    return-object v2

    .line 716
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 718
    .local v2, json:Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 720
    .local v3, key:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 721
    .local v4, o:Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 722
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    .end local v4           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "TiConvert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to JSON encode key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v4       #o:Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_3

    .line 725
    check-cast v4, Ljava/lang/Number;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 727
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 728
    check-cast v4, Ljava/lang/String;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 730
    .restart local v4       #o:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 731
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 733
    .restart local v4       #o:Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/util/Date;

    if-eqz v5, :cond_6

    .line 734
    check-cast v4, Ljava/util/Date;

    .end local v4           #o:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 736
    .restart local v4       #o:Ljava/lang/Object;
    :cond_6
    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_7

    .line 737
    check-cast v4, Ljava/util/HashMap;

    .end local v4           #o:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 739
    .restart local v4       #o:Ljava/lang/Object;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 740
    check-cast v4, [Ljava/lang/Object;

    .end local v4           #o:Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 743
    .restart local v4       #o:Ljava/lang/Object;
    :cond_8
    const-string v5, "TiConvert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 8
    .parameter "a"

    .prologue
    .line 761
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 762
    .local v2, ja:Lorg/json/JSONArray;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_7

    aget-object v4, v0, v1

    .line 763
    .local v4, o:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 764
    const-string v5, "TiConvert"

    const-string v6, "Skipping null value in array"

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v4           #o:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .restart local v4       #o:Ljava/lang/Object;
    :cond_0
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_1

    .line 773
    check-cast v4, Ljava/lang/Number;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 775
    .restart local v4       #o:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 776
    check-cast v4, Ljava/lang/String;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 778
    .restart local v4       #o:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 779
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 781
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/util/Date;

    if-eqz v5, :cond_4

    .line 782
    check-cast v4, Ljava/util/Date;

    .end local v4           #o:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 784
    .restart local v4       #o:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/util/HashMap;

    if-eqz v5, :cond_5

    .line 785
    check-cast v4, Ljava/util/HashMap;

    .end local v4           #o:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 787
    .restart local v4       #o:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 788
    check-cast v4, [Ljava/lang/Object;

    .end local v4           #o:Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 791
    .restart local v4       #o:Ljava/lang/Object;
    :cond_6
    const-string v5, "TiConvert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 795
    .end local v4           #o:Ljava/lang/Object;
    :cond_7
    return-object v2
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 807
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 808
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, df:Ljava/text/DateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 811
    check-cast p0, Ljava/util/Date;

    .end local p0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 814
    .end local v0           #df:Ljava/text/DateFormat;
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 568
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "defaultString"

    .prologue
    .line 552
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 554
    move-object v0, p1

    .line 557
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .parameter "parts"

    .prologue
    .line 591
    if-eqz p0, :cond_0

    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 592
    .local v1, sparts:[Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_2

    .line 593
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 594
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    aput-object v2, v1, v0

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    .end local v0           #i:I
    .end local v1           #sparts:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0

    .line 594
    .restart local v0       #i:I
    .restart local v1       #sparts:[Ljava/lang/String;
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 598
    .end local v0           #i:I
    :cond_2
    return-object v1
.end method

.method public static toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 2
    .parameter "value"
    .parameter "valueType"

    .prologue
    .line 637
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getDefaultUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 640
    .end local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 641
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .parameter "value"
    .parameter "valueType"

    .prologue
    .line 624
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static toTiDimension(Ljava/util/HashMap;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .parameter
    .parameter "key"
    .parameter "valueType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/appcelerator/titanium/TiDimension;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    return-object v0
.end method

.method public static toURL(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/Resources"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    .line 672
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/Resources/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 6
    .parameter "value"
    .parameter "layoutParams"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    instance-of v3, p0, Ljava/util/HashMap;

    if-eqz v3, :cond_2

    move-object v0, p0

    .line 295
    check-cast v0, Ljava/util/HashMap;

    .line 296
    .local v0, center:Ljava/util/HashMap;
    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 297
    .local v1, x:Ljava/lang/Object;
    const-string v3, "y"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 299
    .local v2, y:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 300
    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 306
    :goto_0
    if-eqz v2, :cond_1

    .line 307
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    .line 321
    .end local v0           #center:Ljava/util/HashMap;
    .end local v1           #x:Ljava/lang/Object;
    .end local v2           #y:Ljava/lang/Object;
    :goto_1
    return-void

    .line 303
    .restart local v0       #center:Ljava/util/HashMap;
    .restart local v1       #x:Ljava/lang/Object;
    .restart local v2       #y:Ljava/lang/Object;
    :cond_0
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_0

    .line 310
    :cond_1
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1

    .line 313
    .end local v0           #center:Ljava/util/HashMap;
    .end local v1           #x:Ljava/lang/Object;
    .end local v2           #y:Ljava/lang/Object;
    :cond_2
    if-eqz p0, :cond_3

    .line 314
    invoke-static {p0, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 315
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1

    .line 318
    :cond_3
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 319
    iput-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1
.end method
