.class Lti/modules/titanium/gesture/GestureModule$1;
.super Ljava/lang/Object;
.source "GestureModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiBaseActivity$OrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/gesture/GestureModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/gesture/GestureModule;


# direct methods
.method constructor <init>(Lti/modules/titanium/gesture/GestureModule;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lti/modules/titanium/gesture/GestureModule$1;->this$0:Lti/modules/titanium/gesture/GestureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "configOrientationMode"

    .prologue
    .line 78
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 79
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "orientation"

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiOrientationHelper;->convertConfigToTiOrientationMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lti/modules/titanium/gesture/GestureModule$1;->this$0:Lti/modules/titanium/gesture/GestureModule;

    const-string v2, "orientationchange"

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/gesture/GestureModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 81
    return-void
.end method
