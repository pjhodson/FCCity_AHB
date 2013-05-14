.class public Lti/modules/titanium/ui/widget/TiUIImageView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIImageView$Animator;,
        Lti/modules/titanium/ui/widget/TiUIImageView$Loader;,
        Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = 0xc8

.field private static final FRAME_QUEUE_SIZE:I = 0x5

.field public static final INFINITE:I = 0x0

.field public static final MIN_DURATION:I = 0x1e

.field private static final SET_IMAGE:I = 0x2711

.field private static final START:I = 0x2712

.field private static final STOP:I = 0x2713

.field private static final TAG:Ljava/lang/String; = "TiUIImageView"


# instance fields
.field private animating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

.field private currentDuration:I

.field private defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

.field private downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

.field private firedLoad:Z

.field private imageSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;"
        }
    .end annotation
.end field

.field private imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

.field private isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

.field private loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

.field private loaderThread:Ljava/lang/Thread;

.field private mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

.field private mainHandler:Landroid/os/Handler;

.field private paused:Z

.field private releasedLock:Ljava/lang/Object;

.field private reverse:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    .line 68
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mainHandler:Landroid/os/Handler;

    .line 85
    invoke-static {}, Lorg/appcelerator/titanium/util/TiImageLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-object v1, p1

    .line 90
    check-cast v1, Lti/modules/titanium/ui/ImageViewProxy;

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    .line 92
    const-string v1, "TiUIImageView"

    const-string v2, "Creating an ImageView"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, view:Lti/modules/titanium/ui/widget/TiImageView;
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$1;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

    .line 126
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$2;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$2;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

    .line 155
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setNativeView(Landroid/view/View;)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/ImageViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiLoadImageListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

    return-object v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    return v0
.end method

.method static synthetic access$1300(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    return-object v0
.end method

.method static synthetic access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireChange(I)V

    return-void
.end method

.method static synthetic access$1600(Lti/modules/titanium/ui/widget/TiUIImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIImageView;Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleCacheAndSetImage(Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    return-void
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    return v0
.end method

.method static synthetic access$702(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    return p1
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    return v0
.end method

.method private fireChange(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 461
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 462
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v1, "change"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 464
    return-void
.end method

.method private fireError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "imageUrl"

    .prologue
    .line 474
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 476
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 477
    if-eqz p2, :cond_0

    .line 478
    const-string v1, "image"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_0
    const-string v1, "error"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 481
    return-void
.end method

.method private fireLoad(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 448
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 449
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v1, "load"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 451
    return-void
.end method

.method private fireStart()V
    .locals 2

    .prologue
    .line 455
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 456
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "start"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 457
    return-void
.end method

.method private fireStop()V
    .locals 2

    .prologue
    .line 468
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 469
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "stop"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 470
    return-void
.end method

.method private getView()Lti/modules/titanium/ui/widget/TiImageView;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    check-cast v0, Lti/modules/titanium/ui/widget/TiImageView;

    return-object v0
.end method

.method private handleCacheAndSetImage(Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 5
    .parameter "imageref"

    .prologue
    const/4 v4, 0x1

    .line 217
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    .line 219
    .local v1, hash:I
    invoke-virtual {p1, v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 221
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiImageLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 222
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/util/TiImageLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 225
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    if-nez v2, :cond_1

    .line 226
    const-string v2, "image"

    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    .line 227
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 231
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #hash:I
    :cond_1
    return-void
.end method

.method private handleSetImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 244
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 245
    .local v0, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    :cond_0
    return-void
.end method

.method private makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "object"

    .prologue
    .line 642
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    .line 647
    :goto_0
    return-object v0

    .line 644
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 647
    .restart local p1
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method private setDefaultImage()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-nez v0, :cond_0

    .line 726
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 732
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setDefaultImageSource(Ljava/lang/Object;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 653
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 660
    :goto_0
    return-void

    .line 655
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    goto :goto_0

    .line 658
    .restart local p1
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    goto :goto_0
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 235
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleSetImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setImageInternal()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 664
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v8, :cond_1

    .line 665
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    .line 670
    :goto_0
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeNull()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 721
    :cond_0
    :goto_1
    return-void

    .line 667
    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 675
    :cond_2
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v10, :cond_7

    .line 676
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 679
    .local v4, imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v2

    .line 680
    .local v2, hash:I
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/util/TiImageLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 681
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 682
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 683
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 684
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    if-nez v8, :cond_0

    .line 685
    const-string v8, "image"

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    .line 686
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    goto :goto_1

    .line 690
    :cond_3
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/util/TiImageLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_4
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 695
    const/4 v5, 0x0

    .line 696
    .local v5, isCachedInDisk:Z
    const/4 v6, 0x0

    .line 698
    .local v6, uri:Ljava/net/URI;
    :try_start_0
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiUrl;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, imageUrl:Ljava/lang/String;
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 700
    .end local v6           #uri:Ljava/net/URI;
    .local v7, uri:Ljava/net/URI;
    :try_start_1
    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    move-object v6, v7

    .line 708
    .end local v3           #imageUrl:Ljava/lang/String;
    .end local v7           #uri:Ljava/net/URI;
    .restart local v6       #uri:Ljava/net/URI;
    :goto_2
    if-nez v5, :cond_5

    if-eqz v6, :cond_5

    .line 709
    invoke-static {}, Lorg/appcelerator/titanium/util/TiDownloadManager;->getInstance()Lorg/appcelerator/titanium/util/TiDownloadManager;

    move-result-object v8

    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

    invoke-virtual {v8, v6, v9}, Lorg/appcelerator/titanium/util/TiDownloadManager;->download(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V

    goto :goto_1

    .line 701
    :catch_0
    move-exception v1

    .line 702
    .local v1, e:Ljava/net/URISyntaxException;
    :goto_3
    const-string v8, "TiUIImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URISyntaxException for url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 703
    .end local v1           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 704
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_4
    const-string v8, "TiUIImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NullPointerException for url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 713
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_5
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->getInstance()Lorg/appcelerator/titanium/util/TiLoadImageManager;

    move-result-object v8

    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

    invoke-virtual {v8, v4, v9}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->load(Lorg/appcelerator/titanium/view/TiDrawableReference;Lorg/appcelerator/titanium/util/TiLoadImageListener;)V

    goto/16 :goto_1

    .line 716
    .end local v5           #isCachedInDisk:Z
    .end local v6           #uri:Ljava/net/URI;
    :cond_6
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->getInstance()Lorg/appcelerator/titanium/util/TiLoadImageManager;

    move-result-object v8

    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

    invoke-virtual {v8, v4, v9}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->load(Lorg/appcelerator/titanium/view/TiDrawableReference;Lorg/appcelerator/titanium/util/TiLoadImageListener;)V

    goto/16 :goto_1

    .line 719
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #hash:I
    .end local v4           #imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_7
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    goto/16 :goto_1

    .line 703
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #hash:I
    .restart local v3       #imageUrl:Ljava/lang/String;
    .restart local v4       #imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    .restart local v5       #isCachedInDisk:Z
    .restart local v7       #uri:Ljava/net/URI;
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7           #uri:Ljava/net/URI;
    .restart local v6       #uri:Ljava/net/URI;
    goto :goto_4

    .line 701
    .end local v6           #uri:Ljava/net/URI;
    .restart local v7       #uri:Ljava/net/URI;
    :catch_3
    move-exception v1

    move-object v6, v7

    .end local v7           #uri:Ljava/net/URI;
    .restart local v6       #uri:Ljava/net/URI;
    goto :goto_3
.end method

.method private setImageSource(Ljava/lang/Object;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 624
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 625
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 626
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 627
    .local v3, o:Ljava/lang/Object;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #o:Ljava/lang/Object;
    .restart local p1
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .end local p1
    :cond_1
    return-void
.end method

.method private setImageSource(Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 637
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    return-void
.end method

.method private setImages()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 407
    :cond_0
    const-string v0, "Missing Images"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireError(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-nez v0, :cond_1

    .line 412
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 413
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 414
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 415
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 416
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 417
    const-string v0, "TiUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STARTING LOADER THREAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public clearOpacity(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 910
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 911
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 912
    .local v0, iview:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 913
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 915
    :cond_0
    return-void
.end method

.method public getDuration()D
    .locals 6

    .prologue
    const-wide/high16 v2, 0x403e

    .line 425
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 426
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 427
    .local v0, duration:D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 435
    .end local v0           #duration:D
    :cond_0
    :goto_0
    return-wide v0

    .line 433
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "duration"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    const-wide/high16 v0, 0x4069

    goto :goto_0
.end method

.method protected getParentView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 190
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 178
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_1

    .line 179
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 181
    :cond_1
    if-nez v0, :cond_2

    .line 182
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    .line 183
    .local v1, parentProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 185
    .local v2, parentTiUi:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v2, :cond_2

    .line 186
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .end local v1           #parentProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2           #parentTiUi:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    move-object v0, v3

    .line 190
    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "repeatCount"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "repeatCount"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 195
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 209
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 198
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 199
    .local v0, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleSetImage(Landroid/graphics/Bitmap;)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 201
    goto :goto_0

    .line 203
    .end local v0           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStart()V

    move v1, v2

    .line 204
    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStop()V

    move v1, v2

    .line 207
    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleStart()V
    .locals 6

    .prologue
    .line 536
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    if-nez v0, :cond_2

    .line 537
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 539
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 541
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 542
    const-string v0, "TiUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STARTING LOADER THREAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lti/modules/titanium/ui/widget/TiUIImageView$Loader;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    .line 546
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 548
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 551
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getDuration()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I

    .line 553
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 554
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStart()V

    .line 555
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I

    int-to-long v2, v2

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    goto :goto_0
.end method

.method public handleStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 594
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 597
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 598
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 600
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 602
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 608
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v1, :cond_2

    .line 609
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v2

    .line 610
    :try_start_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 611
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :cond_2
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 615
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 616
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    .line 617
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 619
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStop()V

    .line 620
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "TiUIImageView"

    const-string v2, "LoaderThread termination interrupted"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 867
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 839
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 843
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->pause()V

    .line 844
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 848
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    .line 849
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 853
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 857
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->stop()V

    .line 858
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 564
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "d"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 737
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v4

    .line 739
    .local v4, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-nez v4, :cond_0

    .line 800
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    instance-of v6, v6, Lti/modules/titanium/ui/ScrollViewProxy;

    if-eqz v6, :cond_1

    .line 745
    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableScale(Z)V

    .line 748
    :cond_1
    const-string v6, "width"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 749
    const-string v6, "width"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 750
    .local v5, widthProperty:Ljava/lang/String;
    const-string v6, "size"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "auto"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    move v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Lti/modules/titanium/ui/widget/TiImageView;->setWidthDefined(Z)V

    .line 752
    .end local v5           #widthProperty:Ljava/lang/String;
    :cond_2
    const-string v6, "height"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 753
    const-string v6, "height"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, heightProperty:Ljava/lang/String;
    const-string v6, "size"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "auto"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Lti/modules/titanium/ui/widget/TiImageView;->setHeightDefined(Z)V

    .line 757
    .end local v2           #heightProperty:Ljava/lang/String;
    :cond_3
    const-string v6, "images"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 758
    const-string v6, "images"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 759
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    .line 761
    :cond_4
    const-string v6, "enableZoomControls"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 762
    const-string v6, "enableZoomControls"

    invoke-static {p1, v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableZoomControls(Z)V

    .line 764
    :cond_5
    const-string v6, "defaultImage"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 765
    const-string v6, "defaultImage"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImageSource(Ljava/lang/Object;)V

    .line 767
    :cond_6
    const-string v6, "image"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 770
    const/4 v1, 0x1

    .line 771
    .local v1, changeImage:Z
    const-string v6, "image"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v3

    .line 772
    .local v3, source:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_7

    .line 773
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v6, v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 774
    const/4 v1, 0x0

    .line 777
    :cond_7
    if-eqz v1, :cond_a

    .line 779
    const-string v6, "autorotate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 780
    .local v0, autoRotate:Ljava/lang/Object;
    if-eqz v0, :cond_8

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 781
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getOrientation()I

    move-result v6

    invoke-virtual {v4, v6}, Lti/modules/titanium/ui/widget/TiImageView;->setOrientation(I)V

    .line 783
    :cond_8
    const-string v6, "decodeRetries"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 784
    const-string v6, "decodeRetries"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->setDecodeRetries(I)V

    .line 786
    :cond_9
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    .line 787
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 788
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageInternal()V

    .line 799
    .end local v0           #autoRotate:Ljava/lang/Object;
    .end local v1           #changeImage:Z
    .end local v3           #source:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_a
    :goto_3
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .restart local v5       #widthProperty:Ljava/lang/String;
    :cond_b
    move v6, v8

    .line 750
    goto/16 :goto_1

    .end local v5           #widthProperty:Ljava/lang/String;
    .restart local v2       #heightProperty:Ljava/lang/String;
    :cond_c
    move v6, v8

    .line 754
    goto/16 :goto_2

    .line 791
    .end local v2           #heightProperty:Ljava/lang/String;
    :cond_d
    const-string v6, "images"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 792
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    const-string v7, "image"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 793
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v6, :cond_a

    .line 794
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    goto :goto_3
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 805
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v1

    .line 806
    .local v1, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-nez v1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    const-string v5, "enableZoomControls"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 811
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableZoomControls(Z)V

    goto :goto_0

    .line 812
    :cond_2
    const-string v5, "image"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 813
    if-nez p2, :cond_3

    if-nez p3, :cond_4

    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    :cond_4
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 815
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 816
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageInternal()V

    goto :goto_0

    .line 818
    :cond_5
    const-string v5, "images"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 819
    instance-of v3, p3, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 820
    if-eqz p2, :cond_6

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 821
    :cond_6
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 822
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    goto :goto_0

    .line 826
    :cond_7
    const-string v5, "width"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 827
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, widthProperty:Ljava/lang/String;
    const-string v5, "size"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "auto"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :goto_1
    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/widget/TiImageView;->setWidthDefined(Z)V

    .line 833
    .end local v2           #widthProperty:Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .restart local v2       #widthProperty:Ljava/lang/String;
    :cond_9
    move v3, v4

    .line 828
    goto :goto_1

    .line 829
    .end local v2           #widthProperty:Ljava/lang/String;
    :cond_a
    const-string v5, "height"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 830
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, heightProperty:Ljava/lang/String;
    const-string v5, "size"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "auto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :goto_3
    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/widget/TiImageView;->setHeightDefined(Z)V

    goto :goto_2

    :cond_b
    move v3, v4

    goto :goto_3
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 920
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 921
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v3, :cond_0

    .line 922
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v4

    .line 923
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 924
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 925
    iput-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 927
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 928
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 929
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    monitor-enter v4

    .line 930
    :try_start_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 931
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 932
    .local v2, imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v0

    .line 933
    .local v0, hash:I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/util/TiImageLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 938
    .end local v0           #hash:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #imageref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 924
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 935
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 936
    const/4 v3, 0x0

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 938
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 940
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    if-eqz v3, :cond_3

    .line 941
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 942
    iput-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 944
    :cond_3
    iput-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 945
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 570
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 573
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v0, :cond_1

    .line 577
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v1

    .line 578
    :try_start_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 579
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 581
    :cond_1
    return-void

    .line 573
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 579
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected setOpacity(Landroid/view/View;F)V
    .locals 2
    .parameter "view"
    .parameter "opacity"

    .prologue
    .line 900
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 901
    .local v0, iview:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 902
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->createColorFilterForOpacity(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 904
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    .line 905
    return-void
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 163
    check-cast p1, Lti/modules/titanium/ui/ImageViewProxy;

    .end local p1
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    .line 164
    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .parameter "reverse"

    .prologue
    .line 877
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    .line 878
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 526
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 532
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStart()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 585
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 587
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 591
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStop()V

    goto :goto_0
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 882
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v2

    .line 883
    .local v2, view:Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v2, :cond_2

    .line 884
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 885
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 886
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 887
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 888
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 890
    :cond_0
    if-nez v0, :cond_1

    move-object v3, v4

    .line 894
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 890
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    goto :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object v3, v4

    .line 894
    goto :goto_0
.end method
