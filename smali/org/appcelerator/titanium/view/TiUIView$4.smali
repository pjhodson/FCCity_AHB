.class Lorg/appcelerator/titanium/view/TiUIView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TiUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->registerTouchEvents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 1146
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v3, v3, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "doubletap"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v3, v3, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "dblclick"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1147
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v4, "doubletap"

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v5, p1}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v1

    .line 1148
    .local v1, handledTap:Z
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v4, "dblclick"

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v5, p1}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    .line 1149
    .local v0, handledClick:Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 1151
    .end local v0           #handledClick:Z
    .end local v1           #handledTap:Z
    :cond_2
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x0

    .line 1176
    const-string v1, "TiUIView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SWIPE on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v3, v3, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v1, v1, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "swipe"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1178
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 1179
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1180
    const-string v2, "direction"

    cmpl-float v1, p3, v4

    if-lez v1, :cond_0

    const-string v1, "right"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    :goto_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v2, "swipe"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v1

    .line 1186
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :goto_2
    return v1

    .line 1180
    .restart local v0       #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const-string v1, "left"

    goto :goto_0

    .line 1182
    :cond_1
    const-string v2, "direction"

    cmpl-float v1, p4, v4

    if-lez v1, :cond_2

    const-string v1, "down"

    :goto_3
    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v1, "up"

    goto :goto_3

    .line 1186
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 1192
    const-string v0, "TiUIView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LONGPRESS on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v2, v2, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "longpress"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v1, "longpress"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2, p1}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 1197
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 1157
    const-string v0, "TiUIView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAP, TAP, TAP on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v2, v2, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "singletap"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v1, "singletap"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$4;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2, p1}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    .line 1170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
