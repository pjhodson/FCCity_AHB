.class Lorg/appcelerator/titanium/view/TiUIView$5;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->registerTouchEvents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pointersDown:I

.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;

.field final synthetic val$detector:Landroid/view/GestureDetector;

.field final synthetic val$scaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/ScaleGestureDetector;Landroid/view/GestureDetector;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->val$scaleDetector:Landroid/view/ScaleGestureDetector;

    iput-object p3, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->val$detector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1206
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1207
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v4, v4, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    const-string v5, "x"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v4, v4, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    const-string v5, "y"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->val$scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1212
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->val$scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1213
    iput v3, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    .line 1250
    :goto_0
    return v2

    .line 1217
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->val$detector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1218
    .local v0, handled:Z
    if-eqz v0, :cond_2

    .line 1219
    iput v3, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    goto :goto_0

    .line 1223
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 1224
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #getter for: Lorg/appcelerator/titanium/view/TiUIView;->didScale:Z
    invoke-static {v2}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1225
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #setter for: Lorg/appcelerator/titanium/view/TiUIView;->didScale:Z
    invoke-static {v2, v3}, Lorg/appcelerator/titanium/view/TiUIView;->access$002(Lorg/appcelerator/titanium/view/TiUIView;Z)Z

    .line 1226
    iput v3, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    .line 1240
    :cond_3
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/view/TiUIView;->access$100()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1241
    .local v1, motionEvent:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1242
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v2, v2, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1243
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v4, p2}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    :cond_4
    move v2, v3

    .line 1250
    goto :goto_0

    .line 1228
    .end local v1           #motionEvent:Ljava/lang/String;
    :cond_5
    iget v2, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    goto :goto_1

    .line 1230
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 1231
    iget v4, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    if-ne v4, v2, :cond_7

    .line 1232
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v5, "twofingertap"

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v6, p2}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 1233
    iput v3, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    goto :goto_0

    .line 1236
    :cond_7
    iput v3, p0, Lorg/appcelerator/titanium/view/TiUIView$5;->pointersDown:I

    goto :goto_1
.end method
