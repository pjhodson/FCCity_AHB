.class final Lorg/appcelerator/titanium/profiler/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/profiler/TiProfiler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lorg/appcelerator/titanium/profiler/TiProfiler;->stopProfiling()V

    return-void
.end method
