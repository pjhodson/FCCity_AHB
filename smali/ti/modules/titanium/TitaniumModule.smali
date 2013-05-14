.class public Lti/modules/titanium/TitaniumModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "TitaniumModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/TitaniumModule$Timer;
    }
.end annotation


# static fields
.field private static final MSG_ALERT:I = 0x136

.field private static final TAG:Ljava/lang/String; = "TitaniumModule"

.field private static final activeTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lti/modules/titanium/TitaniumModule$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private static lastTimerId:I


# instance fields
.field private basePath:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numberFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lti/modules/titanium/TitaniumModule;->activeTimers:Landroid/util/SparseArray;

    .line 49
    const/4 v0, 0x1

    sput v0, Lti/modules/titanium/TitaniumModule;->lastTimerId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    .line 59
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lti/modules/titanium/TitaniumModule;->activeTimers:Landroid/util/SparseArray;

    return-object v0
.end method

.method private cancelTimer(I)V
    .locals 2
    .parameter "timerId"

    .prologue
    .line 187
    sget-object v1, Lti/modules/titanium/TitaniumModule;->activeTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/TitaniumModule$Timer;

    .line 188
    .local v0, timer:Lti/modules/titanium/TitaniumModule$Timer;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lti/modules/titanium/TitaniumModule$Timer;->cancel()V

    .line 190
    sget-object v1, Lti/modules/titanium/TitaniumModule;->activeTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public static cancelTimers()V
    .locals 4

    .prologue
    .line 196
    sget-object v3, Lti/modules/titanium/TitaniumModule;->activeTimers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 197
    .local v2, timerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 198
    sget-object v3, Lti/modules/titanium/TitaniumModule;->activeTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/TitaniumModule$Timer;

    .line 199
    .local v1, timer:Lti/modules/titanium/TitaniumModule$Timer;
    invoke-virtual {v1}, Lti/modules/titanium/TitaniumModule$Timer;->cancel()V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v1           #timer:Lti/modules/titanium/TitaniumModule$Timer;
    :cond_0
    sget-object v3, Lti/modules/titanium/TitaniumModule;->activeTimers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 203
    return-void
.end method

.method private createTimer(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)I
    .locals 9
    .parameter "callback"
    .parameter "timeout"
    .parameter "args"
    .parameter "interval"

    .prologue
    .line 175
    sget v2, Lti/modules/titanium/TitaniumModule;->lastTimerId:I

    add-int/lit8 v1, v2, 0x1

    sput v1, Lti/modules/titanium/TitaniumModule;->lastTimerId:I

    .line 177
    .local v2, timerId:I
    new-instance v0, Lti/modules/titanium/TitaniumModule$Timer;

    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lti/modules/titanium/TitaniumModule$Timer;-><init>(Lti/modules/titanium/TitaniumModule;ILandroid/os/Handler;Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)V

    .line 178
    .local v0, timer:Lti/modules/titanium/TitaniumModule$Timer;
    sget-object v1, Lti/modules/titanium/TitaniumModule;->activeTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Lti/modules/titanium/TitaniumModule$Timer;->schedule()V

    .line 182
    return v2
.end method


# virtual methods
.method public alert(Ljava/lang/Object;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 232
    if-nez p1, :cond_0

    move-object v0, v1

    .line 233
    .local v0, msg:Ljava/lang/String;
    :goto_0
    const-string v2, "ALERT"

    invoke-static {v2, v0}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    const-string v2, "Alert"

    invoke-static {v2, v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 247
    :goto_1
    return-void

    .line 232
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    .restart local v0       #msg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x136

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public clearInterval(I)V
    .locals 0
    .parameter "timerId"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lti/modules/titanium/TitaniumModule;->cancelTimer(I)V

    .line 227
    return-void
.end method

.method public clearTimeout(I)V
    .locals 0
    .parameter "timerId"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lti/modules/titanium/TitaniumModule;->cancelTimer(I)V

    .line 221
    return-void
.end method

.method public dumpCoverage()V
    .locals 7

    .prologue
    .line 381
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 382
    .local v0, app:Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isCoverageEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 383
    :cond_0
    const-string v5, "TitaniumModule"

    const-string v6, "Coverage is not enabled, no coverage data will be generated"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 389
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 390
    .local v2, extStorage:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "coverage.json"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .local v3, reportFile:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 393
    .local v4, reportOut:Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    .end local v2           #extStorage:Ljava/io/File;
    .end local v3           #reportFile:Ljava/io/File;
    .end local v4           #reportOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TitaniumModule"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBuildDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, httpAgent:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    const-string v2, " Titanium/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 403
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 411
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 405
    :pswitch_0
    const-string v1, "Alert"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 407
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_0
    .end packed-switch
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->initActivity(Landroid/app/Activity;)V

    .line 65
    iget-object v0, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public localize([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    .line 352
    const/4 v4, 0x0

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/String;

    .line 353
    .local v2, key:Ljava/lang/String;
    array-length v4, p1

    if-le v4, v5, :cond_1

    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 356
    .local v0, defaultValue:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "string."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    .line 357
    .local v3, resid:I
    if-eqz v3, :cond_0

    .line 358
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/appcelerator/titanium/TiApplication;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 374
    .end local v0           #defaultValue:Ljava/lang/String;
    .end local v3           #resid:I
    :cond_0
    :goto_1
    return-object v0

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    .restart local v0       #defaultValue:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 365
    .local v1, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    const-string v4, "TitaniumModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource string with key \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not found.  Returning default value."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    .end local v1           #e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    :catch_1
    move-exception v1

    .line 372
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "TitaniumModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception trying to localize string \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setInterval(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;)I
    .locals 6
    .parameter "krollFunction"
    .parameter "timeout"
    .parameter "args"

    .prologue
    .line 214
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/TitaniumModule;->createTimer(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public setTimeout(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;)I
    .locals 6
    .parameter "krollFunction"
    .parameter "timeout"
    .parameter "args"

    .prologue
    .line 208
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/TitaniumModule;->createTimer(Lorg/appcelerator/kroll/KrollFunction;J[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public stringFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "format"
    .parameter "args"

    .prologue
    .line 255
    :try_start_0
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    array-length v1, p2

    if-nez v1, :cond_0

    .line 258
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    .line 261
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "TitaniumModule"

    const-string v2, "Error occured while formatting string"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stringFormatCurrency(D)Ljava/lang/String;
    .locals 1
    .parameter "currency"

    .prologue
    .line 298
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringFormatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .end parameter
    .parameter "format"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 273
    const/4 v0, 0x3

    .line 275
    .local v0, style:I
    if-eqz p2, :cond_0

    .line 276
    const-string v1, "medium"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const/4 v0, 0x2

    .line 284
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 279
    :cond_1
    const-string v1, "long"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stringFormatDecimal([Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .parameter "args"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, pattern:Ljava/lang/String;
    const/4 v2, 0x0

    .line 307
    .local v2, locale:Ljava/lang/String;
    array-length v5, p1

    if-ne v5, v8, :cond_3

    .line 309
    aget-object v5, p1, v7

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, test:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 311
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    :cond_0
    move-object v3, v4

    .line 325
    .end local v4           #test:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_4

    const-string v5, ""

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keysep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_5

    const-string v5, ""

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 329
    iget-object v5, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    .line 346
    .local v0, format:Ljava/text/NumberFormat;
    :goto_3
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v0, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 315
    .end local v0           #format:Ljava/text/NumberFormat;
    .end local v1           #key:Ljava/lang/String;
    .restart local v4       #test:Ljava/lang/String;
    :cond_2
    move-object v2, v4

    goto :goto_0

    .line 319
    .end local v4           #test:Ljava/lang/String;
    :cond_3
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    .line 321
    aget-object v5, p1, v7

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 322
    aget-object v5, p1, v8

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v5, v2

    .line 325
    goto :goto_1

    :cond_5
    move-object v5, v3

    goto :goto_2

    .line 332
    .restart local v1       #key:Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_8

    .line 333
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 339
    .restart local v0       #format:Ljava/text/NumberFormat;
    :goto_4
    if-eqz v3, :cond_7

    instance-of v5, v0, Ljava/text/DecimalFormat;

    if-eqz v5, :cond_7

    move-object v5, v0

    .line 340
    check-cast v5, Ljava/text/DecimalFormat;

    invoke-virtual {v5, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 343
    :cond_7
    iget-object v5, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 336
    .end local v0           #format:Ljava/text/NumberFormat;
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .restart local v0       #format:Ljava/text/NumberFormat;
    goto :goto_4
.end method

.method public stringFormatTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 290
    const/4 v0, 0x3

    .line 292
    .local v0, style:I
    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public testThrow()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Testing throwing throwables"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
