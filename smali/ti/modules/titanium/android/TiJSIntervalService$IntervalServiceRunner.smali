.class Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
.super Ljava/lang/Object;
.source "TiJSIntervalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/android/TiJSIntervalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntervalServiceRunner"
.end annotation


# instance fields
.field private counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private interval:J

.field protected proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

.field private serviceSimpleName:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private task:Ljava/util/TimerTask;

.field final synthetic this$0:Lti/modules/titanium/android/TiJSIntervalService;

.field private timer:Ljava/util/Timer;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/TiJSIntervalService;Landroid/app/Service;Lorg/appcelerator/titanium/proxy/ServiceProxy;JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "service"
    .parameter "proxy"
    .parameter "interval"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-object p1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->this$0:Lti/modules/titanium/android/TiJSIntervalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    .line 144
    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    iput-object p3, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .line 153
    iput-wide p4, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->interval:J

    .line 154
    iput-object p6, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->url:Ljava/lang/String;

    .line 155
    invoke-static {p6}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->source:Ljava/lang/String;

    .line 156
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->serviceSimpleName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->url:Ljava/lang/String;

    return-object v0
.end method

.method private destroyTimer()V
    .locals 4

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "TiJSIntervalService"

    const-string v2, "Canceling TimerTask"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    .line 167
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 168
    const-string v1, "TiJSIntervalService"

    const-string v2, "Canceling Timer"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 170
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "TiJSIntervalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thrown while destroying timer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method start()V
    .locals 6

    .prologue
    .line 189
    const-string v0, "TiJSIntervalService"

    const-string v1, "start runner"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner$1;-><init>(Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;)V

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    .line 209
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->serviceSimpleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Timer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getServiceInstanceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    .line 210
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->interval:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 211
    return-void
.end method

.method stop()V
    .locals 3

    .prologue
    .line 180
    const-string v0, "TiJSIntervalService"

    const-string v1, "stop runner"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    const-string v1, "stop"

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 184
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->destroyTimer()V

    .line 185
    return-void
.end method
