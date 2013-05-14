.class public final Lti/modules/titanium/debug/rhino/handlers/a;
.super Lti/modules/titanium/debug/rhino/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "breakpoint"

    invoke-direct {p0, v0}, Lti/modules/titanium/debug/rhino/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lti/modules/titanium/debug/b;Lti/modules/titanium/debug/rhino/b;)Lti/modules/titanium/debug/rhino/b;
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lti/modules/titanium/debug/rhino/i;->a()Lti/modules/titanium/debug/rhino/i;

    move-result-object v3

    invoke-virtual {p2, v2}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5}, Lti/modules/titanium/debug/rhino/i;->b(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v7

    const-string v0, "remove"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v6, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoint(IZ)Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "removed"

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v8

    invoke-virtual {v8}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {p2, v9}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v9

    invoke-virtual {v9}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {p2, v10}, Lti/modules/titanium/debug/rhino/b;->a(I)Lti/modules/titanium/debug/rhino/c;

    move-result-object v10

    invoke-virtual {v10}, Lti/modules/titanium/debug/rhino/c;->a()Ljava/lang/String;

    move-result-object v10

    const-string v11, "create"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v7, v6, v0}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoint(IZ)Z

    :cond_1
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v3, Lorg/mozilla/javascript/tools/debugger/Dim$Condition;

    const-string v0, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/mozilla/javascript/tools/debugger/Dim$Condition$Type;->OnTrue:Lorg/mozilla/javascript/tools/debugger/Dim$Condition$Type;

    :goto_3
    invoke-direct {v3, v9, v0}, Lorg/mozilla/javascript/tools/debugger/Dim$Condition;-><init>(Ljava/lang/String;Lorg/mozilla/javascript/tools/debugger/Dim$Condition$Type;)V

    if-lez v8, :cond_2

    iput v8, v3, Lorg/mozilla/javascript/tools/debugger/Dim$Condition;->hitCount:I

    :cond_2
    invoke-virtual {v7, v6, v3}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->setCondition(ILorg/mozilla/javascript/tools/debugger/Dim$Condition;)V

    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    const-string v0, "create"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "created"

    :goto_4
    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lti/modules/titanium/debug/rhino/b;->a([Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    const-string v0, "change"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lti/modules/titanium/debug/rhino/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lti/modules/titanium/debug/rhino/i;->a(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/mozilla/javascript/tools/debugger/Dim$Condition$Type;->OnValueChange:Lorg/mozilla/javascript/tools/debugger/Dim$Condition$Type;

    goto :goto_3

    :cond_7
    const-string v0, "changed"

    goto :goto_4
.end method
