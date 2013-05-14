.class public Lorg/appcelerator/titanium/TiExceptionHandler;
.super Ljava/lang/Object;
.source "TiExceptionHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/kroll/KrollExceptionHandler;


# static fields
.field private static final MSG_OPEN_ERROR_DIALOG:I = 0x271b

.field private static final TAG:Ljava/lang/String; = "TiExceptionHandler"

.field private static dialogShowing:Z

.field private static errorMessages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiExceptionHandler;->errorMessages:Ljava/util/LinkedList;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lorg/appcelerator/titanium/TiExceptionHandler;->dialogShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lorg/appcelerator/titanium/TiExceptionHandler;->mainHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/appcelerator/titanium/TiExceptionHandler;->errorMessages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lorg/appcelerator/titanium/TiExceptionHandler;->dialogShowing:Z

    return p0
.end method

.method protected static createDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V
    .locals 17
    .parameter "error"

    .prologue
    .line 104
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v13

    invoke-virtual {v13}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v1

    .line 105
    .local v1, application:Lorg/appcelerator/kroll/KrollApplication;
    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-interface {v1}, Lorg/appcelerator/kroll/KrollApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    .line 110
    .local v4, context:Landroid/content/Context;
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    .local v6, layout:Landroid/widget/FrameLayout;
    const/16 v13, 0x80

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 113
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .local v12, vlayout:Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    const/16 v13, 0xa

    const/16 v14, 0xa

    const/16 v15, 0xa

    const/16 v16, 0xa

    invoke-virtual/range {v12 .. v16}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 116
    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v9, sourceInfoView:Landroid/widget/TextView;
    const/4 v13, -0x1

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 120
    const/high16 v13, -0x100

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->line:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->lineOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->sourceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v8, messageView:Landroid/widget/TextView;
    const/4 v13, -0x1

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 126
    const/high16 v13, -0x100

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->message:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v11, sourceView:Landroid/widget/TextView;
    const/4 v13, -0x1

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 132
    const/high16 v13, -0x100

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->lineSource:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v5, infoLabel:Landroid/widget/TextView;
    const-string v13, "Location: "

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    const/high16 v13, 0x3fc0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 141
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v7, messageLabel:Landroid/widget/TextView;
    const-string v13, "Message: "

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v13, -0x1

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    const/high16 v13, 0x3fc0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 146
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v10, sourceLabel:Landroid/widget/TextView;
    const-string v13, "Source: "

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/4 v13, -0x1

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const/high16 v13, 0x3fc0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 151
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v3, Lorg/appcelerator/titanium/TiExceptionHandler$2;

    invoke-direct {v3}, Lorg/appcelerator/titanium/TiExceptionHandler$2;-><init>()V

    .line 184
    .local v3, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-direct {v13, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->title:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const-string v14, "Kill"

    invoke-virtual {v13, v14, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const-string v14, "Continue"

    invoke-virtual {v13, v14, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 194
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected static reload(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceName"

    .prologue
    .line 207
    return-void
.end method


# virtual methods
.method public handleException(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiExceptionHandler;->openErrorDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    .line 233
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 211
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 222
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 213
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 214
    .local v0, asyncResult:Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    .line 215
    .local v1, errorMessage:Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiExceptionHandler;->handleOpenErrorDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    .line 216
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 217
    const/4 v2, 0x1

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x271b
        :pswitch_0
    .end packed-switch
.end method

.method protected handleOpenErrorDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V
    .locals 11
    .parameter "error"

    .prologue
    .line 68
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v8

    .line 69
    .local v8, application:Lorg/appcelerator/kroll/KrollApplication;
    if-nez v8, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-interface {v8}, Lorg/appcelerator/kroll/KrollApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    .line 74
    .local v7, activity:Landroid/app/Activity;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_2
    const-string v0, "TiExceptionHandler"

    const-string v1, "Activity is null or already finishing, skipping dialog."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->title:Ljava/lang/String;

    iget-object v2, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->message:Ljava/lang/String;

    iget-object v3, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->sourceName:Ljava/lang/String;

    iget v4, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->line:I

    iget-object v5, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->lineSource:Ljava/lang/String;

    iget v6, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->lineOffset:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/TiExceptionHandler;->printError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 81
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v10

    .line 82
    .local v10, tiApplication:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-boolean v0, Lorg/appcelerator/titanium/TiExceptionHandler;->dialogShowing:Z

    if-nez v0, :cond_4

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lorg/appcelerator/titanium/TiExceptionHandler;->dialogShowing:Z

    .line 88
    move-object v9, p1

    .line 89
    .local v9, fError:Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;
    new-instance v0, Lorg/appcelerator/titanium/TiExceptionHandler$1;

    invoke-direct {v0, p0, v9}, Lorg/appcelerator/titanium/TiExceptionHandler$1;-><init>(Lorg/appcelerator/titanium/TiExceptionHandler;Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    invoke-interface {v8, v0}, Lorg/appcelerator/kroll/KrollApplication;->waitForCurrentActivity(Lorg/appcelerator/kroll/common/CurrentActivityListener;)V

    goto :goto_0

    .line 98
    .end local v9           #fError:Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;
    :cond_4
    sget-object v0, Lorg/appcelerator/titanium/TiExceptionHandler;->errorMessages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public openErrorDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 59
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiExceptionHandler;->handleOpenErrorDialog(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/TiExceptionHandler;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public printError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 46
    const-string v0, "TiExceptionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- Titanium Javascript "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "TiExceptionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- In "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "TiExceptionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "TiExceptionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
