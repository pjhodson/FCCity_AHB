.class Lti/modules/titanium/platform/PlatformModule$1;
.super Landroid/content/BroadcastReceiver;
.source "PlatformModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/platform/PlatformModule;


# direct methods
.method constructor <init>(Lti/modules/titanium/platform/PlatformModule;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lti/modules/titanium/platform/PlatformModule$1;->this$0:Lti/modules/titanium/platform/PlatformModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 214
    const-string v2, "scale"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, scale:I
    iget-object v2, p0, Lti/modules/titanium/platform/PlatformModule$1;->this$0:Lti/modules/titanium/platform/PlatformModule;

    iget-object v3, p0, Lti/modules/titanium/platform/PlatformModule$1;->this$0:Lti/modules/titanium/platform/PlatformModule;

    const-string v4, "level"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lti/modules/titanium/platform/PlatformModule;->convertBatteryLevel(II)D
    invoke-static {v3, v4, v1}, Lti/modules/titanium/platform/PlatformModule;->access$000(Lti/modules/titanium/platform/PlatformModule;II)D

    move-result-wide v3

    iput-wide v3, v2, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    .line 216
    iget-object v2, p0, Lti/modules/titanium/platform/PlatformModule$1;->this$0:Lti/modules/titanium/platform/PlatformModule;

    iget-object v3, p0, Lti/modules/titanium/platform/PlatformModule$1;->this$0:Lti/modules/titanium/platform/PlatformModule;

    const-string v4, "status"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lti/modules/titanium/platform/PlatformModule;->convertBatteryStatus(I)I
    invoke-static {v3, v4}, Lti/modules/titanium/platform/PlatformModule;->access$100(Lti/modules/titanium/platform/PlatformModule;I)I

    move-result v3

    iput v3, v2, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    .line 218
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 219
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "level"

    iget-object v3, p0, Lti/modules/titanium/platform/PlatformModule$1;->this$0:Lti/modules/titanium/platform/PlatformModule;

    iget-wide v3, v3, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v2, "state"

    iget-object v3, p0, Lti/modules/titanium/platform/PlatformModule$1;->this$0:Lti/modules/titanium/platform/PlatformModule;

    iget v3, v3, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v2, p0, Lti/modules/titanium/platform/PlatformModule$1;->this$0:Lti/modules/titanium/platform/PlatformModule;

    const-string v3, "battery"

    invoke-virtual {v2, v3, v0}, Lti/modules/titanium/platform/PlatformModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 222
    return-void
.end method
