.class Lti/modules/titanium/ui/widget/picker/TiUINativePicker$1;
.super Landroid/widget/Spinner;
.source "TiUINativePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/picker/TiUINativePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/picker/TiUINativePicker;

.field final synthetic val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/picker/TiUINativePicker;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$1;->this$0:Lti/modules/titanium/ui/widget/picker/TiUINativePicker;

    iput-object p3, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 47
    invoke-super/range {p0 .. p5}, Landroid/widget/Spinner;->onLayout(ZIIII)V

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 54
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 55
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$1;->this$0:Lti/modules/titanium/ui/widget/picker/TiUINativePicker;

    const-string v2, "click"

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 59
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
