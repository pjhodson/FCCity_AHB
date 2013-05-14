.class final Lorg/appcelerator/titanium/profiler/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[Ljava/nio/ByteBuffer;

.field private synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/profiler/TiProfiler;[Ljava/nio/ByteBuffer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p2, p0, Lorg/appcelerator/titanium/profiler/f;->a:[Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lorg/appcelerator/titanium/profiler/f;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/f;->a:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {}, Lorg/appcelerator/titanium/profiler/TiProfiler;->cpuSamples()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/appcelerator/titanium/profiler/f;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
