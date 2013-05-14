.class public Lorg/appcelerator/kroll/KrollModule;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "KrollModule.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# static fields
.field protected static customModuleInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/kroll/KrollModuleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected tiContext:Lorg/appcelerator/titanium/TiContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollModule;->customModuleInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 49
    iput-object p0, p0, Lorg/appcelerator/kroll/KrollModule;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 61
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/appcelerator/titanium/TiApplication;->registerModuleInstance(Ljava/lang/String;Lorg/appcelerator/kroll/KrollModule;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollModule;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 68
    return-void
.end method

.method public static addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V
    .locals 1
    .parameter "customModuleInfo"

    .prologue
    .line 34
    sget-object v0, Lorg/appcelerator/kroll/KrollModule;->customModuleInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public static getCustomModuleInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/kroll/KrollModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lorg/appcelerator/kroll/KrollModule;->customModuleInfoList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected initActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 73
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 74
    .local v0, moduleActivity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 77
    move-object v0, p1

    .line 80
    :cond_0
    invoke-super {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    .line 81
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v1, :cond_1

    .line 82
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #moduleActivity:Landroid/app/Activity;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 84
    :cond_1
    return-void
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 136
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 148
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 108
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 100
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 92
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 116
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 124
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "properties"

    .prologue
    .line 156
    return-void
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, changes:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 171
    .local v0, change:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lorg/appcelerator/kroll/KrollModule;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 173
    .end local v0           #change:Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 167
    return-void
.end method
