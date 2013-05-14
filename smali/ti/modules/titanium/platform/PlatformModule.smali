.class public Lti/modules/titanium/platform/PlatformModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "PlatformModule.java"


# static fields
.field public static final BATTERY_STATE_CHARGING:I = 0x2

.field public static final BATTERY_STATE_FULL:I = 0x3

.field public static final BATTERY_STATE_UNKNOWN:I = 0x0

.field public static final BATTERY_STATE_UNPLUGGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlatformModule"


# instance fields
.field protected batteryLevel:D

.field protected batteryState:I

.field protected batteryStateReady:Z

.field protected batteryStateReceiver:Landroid/content/BroadcastReceiver;

.field protected displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    .line 52
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 57
    invoke-direct {p0}, Lti/modules/titanium/platform/PlatformModule;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/platform/PlatformModule;II)D
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/platform/PlatformModule;->convertBatteryLevel(II)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lti/modules/titanium/platform/PlatformModule;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lti/modules/titanium/platform/PlatformModule;->convertBatteryStatus(I)I

    move-result v0

    return v0
.end method

.method private convertBatteryLevel(II)D
    .locals 3
    .parameter "level"
    .parameter "scale"

    .prologue
    .line 275
    const/4 v0, -0x1

    .line 276
    .local v0, l:I
    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    .line 277
    mul-int/lit8 v1, p1, 0x64

    div-int v0, v1, p2

    .line 279
    :cond_0
    int-to-double v1, v0

    return-wide v1
.end method

.method private convertBatteryStatus(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, state:I
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return v0

    .line 257
    :pswitch_0
    const/4 v0, 0x2

    .line 258
    goto :goto_0

    .line 261
    :pswitch_1
    const/4 v0, 0x3

    .line 262
    goto :goto_0

    .line 266
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .parameter "batteryReceiver"

    .prologue
    .line 284
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 285
    .local v0, a:Landroid/app/Activity;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, batteryFilter:Landroid/content/IntentFilter;
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    return-void
.end method


# virtual methods
.method public createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 237
    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V

    .line 240
    :cond_0
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 246
    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    :cond_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMemory()D
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getAvailableMemory()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryLevel()D
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    return-wide v0
.end method

.method public getBatteryMonitoring()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBatteryState()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    return v0
.end method

.method public getDisplayCaps()Lti/modules/titanium/platform/DisplayCapsProxy;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lti/modules/titanium/platform/DisplayCapsProxy;

    invoke-direct {v0}, Lti/modules/titanium/platform/DisplayCapsProxy;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/platform/DisplayCapsProxy;->setActivity(Landroid/app/Activity;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMacaddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getNetmask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOstype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getOstype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorCount()I
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getProcessorCount()I

    move-result v0

    return v0
.end method

.method public getRuntime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->getRuntimeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is24HourTimeFormat()Z
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 139
    .local v0, app:Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 312
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 313
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 302
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onPause(Landroid/app/Activity;)V

    .line 303
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 292
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onResume(Landroid/app/Activity;)V

    .line 293
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "PlatformModule"

    const-string v1, "Reregistering battery changed receiver"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    :cond_0
    return-void
.end method

.method public openURL(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    .line 152
    const-string v3, "PlatformModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launching viewer for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 154
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v3, 0x1

    .line 161
    :goto_0
    return v3

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "PlatformModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected registerBatteryStateReceiver()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lti/modules/titanium/platform/PlatformModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/platform/PlatformModule$1;-><init>(Lti/modules/titanium/platform/PlatformModule;)V

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    return-void
.end method

.method public setBatteryMonitoring(Z)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 177
    if-eqz p1, :cond_1

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method protected unregisterBatteryStateReceiver()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    return-void
.end method
