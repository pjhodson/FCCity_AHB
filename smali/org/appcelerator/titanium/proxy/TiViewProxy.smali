.class public abstract Lorg/appcelerator/titanium/proxy/TiViewProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ADD_CHILD:I = 0x139

.field private static final MSG_ANIMATE:I = 0x13f

.field private static final MSG_BLUR:I = 0x13b

.field private static final MSG_FINISH_LAYOUT:I = 0x143

.field private static final MSG_FIRST_ID:I = 0xd3

.field private static final MSG_FOCUS:I = 0x13c

.field private static final MSG_GETRECT:I = 0x142

.field private static final MSG_GETSIZE:I = 0x141

.field private static final MSG_GETVIEW:I = 0x137

.field private static final MSG_HIDE:I = 0x13e

.field protected static final MSG_LAST_ID:I = 0x4ba

.field private static final MSG_REMOVE_CHILD:I = 0x13a

.field private static final MSG_SHOW:I = 0x13d

.field private static final MSG_TOIMAGE:I = 0x140

.field private static final MSG_UPDATE_LAYOUT:I = 0x144

.field private static final TAG:Ljava/lang/String; = "TiViewProxy"

.field private static styleSheetUrlCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/appcelerator/titanium/util/TiUrl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field private isDecorView:Z

.field private layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected pendingAnimationLock:Ljava/lang/Object;

.field protected view:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->styleSheetUrlCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 93
    iput-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "backgroundRepeat"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method private handleFinishLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1083
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->iszIndexChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->forceLayoutNativeView(Z)V

    .line 1085
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->setzIndexChanged(Z)V

    .line 1089
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->forceLayoutNativeView(Z)V

    goto :goto_0
.end method

.method private handleUpdateLayout(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1093
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1094
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1096
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFinishLayout()V

    .line 1097
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 537
    const-string v0, "TiViewProxy"

    const-string v1, "Add called with a null child"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    .line 545
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 546
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 554
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public addClass([Ljava/lang/Object;)V
    .locals 9
    .parameter "classNames"

    .prologue
    .line 913
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getBaseUrlForStylesheet()Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, baseUrl:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v3, classes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 916
    .local v2, c:Ljava/lang/Object;
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 918
    .end local v2           #c:Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v3, v8}, Lorg/appcelerator/titanium/TiApplication;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 919
    .local v6, options:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->extend(Lorg/appcelerator/kroll/KrollDict;)V

    .line 920
    return-void
.end method

.method public animate(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 7
    .parameter "arg"
    .end parameter
    .parameter "callback"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 682
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 683
    :try_start_0
    instance-of v3, p1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 684
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0

    .line 685
    .local v2, options:Ljava/util/HashMap;
    new-instance v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 686
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Ljava/util/HashMap;)V

    .line 695
    .end local v2           #options:Ljava/util/HashMap;
    :goto_0
    if-eqz p2, :cond_0

    .line 696
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, p2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setCallback(Lorg/appcelerator/kroll/KrollFunction;)V

    .line 699
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 700
    monitor-exit v4

    .line 701
    return-void

    .line 687
    :cond_1
    instance-of v3, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v3, :cond_2

    .line 688
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/view/TiAnimation;

    move-object v1, v0

    .line 689
    .local v1, anim:Lorg/appcelerator/titanium/view/TiAnimation;
    new-instance v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 690
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyAnimation(Lorg/appcelerator/titanium/view/TiAnimation;)V

    goto :goto_0

    .line 700
    .end local v1           #anim:Lorg/appcelerator/titanium/view/TiAnimation;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 692
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled argument to animate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public blur()V
    .locals 2

    .prologue
    .line 733
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleBlur()V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public clearAnimation(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 196
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-ne v0, p1, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 200
    :cond_0
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 386
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 387
    return-void
.end method

.method public convertPointToView(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/kroll/KrollDict;
    .locals 14
    .parameter "point"
    .parameter "dest"

    .prologue
    .line 967
    if-nez p1, :cond_0

    .line 968
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "convertPointToView: point must not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 971
    :cond_0
    if-nez p2, :cond_1

    .line 972
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "convertPointToView: destinationView must not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 975
    :cond_1
    const-string v11, "x"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 976
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "convertPointToView: required property \"x\" not found in point"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 979
    :cond_2
    const-string v11, "y"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 980
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "convertPointToView: required property \"y\" not found in point"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 985
    :cond_3
    const-string v11, "x"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v9

    .line 986
    .local v9, x:I
    const-string v11, "y"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    .line 988
    .local v10, y:I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v7

    .line 989
    .local v7, view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual/range {p2 .. p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    .line 990
    .local v3, destView:Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v7, :cond_4

    .line 991
    const-string v11, "TiViewProxy"

    const-string v12, "convertPointToView: View has not been attached, cannot convert point"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v2, 0x0

    .line 1028
    :goto_0
    return-object v2

    .line 995
    :cond_4
    if-nez v3, :cond_5

    .line 996
    const-string v11, "TiViewProxy"

    const-string v12, "convertPointToView: DestinationView has not been attached, cannot convert point"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v2, 0x0

    goto :goto_0

    .line 1000
    :cond_5
    invoke-virtual {v7}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v4

    .line 1001
    .local v4, nativeView:Landroid/view/View;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 1002
    .local v1, destNativeView:Landroid/view/View;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_7

    .line 1003
    :cond_6
    const-string v11, "TiViewProxy"

    const-string v12, "convertPointToView: View has not been attached, cannot convert point"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v2, 0x0

    goto :goto_0

    .line 1007
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_9

    .line 1008
    :cond_8
    const-string v11, "TiViewProxy"

    const-string v12, "convertPointToView: DestinationView has not been attached, cannot convert point"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v2, 0x0

    goto :goto_0

    .line 1012
    :cond_9
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 1013
    .local v8, viewLocation:[I
    const/4 v11, 0x2

    new-array v0, v11, [I

    .line 1014
    .local v0, destLocation:[I
    invoke-virtual {v4, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1015
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1017
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1018
    const-string v11, "TiViewProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "nativeView location in window, x: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", y: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const-string v11, "TiViewProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "destNativeView location in window, x: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", y: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_a
    const/4 v11, 0x0

    aget v11, v8, v11

    add-int v5, v11, v9

    .line 1023
    .local v5, pointWindowX:I
    const/4 v11, 0x1

    aget v11, v8, v11

    add-int v6, v11, v10

    .line 1025
    .local v6, pointWindowY:I
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1026
    .local v2, destPoint:Lorg/appcelerator/kroll/KrollDict;
    const-string v11, "x"

    const/4 v12, 0x0

    aget v12, v0, v12

    sub-int v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string v11, "y"

    const/4 v12, 0x1

    aget v12, v0, v12

    sub-int v12, v6, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public abstract createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    .line 876
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 877
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    instance-of v0, p3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v0, :cond_1

    .line 878
    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    :cond_0
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setClickable(Z)V

    .line 883
    :cond_1
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 888
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 889
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v0, :cond_0

    .line 890
    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setClickable(Z)V

    .line 895
    :cond_0
    return-void
.end method

.method public finishLayout()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1044
    const-string v0, "TiViewProxy"

    const-string v1, "finishLayout() is deprecated."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isLayoutStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1050
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFinishLayout()V

    .line 1055
    :goto_1
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1053
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x143

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "eventName"
    .parameter "data"

    .prologue
    .line 818
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 3
    .parameter "eventName"
    .parameter "data"
    .parameter "bubbles"

    .prologue
    .line 796
    if-nez p2, :cond_0

    .line 797
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 801
    :cond_0
    instance-of v0, p2, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 802
    check-cast v0, Ljava/util/HashMap;

    const-string v1, "bubbles"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 750
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFocus()V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public forceCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->forceCreateView(Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method public forceCreateView(Z)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "enableModelListener"

    .prologue
    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 406
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView(Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUrlForStylesheet()Ljava/lang/String;
    .locals 6

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    .line 122
    .local v1, creationUrl:Lorg/appcelerator/titanium/util/TiUrl;
    sget-object v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;->styleSheetUrlCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    sget-object v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;->styleSheetUrlCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    :goto_0
    return-object v3

    .line 126
    :cond_0
    iget-object v0, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 127
    .local v0, baseUrl:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "app://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    :cond_1
    const-string v0, "app://app.js"

    .line 133
    :goto_1
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 134
    .local v2, idx:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 135
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".js"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_2
    sget-object v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;->styleSheetUrlCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 139
    goto :goto_0

    .line 130
    .end local v2           #idx:I
    :cond_3
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getCenter()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 373
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    .line 374
    .local v0, dict:Ljava/lang/Object;
    const-string v1, "center"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "center"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    :cond_0
    return-object v0
.end method

.method public getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public getHeight()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 357
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getKeepScreenOn()Z
    .locals 6

    .prologue
    .line 925
    const/4 v2, 0x0

    .line 926
    .local v2, keepScreenOn:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 927
    .local v4, v:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v4, :cond_0

    .line 928
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 929
    .local v3, nv:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 930
    invoke-virtual {v3}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 935
    .end local v3           #nv:Landroid/view/View;
    :cond_0
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 936
    .local v0, current:Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 937
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 938
    .local v1, currentValue:Z
    if-nez v2, :cond_1

    .line 939
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 955
    .end local v1           #currentValue:Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 941
    .restart local v1       #currentValue:Z
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v1, v5, :cond_2

    .line 942
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 944
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 948
    .end local v1           #currentValue:Z
    :cond_3
    if-nez v2, :cond_4

    .line 949
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 952
    :cond_4
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView(Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateView(Z)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "enableModelListener"

    .prologue
    .line 416
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 424
    :goto_0
    return-object v0

    .line 420
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView(Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    goto :goto_0
.end method

.method public getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x0

    .line 832
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public getParentForBubbling()Lorg/appcelerator/kroll/KrollProxy;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    return-object v0
.end method

.method public getPendingAnimation()Lorg/appcelerator/titanium/util/TiAnimationBuilder;
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRect()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x142

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getSize()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0
.end method

.method public handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 562
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 564
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 566
    instance-of v1, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    if-eqz v1, :cond_0

    .line 567
    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    .line 569
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 571
    .local v0, cv:Lorg/appcelerator/titanium/view/TiUIView;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 573
    .end local v0           #cv:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    return-void
.end method

.method protected handleAnimate()V
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 725
    .local v0, tiv:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->animate()V

    .line 728
    :cond_0
    return-void
.end method

.method protected handleBlur()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->blur()V

    .line 745
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "options"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object p1

    .line 113
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 116
    return-void
.end method

.method protected handleFocus()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->focus()V

    .line 762
    :cond_0
    return-void
.end method

.method protected handleGetView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView(Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetView(Z)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 4
    .parameter "enableModelListener"

    .prologue
    .line 439
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v1, :cond_2

    .line 440
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const-string v1, "TiViewProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 445
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 446
    iget-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    if-eqz v1, :cond_1

    .line 447
    if-eqz v0, :cond_3

    .line 448
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setViewProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 453
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;Z)V

    .line 454
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch()V

    .line 455
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPress()V

    .line 457
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v1

    .line 450
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_3
    const-string v1, "TiViewProxy"

    const-string v2, "Activity is null"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "options"

    .prologue
    const/4 v2, 0x0

    .line 668
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 669
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_0

    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 673
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->hide()V

    .line 675
    const-string v0, "visible"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    :cond_1
    return-void

    .line 673
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    .line 206
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 316
    :pswitch_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v8

    :goto_0
    return v8

    .line 208
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 209
    .local v6, result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 210
    const/4 v8, 0x1

    goto :goto_0

    .line 213
    .end local v6           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 214
    .restart local v6       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 215
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 216
    const/4 v8, 0x1

    goto :goto_0

    .line 219
    .end local v6           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 220
    .restart local v6       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 221
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 222
    const/4 v8, 0x1

    goto :goto_0

    .line 225
    .end local v6           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleBlur()V

    .line 226
    const/4 v8, 0x1

    goto :goto_0

    .line 229
    :pswitch_5
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFocus()V

    .line 230
    const/4 v8, 0x1

    goto :goto_0

    .line 233
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 234
    const/4 v8, 0x1

    goto :goto_0

    .line 237
    :pswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 238
    const/4 v8, 0x1

    goto :goto_0

    .line 241
    :pswitch_8
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAnimate()V

    .line 242
    const/4 v8, 0x1

    goto :goto_0

    .line 245
    :pswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 246
    .restart local v6       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleToImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 247
    const/4 v8, 0x1

    goto :goto_0

    .line 250
    .end local v6           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 251
    .restart local v6       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    const/4 v0, 0x0

    .line 252
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 253
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "x"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v8, "y"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v8, :cond_0

    .line 256
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v7

    .line 257
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 258
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x6

    invoke-direct {v5, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 259
    .local v5, nativeWidth:Lorg/appcelerator/titanium/TiDimension;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x7

    invoke-direct {v2, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 262
    .local v2, nativeHeight:Lorg/appcelerator/titanium/TiDimension;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, decorView:Landroid/view/View;
    const-string v8, "width"

    invoke-virtual {v5, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v8, "height"

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .end local v1           #decorView:Landroid/view/View;
    .end local v2           #nativeHeight:Lorg/appcelerator/titanium/TiDimension;
    .end local v5           #nativeWidth:Lorg/appcelerator/titanium/TiDimension;
    .end local v7           #v:Landroid/view/View;
    :cond_0
    const-string v8, "width"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 269
    const-string v8, "width"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v8, "height"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_1
    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 274
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 277
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    .end local v6           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 278
    .restart local v6       #result:Lorg/appcelerator/kroll/common/AsyncResult;
    const/4 v0, 0x0

    .line 279
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 280
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v8, :cond_2

    .line 281
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v7

    .line 282
    .restart local v7       #v:Landroid/view/View;
    if-eqz v7, :cond_2

    .line 283
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x6

    invoke-direct {v5, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 284
    .restart local v5       #nativeWidth:Lorg/appcelerator/titanium/TiDimension;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x7

    invoke-direct {v2, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 285
    .restart local v2       #nativeHeight:Lorg/appcelerator/titanium/TiDimension;
    new-instance v3, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x0

    invoke-direct {v3, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 286
    .local v3, nativeLeft:Lorg/appcelerator/titanium/TiDimension;
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x3

    invoke-direct {v4, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 289
    .local v4, nativeTop:Lorg/appcelerator/titanium/TiDimension;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 291
    .restart local v1       #decorView:Landroid/view/View;
    const-string v8, "width"

    invoke-virtual {v5, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v8, "height"

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v8, "x"

    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v8, "y"

    invoke-virtual {v4, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v1           #decorView:Landroid/view/View;
    .end local v2           #nativeHeight:Lorg/appcelerator/titanium/TiDimension;
    .end local v3           #nativeLeft:Lorg/appcelerator/titanium/TiDimension;
    .end local v4           #nativeTop:Lorg/appcelerator/titanium/TiDimension;
    .end local v5           #nativeWidth:Lorg/appcelerator/titanium/TiDimension;
    .end local v7           #v:Landroid/view/View;
    :cond_2
    const-string v8, "width"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 298
    const-string v8, "width"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v8, "height"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v8, "x"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v8, "y"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_3
    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 305
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 308
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    .end local v6           #result:Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_c
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFinishLayout()V

    .line 309
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 312
    :pswitch_d
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-direct {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleUpdateLayout(Ljava/util/HashMap;)V

    .line 313
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public handlePendingAnimation(Z)V
    .locals 4
    .parameter "forceQueue"

    .prologue
    const/16 v3, 0x13f

    .line 705
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 706
    if-nez p1, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 707
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 711
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 719
    :cond_1
    :goto_0
    return-void

    .line 713
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 716
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAnimate()V

    goto :goto_0
.end method

.method public handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 626
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->remove(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 631
    :cond_0
    if-eqz p1, :cond_1

    .line 632
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 635
    :cond_1
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 649
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->show()V

    .line 651
    const-string v0, "visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    :cond_0
    return-void
.end method

.method protected handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 16
    .parameter "options"

    .prologue
    .line 144
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProxyId()Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, viewId:Ljava/lang/String;
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 148
    .local v11, styleClasses:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 149
    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 151
    :cond_0
    const-string v13, "className"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 152
    const-string v13, "className"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, className:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v5, v1, v8

    .line 154
    .local v5, clazz:Ljava/lang/String;
    invoke-virtual {v11, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #className:Ljava/lang/String;
    .end local v5           #clazz:Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :cond_1
    const-string v13, "classNames"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 158
    const-string v13, "classNames"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 159
    .local v3, c:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 160
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 161
    .local v10, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_3

    .line 162
    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 163
    .local v5, clazz:Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 164
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 170
    .end local v3           #c:Ljava/lang/Object;
    .end local v5           #clazz:Ljava/lang/Object;
    .end local v7           #i:I
    .end local v10           #length:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getBaseUrlForStylesheet()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, baseUrl:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v13

    invoke-virtual {v13, v2, v11, v12}, Lorg/appcelerator/titanium/TiApplication;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 172
    .local v6, dict:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_4
    move-object/from16 v6, p1

    .line 184
    .end local v6           #dict:Lorg/appcelerator/kroll/KrollDict;
    :goto_2
    return-object v6

    .line 176
    .restart local v6       #dict:Lorg/appcelerator/kroll/KrollDict;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->extend(Lorg/appcelerator/kroll/KrollDict;)V

    .line 177
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 178
    const-string v13, "TiViewProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "trying to get stylesheet for base:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",classes:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",id:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",dict:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    goto :goto_2
.end method

.method protected handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 778
    .local v0, view:Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v0, :cond_0

    .line 779
    const/4 v1, 0x0

    .line 782
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->toImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    goto :goto_0
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 658
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 664
    :goto_0
    return-void

    .line 661
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13e

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public isLayoutStarted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1105
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public peekView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method public realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;Z)V

    .line 503
    return-void
.end method

.method public realizeViews(Lorg/appcelerator/titanium/view/TiUIView;Z)V
    .locals 6
    .parameter "view"
    .parameter "enableModelListener"

    .prologue
    .line 467
    if-eqz p2, :cond_2

    .line 469
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 482
    :goto_0
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 484
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 485
    .local v3, p:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 486
    .local v0, cv:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 488
    .end local v0           #cv:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #p:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :catch_0
    move-exception v1

    .line 489
    .local v1, e:Ljava/util/ConcurrentModificationException;
    const-string v4, "TiViewProxy"

    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v1           #e:Ljava/util/ConcurrentModificationException;
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 494
    :try_start_1
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v4, :cond_1

    .line 495
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 497
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    return-void

    .line 476
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 507
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 509
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 510
    .local v1, p:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_0

    .line 513
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 514
    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 516
    :cond_1
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 517
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    .line 518
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 583
    if-nez p1, :cond_1

    .line 584
    const-string v0, "TiViewProxy"

    const-string v1, "Add called with null child"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 589
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 597
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 600
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public removeAllChildren()V
    .locals 4

    .prologue
    .line 613
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v1, childViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 618
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 619
    .local v0, child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 622
    .end local v0           #child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #childViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 854
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->setActivity(Landroid/app/Activity;)V

    .line 855
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 856
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 857
    .local v0, child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 860
    .end local v0           #child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    .line 899
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 900
    .local v1, v:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 902
    .local v0, nv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 906
    .end local v0           #nv:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setHeight(Ljava/lang/Object;)V
    .locals 1
    .parameter "height"

    .prologue
    .line 367
    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .parameter "keepScreenOn"

    .prologue
    .line 961
    const-string v0, "keepScreenOn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 962
    return-void
.end method

.method public setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 837
    if-nez p1, :cond_0

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 843
    :goto_0
    return-void

    .line 842
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setView(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 400
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 401
    return-void
.end method

.method public setWidth(Ljava/lang/Object;)V
    .locals 1
    .parameter "width"

    .prologue
    .line 351
    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 640
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public startLayout()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1035
    const-string v0, "TiViewProxy"

    const-string v1, "startLayout() is deprecated."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1038
    return-void
.end method

.method public toImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 767
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleToImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 771
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    goto :goto_0
.end method

.method public updateLayout(Ljava/lang/Object;)V
    .locals 4
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1062
    const-string v1, "TiViewProxy"

    const-string v2, "updateLayout() is deprecated."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    instance-of v1, p1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1067
    const-string v1, "TiViewProxy"

    const-string v2, "Argument for updateLayout must be a dictionary"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1070
    check-cast v0, Ljava/util/HashMap;

    .line 1072
    .local v0, paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1073
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleUpdateLayout(Ljava/util/HashMap;)V

    .line 1078
    :goto_1
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1076
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x144

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
