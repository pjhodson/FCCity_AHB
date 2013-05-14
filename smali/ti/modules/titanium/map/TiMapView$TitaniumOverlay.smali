.class Lti/modules/titanium/map/TiMapView$TitaniumOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "TiMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/map/TiMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TitaniumOverlay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lti/modules/titanium/map/TiOverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/AnnotationProxy;",
            ">;"
        }
    .end annotation
.end field

.field defaultMarker:Landroid/graphics/drawable/Drawable;

.field isMultitouch:Z

.field listener:Lti/modules/titanium/map/TitaniumOverlayListener;

.field final synthetic this$0:Lti/modules/titanium/map/TiMapView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/map/TiMapView;Landroid/graphics/drawable/Drawable;Lti/modules/titanium/map/TitaniumOverlayListener;)V
    .locals 1
    .parameter
    .parameter "defaultDrawable"
    .parameter "listener"

    .prologue
    .line 252
    iput-object p1, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    .line 253
    invoke-direct {p0, p2}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iput-object p2, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->defaultMarker:Landroid/graphics/drawable/Drawable;

    .line 255
    iput-object p3, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->listener:Lti/modules/titanium/map/TitaniumOverlayListener;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->isMultitouch:Z

    .line 257
    return-void
.end method


# virtual methods
.method protected bridge synthetic createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->createItem(I)Lti/modules/titanium/map/TiOverlayItem;

    move-result-object v0

    return-object v0
.end method

.method protected createItem(I)Lti/modules/titanium/map/TiOverlayItem;
    .locals 18
    .parameter "i"

    .prologue
    .line 273
    const/4 v3, 0x0

    .line 275
    .local v3, item:Lti/modules/titanium/map/TiOverlayItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->annotations:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lti/modules/titanium/map/AnnotationProxy;

    .line 276
    .local v8, p:Lti/modules/titanium/map/AnnotationProxy;
    const-string v13, "latitude"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "longitude"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 277
    const-string v13, "title"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, ""

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, title:Ljava/lang/String;
    const-string v13, "subtitle"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, ""

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, subtitle:Ljava/lang/String;
    new-instance v5, Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    const-string v14, "latitude"

    invoke-virtual {v8, v14}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v14

    #calls: Lti/modules/titanium/map/TiMapView;->scaleToGoogle(D)I
    invoke-static {v13, v14, v15}, Lti/modules/titanium/map/TiMapView;->access$600(Lti/modules/titanium/map/TiMapView;D)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    const-string v15, "longitude"

    invoke-virtual {v8, v15}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v15

    #calls: Lti/modules/titanium/map/TiMapView;->scaleToGoogle(D)I
    invoke-static/range {v14 .. v16}, Lti/modules/titanium/map/TiMapView;->access$600(Lti/modules/titanium/map/TiMapView;D)I

    move-result v14

    invoke-direct {v5, v13, v14}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 282
    .local v5, location:Lcom/google/android/maps/GeoPoint;
    new-instance v3, Lti/modules/titanium/map/TiOverlayItem;

    .end local v3           #item:Lti/modules/titanium/map/TiOverlayItem;
    invoke-direct {v3, v5, v11, v10, v8}, Lti/modules/titanium/map/TiOverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lti/modules/titanium/map/AnnotationProxy;)V

    .line 285
    .restart local v3       #item:Lti/modules/titanium/map/TiOverlayItem;
    const-string v13, "image"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "pinImage"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 286
    :cond_0
    const-string v13, "image"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 288
    .local v2, imageProperty:Ljava/lang/Object;
    instance-of v13, v2, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v13, :cond_7

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    check-cast v2, Lorg/appcelerator/titanium/TiBlob;

    .end local v2           #imageProperty:Ljava/lang/Object;
    #calls: Lti/modules/titanium/map/TiMapView;->makeMarker(Lorg/appcelerator/titanium/TiBlob;)Landroid/graphics/drawable/Drawable;
    invoke-static {v13, v2}, Lti/modules/titanium/map/TiMapView;->access$700(Lti/modules/titanium/map/TiMapView;Lorg/appcelerator/titanium/TiBlob;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 296
    .local v6, marker:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v6, :cond_1

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    const-string v14, "pinImage"

    invoke-virtual {v8, v14}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    #calls: Lti/modules/titanium/map/TiMapView;->makeMarker(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v13, v14}, Lti/modules/titanium/map/TiMapView;->access$800(Lti/modules/titanium/map/TiMapView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 300
    :cond_1
    if-eqz v6, :cond_2

    .line 301
    invoke-static {v6}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 302
    invoke-virtual {v3, v6}, Lti/modules/titanium/map/TiOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 339
    .end local v6           #marker:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    const-string v13, "leftButton"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v13}, Lti/modules/titanium/map/TiMapView;->access$1000(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "leftButton"

    invoke-virtual {v8, v15}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lti/modules/titanium/map/TiOverlayItem;->setLeftButton(Ljava/lang/String;)V

    .line 343
    :cond_3
    const-string v13, "rightButton"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v13}, Lti/modules/titanium/map/TiMapView;->access$1100(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "rightButton"

    invoke-virtual {v8, v15}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lti/modules/titanium/map/TiOverlayItem;->setRightButton(Ljava/lang/String;)V

    .line 347
    :cond_4
    const-string v13, "leftView"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 348
    const-string v13, "leftView"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 349
    .local v4, leftView:Ljava/lang/Object;
    instance-of v13, v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v13, :cond_a

    .line 350
    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v4           #leftView:Ljava/lang/Object;
    invoke-virtual {v3, v4}, Lti/modules/titanium/map/TiOverlayItem;->setLeftView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 357
    :cond_5
    :goto_2
    const-string v13, "rightView"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 358
    const-string v13, "rightView"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 359
    .local v9, rightView:Ljava/lang/Object;
    instance-of v13, v9, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v13, :cond_b

    .line 360
    check-cast v9, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v9           #rightView:Ljava/lang/Object;
    invoke-virtual {v3, v9}, Lti/modules/titanium/map/TiOverlayItem;->setRightView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 371
    .end local v5           #location:Lcom/google/android/maps/GeoPoint;
    .end local v10           #subtitle:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :cond_6
    :goto_3
    return-object v3

    .line 292
    .restart local v2       #imageProperty:Ljava/lang/Object;
    .restart local v5       #location:Lcom/google/android/maps/GeoPoint;
    .restart local v10       #subtitle:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    #calls: Lti/modules/titanium/map/TiMapView;->makeMarker(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v13, v14}, Lti/modules/titanium/map/TiMapView;->access$800(Lti/modules/titanium/map/TiMapView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6       #marker:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 305
    .end local v2           #imageProperty:Ljava/lang/Object;
    .end local v6           #marker:Landroid/graphics/drawable/Drawable;
    :cond_8
    const-string v13, "pincolor"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 306
    const-string v13, "pincolor"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 309
    .local v12, value:Ljava/lang/Object;
    :try_start_0
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_9

    .line 313
    check-cast v12, Ljava/lang/String;

    .end local v12           #value:Ljava/lang/Object;
    invoke-static {v12}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v7

    .line 314
    .local v7, markerColor:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    #calls: Lti/modules/titanium/map/TiMapView;->makeMarker(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v13, v7}, Lti/modules/titanium/map/TiMapView;->access$900(Lti/modules/titanium/map/TiMapView;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3, v13}, Lti/modules/titanium/map/TiOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 333
    .end local v7           #markerColor:I
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/lang/Exception;
    const-string v13, "TiMapView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to parse color ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "pincolor"

    invoke-virtual {v8, v15}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] for item ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v12       #value:Ljava/lang/Object;
    :cond_9
    :try_start_1
    const-string v13, "pincolor"

    invoke-virtual {v8, v13}, Lti/modules/titanium/map/AnnotationProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_1

    .line 320
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    const/high16 v14, -0x1

    #calls: Lti/modules/titanium/map/TiMapView;->makeMarker(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v13, v14}, Lti/modules/titanium/map/TiMapView;->access$900(Lti/modules/titanium/map/TiMapView;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3, v13}, Lti/modules/titanium/map/TiOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 324
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    const v14, -0xff0100

    #calls: Lti/modules/titanium/map/TiMapView;->makeMarker(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v13, v14}, Lti/modules/titanium/map/TiMapView;->access$900(Lti/modules/titanium/map/TiMapView;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3, v13}, Lti/modules/titanium/map/TiOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 328
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->this$0:Lti/modules/titanium/map/TiMapView;

    const/16 v14, 0xff

    const/16 v15, 0xc0

    const/16 v16, 0x0

    const/16 v17, 0xc0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    #calls: Lti/modules/titanium/map/TiMapView;->makeMarker(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v13, v14}, Lti/modules/titanium/map/TiMapView;->access$900(Lti/modules/titanium/map/TiMapView;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3, v13}, Lti/modules/titanium/map/TiOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 353
    .end local v12           #value:Ljava/lang/Object;
    .restart local v4       #leftView:Ljava/lang/Object;
    :cond_a
    const-string v13, "TiMapView"

    const-string v14, "Invalid type for leftView"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 363
    .end local v4           #leftView:Ljava/lang/Object;
    .restart local v9       #rightView:Ljava/lang/Object;
    :cond_b
    const-string v13, "TiMapView"

    const-string v14, "Invalid type for rightView"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 368
    .end local v5           #location:Lcom/google/android/maps/GeoPoint;
    .end local v9           #rightView:Ljava/lang/Object;
    .end local v10           #subtitle:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :cond_c
    const-string v13, "TiMapView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping annotation: No coordinates #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDefaultMarker()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->defaultMarker:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onTap(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v0

    .line 386
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 387
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->listener:Lti/modules/titanium/map/TitaniumOverlayListener;

    invoke-interface {v1, p1}, Lti/modules/titanium/map/TitaniumOverlayListener;->onTap(I)V

    .line 388
    const/4 v0, 0x1

    .line 391
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 2
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 398
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/ItemizedOverlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    move-result v0

    .line 401
    .local v0, handled:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->isMultitouch:Z

    if-nez v1, :cond_0

    .line 402
    iget-object v1, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->listener:Lti/modules/titanium/map/TitaniumOverlayListener;

    invoke-interface {v1, p1, p2}, Lti/modules/titanium/map/TitaniumOverlayListener;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)V

    .line 403
    const/4 v1, 0x1

    .line 406
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 2
    .parameter "event"
    .parameter "mapView"

    .prologue
    const/4 v1, 0x1

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 413
    iput-boolean v1, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->isMultitouch:Z

    .line 417
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/ItemizedOverlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    return v0

    .line 414
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->isMultitouch:Z

    goto :goto_0
.end method

.method public setAnnotations(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/map/AnnotationProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, annotations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/map/AnnotationProxy;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->annotations:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->populate()V

    .line 268
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/map/TiMapView$TitaniumOverlay;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
