.class public Lorg/appcelerator/titanium/TiContext;
.super Ljava/lang/Object;
.source "TiContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    }
.end annotation


# static fields
.field public static final LIFECYCLE_ON_DESTROY:I = 0x4

.field public static final LIFECYCLE_ON_PAUSE:I = 0x2

.field public static final LIFECYCLE_ON_RESUME:I = 0x1

.field public static final LIFECYCLE_ON_START:I = 0x0

.field public static final LIFECYCLE_ON_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TiContext"


# instance fields
.field private baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

.field private currentUrl:Ljava/lang/String;

.field protected krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

.field private launchContext:Z

.field private lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadId:J

.field private tiApp:Lorg/appcelerator/titanium/TiApplication;

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "baseUrl"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/appcelerator/titanium/TiContext;->mainThreadId:J

    .line 60
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    .line 65
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 66
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>(Z)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 67
    if-nez p2, :cond_2

    .line 68
    const-string p2, "app://"

    .line 72
    :cond_0
    :goto_1
    new-instance v0, Lorg/appcelerator/titanium/util/TiUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 74
    const-string v0, "TiContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseURL for context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 63
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    goto :goto_0

    .line 69
    :cond_2
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public static createTiContext(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;
    .locals 1
    .parameter "activity"
    .parameter "baseUrl"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/appcelerator/titanium/TiContext;->createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    return-object v0
.end method

.method public static createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;
    .locals 1
    .parameter "activity"
    .parameter "baseUrl"
    .parameter "loadFile"

    .prologue
    .line 243
    new-instance v0, Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Lorg/appcelerator/titanium/TiContext;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 192
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/ref/WeakReference;)Z

    .line 193
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 226
    return-void
.end method

.method public evalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/appcelerator/titanium/TiContext;->evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;
    .locals 8
    .parameter "filename"
    .parameter "messenger"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, result:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 145
    .local v4, setUrlBackTo:Ljava/lang/String;
    iget-object v5, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    iget-object v4, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    .line 150
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, code:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v5

    invoke-virtual {v5, v0, p1}, Lorg/appcelerator/kroll/KrollRuntime;->evalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 155
    if-eqz p2, :cond_1

    .line 157
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 158
    .local v2, msg:Landroid/os/Message;
    iput p3, v2, Landroid/os/Message;->what:I

    .line 159
    invoke-virtual {p2, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 160
    const-string v5, "TiContext"

    const-string v6, "Notifying caller that evalFile has completed"

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    iput-object v4, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    .line 166
    :cond_2
    return-object v3

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "TiContext"

    const-string v6, "Failed to notify caller that eval completed"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public evalJS(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "src"

    .prologue
    .line 187
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollRuntime;->evalString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fireLifecycleEvent(Landroid/app/Activity;I)V
    .locals 7
    .parameter "activity"
    .parameter "which"

    .prologue
    .line 202
    iget-object v3, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .local v1, listener:Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    :try_start_1
    invoke-virtual {p0, p1, v1, p2}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "TiContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching lifecycle event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 210
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    return-void
.end method

.method protected fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;I)V
    .locals 0
    .parameter "activity"
    .parameter "listener"
    .parameter "which"

    .prologue
    .line 215
    packed-switch p3, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 216
    :pswitch_0
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 218
    :pswitch_2
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 219
    :pswitch_3
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 220
    :pswitch_4
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 86
    .local v0, activity:Landroid/app/Activity;
    goto :goto_0
.end method

.method public getAndroidContext()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    .line 283
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    goto :goto_0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    return-object v0
.end method

.method public getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    return-object v0
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    return-object v0
.end method

.method public getTiFileHelper()Lorg/appcelerator/titanium/util/TiFileHelper;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isLaunchContext()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiContext;->launchContext:Z

    return v0
.end method

.method public isUIThread()Z
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/appcelerator/titanium/TiContext;->mainThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiWeakList;->clear()V

    .line 266
    :cond_0
    return-void
.end method

.method public removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 197
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public resolveUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "scheme"
    .parameter "path"

    .prologue
    .line 116
    const-string v0, ""

    return-object v0
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "scheme"
    .parameter "path"
    .parameter "relativeTo"

    .prologue
    .line 121
    const-string v0, ""

    return-object v0
.end method

.method public runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 230
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 92
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "baseUrl"

    .prologue
    .line 288
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iput-object p1, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    const-string v1, "app://"

    iput-object v1, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 292
    :cond_0
    return-void
.end method

.method public setKrollContext(Lorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 0
    .parameter "krollContext"

    .prologue
    .line 253
    iput-object p1, p0, Lorg/appcelerator/titanium/TiContext;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 254
    return-void
.end method

.method public setLaunchContext(Z)V
    .locals 0
    .parameter "launchContext"

    .prologue
    .line 275
    iput-boolean p1, p0, Lorg/appcelerator/titanium/TiContext;->launchContext:Z

    .line 276
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 234
    return-void
.end method
