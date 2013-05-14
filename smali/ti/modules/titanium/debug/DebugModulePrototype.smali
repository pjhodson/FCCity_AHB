.class public Lti/modules/titanium/debug/DebugModulePrototype;
.super Lorg/appcelerator/kroll/KrollModulePrototype;


# static fields
.field private static final a:Z

.field private static b:Lti/modules/titanium/debug/DebugModulePrototype;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/debug/DebugModulePrototype;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModulePrototype;-><init>()V

    sget-object v0, Lti/modules/titanium/debug/DebugModulePrototype;->b:Lti/modules/titanium/debug/DebugModulePrototype;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lti/modules/titanium/debug/DebugModulePrototype;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lti/modules/titanium/debug/DebugModulePrototype;->b:Lti/modules/titanium/debug/DebugModulePrototype;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/debug/DebugModulePrototype;->isModule:Z

    return-void
.end method

.method private static a(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    sget-boolean v0, Lti/modules/titanium/debug/DebugModulePrototype;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "DebugModulePrototype"

    const-string v1, "isDebugging()"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    check-cast p0, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/rhino/Proxy;->getProxy()Lorg/appcelerator/kroll/KrollProxySupport;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/debug/DebugModule;

    invoke-virtual {v0}, Lti/modules/titanium/debug/DebugModule;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected createProxy(Ljava/lang/String;[Ljava/lang/Object;)Lorg/appcelerator/kroll/KrollProxySupport;
    .locals 2

    const-class v0, Lti/modules/titanium/debug/DebugModule;

    invoke-virtual {p0}, Lti/modules/titanium/debug/DebugModulePrototype;->getRhinoObject()Lorg/appcelerator/kroll/runtime/rhino/RhinoObject;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lorg/appcelerator/kroll/KrollProxy;->createProxy(Ljava/lang/Class;Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    return-object v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "DebugModule"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super/range {p0 .. p5}, Lorg/appcelerator/kroll/KrollModulePrototype;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :goto_1
    if-eqz v0, :cond_0

    instance-of v1, v0, Lti/modules/titanium/debug/DebugModulePrototype;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p3, p5}, Lti/modules/titanium/debug/DebugModulePrototype;->jsConstructor(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lti/modules/titanium/debug/DebugModulePrototype;->a(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lti/modules/titanium/debug/DebugModulePrototype;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "DebugModulePrototype"

    const-string v2, "stopDebugger()"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    check-cast v0, Lorg/appcelerator/kroll/runtime/rhino/Proxy;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/runtime/rhino/Proxy;->getProxy()Lorg/appcelerator/kroll/KrollProxySupport;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/debug/DebugModule;

    invoke-virtual {v0}, Lti/modules/titanium/debug/DebugModule;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_2

    :cond_2
    move-object v0, p4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_2

    const-string v1, "debugging"

    move-object v2, v1

    move v1, v3

    :goto_0
    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x4

    invoke-static {v0, v3}, Lti/modules/titanium/debug/DebugModulePrototype;->instanceIdInfo(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move-object v2, v1

    move v1, v0

    goto :goto_0
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_0

    const-string v1, "constructor"

    const/4 v2, 0x1

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_0
    const/16 v3, 0x69

    if-ne v2, v3, :cond_3

    const-string v1, "isDebugging"

    const/4 v2, 0x2

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const-string v1, "stopDebugger"

    const/4 v2, 0x3

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    move v1, v0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "DebugModule"

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "debugging"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getInstanceIdValue(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lti/modules/titanium/debug/DebugModulePrototype;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lti/modules/titanium/debug/DebugModulePrototype;

    if-eqz v1, :cond_2

    check-cast v0, Lti/modules/titanium/debug/DebugModulePrototype;

    :goto_1
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-boolean v1, Lti/modules/titanium/debug/DebugModulePrototype;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "DebugModulePrototype"

    const-string v2, "get debugging"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lti/modules/titanium/debug/DebugModulePrototype;->getProxy()Lorg/appcelerator/kroll/KrollProxySupport;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/debug/DebugModule;

    invoke-virtual {v0}, Lti/modules/titanium/debug/DebugModule;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, p0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getMaxInstanceId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getMaxPrototypeId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getParent()Ljava/lang/Class;
    .locals 1

    const-class v0, Lorg/appcelerator/kroll/KrollModulePrototype;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    sget-object v0, Lti/modules/titanium/debug/DebugModulePrototype;->b:Lti/modules/titanium/debug/DebugModulePrototype;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lorg/appcelerator/kroll/KrollModulePrototype;->getProxyPrototype()Lorg/appcelerator/kroll/KrollModulePrototype;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lti/modules/titanium/debug/DebugModulePrototype;->b:Lti/modules/titanium/debug/DebugModulePrototype;

    goto :goto_0
.end method

.method protected initPrototypeId(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModulePrototype;->initPrototypeId(I)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "constructor"

    :goto_1
    const-string v1, "DebugModule"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lti/modules/titanium/debug/DebugModulePrototype;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "isDebugging"

    goto :goto_1

    :pswitch_2
    const-string v0, "stopDebugger"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setInstanceIdValue(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lti/modules/titanium/debug/DebugModulePrototype;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lti/modules/titanium/debug/DebugModulePrototype;

    if-eqz v1, :cond_1

    check-cast v0, Lti/modules/titanium/debug/DebugModulePrototype;

    :goto_1
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "debugging"

    invoke-virtual {v0, v1, p3}, Lti/modules/titanium/debug/DebugModulePrototype;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "debugging"

    invoke-virtual {v0, v1, p3}, Lti/modules/titanium/debug/DebugModulePrototype;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v0, p0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
