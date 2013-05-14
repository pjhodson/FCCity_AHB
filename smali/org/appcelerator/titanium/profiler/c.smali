.class final Lorg/appcelerator/titanium/profiler/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/appcelerator/titanium/profiler/TiProfiler;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/profiler/TiProfiler;)V
    .locals 0

    iput-object p1, p0, Lorg/appcelerator/titanium/profiler/c;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/c;->a:Lorg/appcelerator/titanium/profiler/TiProfiler;

    invoke-static {v0}, Lorg/appcelerator/titanium/profiler/TiProfiler;->a(Lorg/appcelerator/titanium/profiler/TiProfiler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TiProfiler"

    const-string v2, "Operation wait interrupted"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
