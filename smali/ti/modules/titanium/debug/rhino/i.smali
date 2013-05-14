.class public final Lti/modules/titanium/debug/rhino/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/appcelerator/kroll/KrollEvaluator;
.implements Lorg/mozilla/javascript/tools/debugger/GuiCallback;
.implements Lorg/mozilla/javascript/tools/debugger/ScopeProvider;


# static fields
.field private static a:Lti/modules/titanium/debug/rhino/i;


# instance fields
.field private b:Lti/modules/titanium/debug/rhino/a;

.field private c:Lorg/mozilla/javascript/tools/debugger/Dim;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lti/modules/titanium/debug/rhino/j;

.field private g:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\r\n|\n|\r)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->attachTo(Lorg/mozilla/javascript/ContextFactory;)V

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setGuiCallback(Lorg/mozilla/javascript/tools/debugger/GuiCallback;)V

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setScopeProvider(Lorg/mozilla/javascript/tools/debugger/ScopeProvider;)V

    const-string v0, "RhinoDebugger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    iget-object v1, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setLogger(Ljava/util/logging/Logger;)V

    new-instance v0, Lti/modules/titanium/debug/rhino/a;

    iget-object v1, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-direct {v0, v1}, Lti/modules/titanium/debug/rhino/a;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;)V

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/i;->b:Lti/modules/titanium/debug/rhino/a;

    return-void
.end method

.method public static a()Lti/modules/titanium/debug/rhino/i;
    .locals 1

    sget-object v0, Lti/modules/titanium/debug/rhino/i;->a:Lti/modules/titanium/debug/rhino/i;

    if-nez v0, :cond_0

    new-instance v0, Lti/modules/titanium/debug/rhino/i;

    invoke-direct {v0}, Lti/modules/titanium/debug/rhino/i;-><init>()V

    sput-object v0, Lti/modules/titanium/debug/rhino/i;->a:Lti/modules/titanium/debug/rhino/i;

    :cond_0
    sget-object v0, Lti/modules/titanium/debug/rhino/i;->a:Lti/modules/titanium/debug/rhino/i;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "file:///android_asset/Resources/"

    const-string v1, "app:/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app://"

    const-string v2, "app:/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "app://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "app://"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/Resources/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "app:/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "app:/"

    goto :goto_0

    :cond_1
    const-string v0, "Resources/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Resources/"

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->compileScript(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->sourceInfo(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RhinoDebugger"

    const-string v2, "Failed to read source file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lti/modules/titanium/debug/rhino/j;)V
    .locals 0

    iput-object p1, p0, Lti/modules/titanium/debug/rhino/i;->f:Lti/modules/titanium/debug/rhino/j;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;
    .locals 2

    invoke-static {p1}, Lti/modules/titanium/debug/rhino/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->sourceInfo(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lti/modules/titanium/debug/rhino/i;->a(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final b()Lti/modules/titanium/debug/rhino/a;
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->b:Lti/modules/titanium/debug/rhino/a;

    return-object v0
.end method

.method public final c()Lorg/mozilla/javascript/tools/debugger/Dim;
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lti/modules/titanium/debug/rhino/i;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/KrollRuntime;->setEvaluator(Lorg/appcelerator/kroll/KrollEvaluator;)V

    invoke-virtual {p0}, Lti/modules/titanium/debug/rhino/i;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/debug/rhino/i;->f:Lti/modules/titanium/debug/rhino/j;

    const-string v2, "threads"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "created"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "runtime"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lti/modules/titanium/debug/rhino/j;->a(Lti/modules/titanium/debug/rhino/b;)V

    return-void
.end method

.method public final dispatchNextGuiEvent()V
    .locals 1

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->dispatchMessage()Z

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/i;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final enterInterrupt(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10

    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->sourceInfo()Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getLineNumber()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lti/modules/titanium/debug/rhino/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lti/modules/titanium/debug/rhino/i;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-static {}, Lorg/appcelerator/kroll/KrollLogging;->getDefault()Lorg/appcelerator/kroll/KrollLogging;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollLogging;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->f:Lti/modules/titanium/debug/rhino/j;

    const-string v4, "suspended"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v3, "exception"

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/debug/rhino/j;->a(Lti/modules/titanium/debug/rhino/b;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->f:Lti/modules/titanium/debug/rhino/j;

    const-string v4, "suspended"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v3, "breakpoint"

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/debug/rhino/j;->a(Lti/modules/titanium/debug/rhino/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->f:Lti/modules/titanium/debug/rhino/j;

    const-string v4, "suspended"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    iget-object v3, p0, Lti/modules/titanium/debug/rhino/i;->e:Ljava/lang/String;

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/debug/rhino/j;->a(Lti/modules/titanium/debug/rhino/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/i;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->f:Lti/modules/titanium/debug/rhino/j;

    const-string v4, "suspended"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v3, "requested"

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/debug/rhino/j;->a(Lti/modules/titanium/debug/rhino/b;)V

    goto :goto_0
.end method

.method public final evaluateString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    iput-object p1, p0, Lti/modules/titanium/debug/rhino/i;->g:Lorg/mozilla/javascript/Scriptable;

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p3}, Lti/modules/titanium/debug/rhino/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->evalScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;
    .locals 2

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->c:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->currentContextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getDebuggerContextData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    :cond_0
    return-object v0
.end method

.method public final getScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/i;->g:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public final isGuiEventThread()Z
    .locals 1

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    return v0
.end method

.method public final updateSourceText(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .locals 0

    return-void
.end method
