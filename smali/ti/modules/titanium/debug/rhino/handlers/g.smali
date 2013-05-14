.class public final Lti/modules/titanium/debug/rhino/handlers/g;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "frames"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 13

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v2}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/debug/rhino/i;->c()Lorg/mozilla/javascript/tools/debugger/Dim;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->currentContextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v5}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->getFrame(I)Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope()Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope()Ljava/lang/Object;

    move-result-object v0

    const-string v3, ""

    instance-of v8, v0, Lorg/mozilla/javascript/Function;

    if-eqz v8, :cond_0

    check-cast v0, Lorg/mozilla/javascript/Function;

    const-string v8, "name"

    invoke-interface {v0, v8, v0}, Lorg/mozilla/javascript/Function;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v3, "name"

    invoke-interface {v0, v3, v0}, Lorg/mozilla/javascript/Function;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-static {v6}, Lti/modules/titanium/debug/rhino/b;->a(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lti/modules/titanium/debug/rhino/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getLineNumber()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "false"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/String;

    aput-object v7, v12, v2

    const/4 v7, 0x1

    aput-object v0, v12, v7

    const/4 v0, 0x2

    aput-object v3, v12, v0

    const/4 v0, 0x3

    aput-object v8, v12, v0

    const/4 v0, 0x4

    aput-object v6, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v10, v12, v0

    const/4 v0, 0x7

    aput-object v11, v12, v0

    new-instance v0, Lti/modules/titanium/debug/rhino/c;

    invoke-direct {v0, v12}, Lti/modules/titanium/debug/rhino/c;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_0
    instance-of v8, v0, Lorg/mozilla/javascript/NativeCall;

    if-eqz v8, :cond_3

    check-cast v0, Lorg/mozilla/javascript/NativeCall;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeCall;->getNativeFunction()Lorg/mozilla/javascript/NativeFunction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, "FramesHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ContextData found for thread ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p2, v4}, Lti/modules/titanium/debug/rhino/b;->a(Lti/modules/titanium/debug/rhino/b;Ljava/util/List;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v3

    goto/16 :goto_1
.end method
