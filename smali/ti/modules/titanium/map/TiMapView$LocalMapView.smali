.class Lti/modules/titanium/map/TiMapView$LocalMapView;
.super Lcom/google/android/maps/MapView;
.source "TiMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/map/TiMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalMapView"
.end annotation


# static fields
.field private static final MIN_MILLISECONDS_FOR_LONG_CLICK:I = 0x320

.field private static final X_TOLERANCE:F = 10.0f

.field private static final Y_TOLERANCE:F = 10.0f


# instance fields
.field private lastLatitude:I

.field private lastLatitudeSpan:I

.field private lastLongitude:I

.field private lastLongitudeSpan:I

.field private longClickXCoordinate:F

.field private longClickYCoordinate:F

.field private requestViewOnScreen:Z

.field private scrollEnabled:Z

.field final synthetic this$0:Lti/modules/titanium/map/TiMapView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lti/modules/titanium/map/TiMapView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "apiKey"

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object p1, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    .line 116
    invoke-direct {p0, p2, p3}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->requestViewOnScreen:Z

    .line 117
    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->scrollEnabled:Z

    .line 118
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    .line 183
    invoke-super {p0}, Lcom/google/android/maps/MapView;->computeScroll()V

    .line 184
    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 185
    .local v0, center:Lcom/google/android/maps/GeoPoint;
    iget v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLatitude:I

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLongitude:I

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLatitudeSpan:I

    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getLatitudeSpan()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLongitudeSpan:I

    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getLongitudeSpan()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    iput v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLatitude:I

    .line 188
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    iput v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLongitude:I

    .line 189
    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getLatitudeSpan()I

    move-result v2

    iput v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLatitudeSpan:I

    .line 190
    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getLongitudeSpan()I

    move-result v2

    iput v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLongitudeSpan:I

    .line 192
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 193
    .local v1, location:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "latitude"

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    iget v4, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLatitude:I

    #calls: Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D
    invoke-static {v3, v4}, Lti/modules/titanium/map/TiMapView;->access$300(Lti/modules/titanium/map/TiMapView;I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v2, "longitude"

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    iget v4, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLongitude:I

    #calls: Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D
    invoke-static {v3, v4}, Lti/modules/titanium/map/TiMapView;->access$300(Lti/modules/titanium/map/TiMapView;I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v2, "latitudeDelta"

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    iget v4, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLatitudeSpan:I

    #calls: Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D
    invoke-static {v3, v4}, Lti/modules/titanium/map/TiMapView;->access$300(Lti/modules/titanium/map/TiMapView;I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "longitudeDelta"

    iget-object v3, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    iget v4, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->lastLongitudeSpan:I

    #calls: Lti/modules/titanium/map/TiMapView;->scaleFromGoogle(I)D
    invoke-static {v3, v4}, Lti/modules/titanium/map/TiMapView;->access$300(Lti/modules/titanium/map/TiMapView;I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v2}, Lti/modules/titanium/map/TiMapView;->access$400(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "regionchanged"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 199
    iget-object v2, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v2}, Lti/modules/titanium/map/TiMapView;->access$500(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "regionChanged"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 201
    .end local v1           #location:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 164
    iget-boolean v0, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->scrollEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 174
    iget-boolean v0, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->scrollEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 206
    invoke-super/range {p0 .. p5}, Lcom/google/android/maps/MapView;->onLayout(ZIIII)V

    .line 208
    iget-boolean v6, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->requestViewOnScreen:Z

    if-eqz v6, :cond_0

    .line 210
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 211
    invoke-virtual {p0, v4}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, child:Landroid/view/View;
    iget-object v6, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->view:Landroid/view/View;

    if-ne v0, v6, :cond_3

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 214
    .local v1, childLeft:I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 215
    .local v2, childRight:I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 216
    .local v3, childTop:I
    sub-int v5, p4, p2

    .line 217
    .local v5, parentWidth:I
    if-lez v1, :cond_1

    if-lez v3, :cond_1

    if-ge v2, v5, :cond_1

    .line 218
    iput-boolean v9, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->requestViewOnScreen:Z

    .line 233
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLeft:I
    .end local v2           #childRight:I
    .end local v3           #childTop:I
    .end local v4           #i:I
    .end local v5           #parentWidth:I
    :cond_0
    :goto_1
    return-void

    .line 221
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childLeft:I
    .restart local v2       #childRight:I
    .restart local v3       #childTop:I
    .restart local v4       #i:I
    .restart local v5       #parentWidth:I
    :cond_1
    if-lez v1, :cond_2

    if-le v2, v5, :cond_2

    .line 222
    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v6

    sub-int v7, v2, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    .line 223
    iput-boolean v9, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->requestViewOnScreen:Z

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/map/TiMapView$LocalMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v6

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    .line 227
    iput-boolean v9, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->requestViewOnScreen:Z

    goto :goto_1

    .line 210
    .end local v1           #childLeft:I
    .end local v2           #childRight:I
    .end local v3           #childTop:I
    .end local v5           #parentWidth:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    .end local v0           #child:Landroid/view/View;
    :cond_4
    iput-boolean v9, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->requestViewOnScreen:Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/16 v11, 0x135

    const/high16 v10, 0x4120

    .line 129
    iget-object v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v8}, Lti/modules/titanium/map/TiMapView;->access$000(Lti/modules/titanium/map/TiMapView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v8

    const-string v9, "longpress"

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 132
    .local v0, actionType:I
    packed-switch v0, :pswitch_data_0

    .line 158
    .end local v0           #actionType:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 134
    .restart local v0       #actionType:I
    :pswitch_0
    iget-object v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lti/modules/titanium/map/TiMapView;->access$100(Lti/modules/titanium/map/TiMapView;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 135
    .local v1, msg:Landroid/os/Message;
    iget-object v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    #calls: Lti/modules/titanium/map/TiMapView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v8, p1}, Lti/modules/titanium/map/TiMapView;->access$200(Lti/modules/titanium/map/TiMapView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    iput-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->longClickXCoordinate:F

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->longClickYCoordinate:F

    .line 138
    iget-object v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lti/modules/titanium/map/TiMapView;->access$100(Lti/modules/titanium/map/TiMapView;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x320

    invoke-virtual {v8, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 141
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 142
    .local v2, xValue:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 144
    .local v5, yValue:F
    iget v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->longClickXCoordinate:F

    sub-float v4, v8, v10

    .line 145
    .local v4, xlow:F
    iget v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->longClickXCoordinate:F

    add-float v3, v8, v10

    .line 146
    .local v3, xhigh:F
    iget v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->longClickYCoordinate:F

    sub-float v7, v8, v10

    .line 147
    .local v7, ylow:F
    iget v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->longClickYCoordinate:F

    add-float v6, v8, v10

    .line 149
    .local v6, yhigh:F
    cmpg-float v8, v2, v4

    if-ltz v8, :cond_1

    cmpl-float v8, v2, v3

    if-gtz v8, :cond_1

    cmpg-float v8, v5, v7

    if-ltz v8, :cond_1

    cmpl-float v8, v5, v6

    if-lez v8, :cond_0

    .line 150
    :cond_1
    iget-object v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lti/modules/titanium/map/TiMapView;->access$100(Lti/modules/titanium/map/TiMapView;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 154
    .end local v2           #xValue:F
    .end local v3           #xhigh:F
    .end local v4           #xlow:F
    .end local v5           #yValue:F
    .end local v6           #yhigh:F
    .end local v7           #ylow:F
    :pswitch_2
    iget-object v8, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->this$0:Lti/modules/titanium/map/TiMapView;

    #getter for: Lti/modules/titanium/map/TiMapView;->handler:Landroid/os/Handler;
    invoke-static {v8}, Lti/modules/titanium/map/TiMapView;->access$100(Lti/modules/titanium/map/TiMapView;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestViewOnScreen(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->requestViewOnScreen:Z

    .line 239
    iput-object p1, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->view:Landroid/view/View;

    .line 241
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 122
    iput-boolean p1, p0, Lti/modules/titanium/map/TiMapView$LocalMapView;->scrollEnabled:Z

    .line 123
    return-void
.end method
