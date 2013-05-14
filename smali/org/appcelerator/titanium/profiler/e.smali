.class final Lorg/appcelerator/titanium/profiler/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/profiler/TiProfiler;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p2, p0, Lorg/appcelerator/titanium/profiler/e;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/appcelerator/titanium/profiler/e;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/e;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/e;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
