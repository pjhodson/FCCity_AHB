.class public abstract Lorg/appcelerator/titanium/TiLaunchActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiLaunchActivity.java"


# static fields
.field private static final FINISH_DELAY:I = 0x1f4

.field private static final KINDLE_FIRE_RESTART_FLAGS:I = 0x10600000

.field private static final KINDLE_MODEL:Ljava/lang/String; = "kindle"

.field private static final MSG_FINISH:I = 0x64

.field private static final RESTART_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "TiLaunchActivity"

.field private static final VALID_LAUNCH_FLAGS:I = 0x300000

.field private static final creationCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected finishing2373:Z

.field private invalidLaunchAlert:Landroid/app/AlertDialog;

.field private invalidLaunchDetected:Z

.field private restartAlarmManager:Landroid/app/AlarmManager;

.field private restartDelay:I

.field private restartPendingIntent:Landroid/app/PendingIntent;

.field protected url:Lorg/appcelerator/titanium/util/TiUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiLaunchActivity;->creationCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    .line 57
    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    .line 59
    iput-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 60
    iput-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 61
    iput v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    .line 68
    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/TiLaunchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    return-void
.end method

.method private doFinishForRestart()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 283
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    .line 285
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 289
    :cond_1
    return-void
.end method


# virtual methods
.method protected alertMissingLauncher()V
    .locals 11

    .prologue
    const/16 v10, 0x1f4

    const/4 v9, 0x0

    .line 212
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v5

    .line 213
    .local v5, systemProperties:Lorg/appcelerator/titanium/TiProperties;
    const-string v7, "ti.android.bug2373.message"

    const-string v8, "An application restart is required"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, message:Ljava/lang/String;
    const-string v7, "ti.android.bug2373.restartDelay"

    invoke-virtual {v5, v7, v10}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 215
    .local v3, restartDelay:I
    const-string v7, "ti.android.bug2373.finishDelay"

    invoke-virtual {v5, v7, v10}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 217
    .local v1, finishDelay:I
    const-string v7, "ti.android.bug2373.skipAlert"

    invoke-virtual {v5, v7, v9}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 218
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 219
    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 221
    :cond_0
    invoke-virtual {p0, v3, v1}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(II)V

    .line 239
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v4, Lorg/appcelerator/titanium/TiLaunchActivity$1;

    invoke-direct {v4, p0, v3, v1}, Lorg/appcelerator/titanium/TiLaunchActivity$1;-><init>(Lorg/appcelerator/titanium/TiLaunchActivity;II)V

    .line 230
    .local v4, restartListener:Landroid/content/DialogInterface$OnClickListener;
    const-string v7, "ti.android.bug2373.title"

    const-string v8, "Restart Required"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, title:Ljava/lang/String;
    const-string v7, "ti.android.bug2373.buttonText"

    const-string v8, "Continue"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, buttonText:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    .line 237
    iget-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected checkInvalidLaunch(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "intent"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 172
    iput-boolean v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    .line 178
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-nez v3, :cond_0

    .line 186
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v6, 0x30

    and-int/2addr v3, v6

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    .line 191
    :cond_0
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-eqz v3, :cond_3

    .line 192
    const-string v3, "TiLaunchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android issue 2373 detected (missing intent CATEGORY_LAUNCHER or FLAG_ACTIVITY_RESET_TASK_IF_NEEDED), restarting app. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-direct {v3, p0, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Landroid/view/View;

    .line 194
    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Landroid/view/View;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiLaunchActivity;->setContentView(Landroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v2

    .line 196
    .local v2, systemProperties:Lorg/appcelerator/titanium/TiProperties;
    const-string v3, "ti.android.bug2373.backgroundColor"

    const-string v5, "black"

    invoke-virtual {v2, v3, v5}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, backgroundColor:I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 200
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnCreate(Landroid/os/Bundle;)V

    .line 206
    .end local v1           #backgroundColor:I
    .end local v2           #systemProperties:Lorg/appcelerator/titanium/TiProperties;
    :goto_2
    return v4

    :cond_1
    move v3, v5

    .line 176
    goto :goto_0

    :cond_2
    move v3, v5

    .line 187
    goto :goto_1

    :cond_3
    move v4, v5

    .line 206
    goto :goto_2
.end method

.method protected checkInvalidLaunch(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 159
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v2

    .line 161
    .local v2, systemProperties:Lorg/appcelerator/titanium/TiProperties;
    const-string v4, "ti.android.bug2373.disableDetection"

    invoke-virtual {v2, v4, v3}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ti.android.bug2373.finishfalseroot"

    invoke-virtual {v2, v4, v3}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 163
    .local v0, detectionDisabled:Z
    :goto_0
    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->checkInvalidLaunch(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    .line 167
    .end local v0           #detectionDisabled:Z
    .end local v2           #systemProperties:Lorg/appcelerator/titanium/TiProperties;
    :cond_1
    return v3

    .restart local v2       #systemProperties:Lorg/appcelerator/titanium/TiProperties;
    :cond_2
    move v0, v3

    .line 161
    goto :goto_0
.end method

.method protected contextCreated()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public isJSActivity()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected loadActivityScript()V
    .locals 5

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, fullUrl:Ljava/lang/String;
    const-string v1, "TiLaunchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval JS Activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "app://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "app:/"

    const-string v2, "Resources"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    :goto_0
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-static {v0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v1, v2, v0, v3}, Lorg/appcelerator/kroll/KrollRuntime;->runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const-string v1, "TiLaunchActivity"

    const-string v2, "Signal JS loaded"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 100
    :cond_1
    :try_start_1
    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "file:///android_asset/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 107
    .end local v0           #fullUrl:Ljava/lang/String;
    :catchall_0
    move-exception v1

    const-string v2, "TiLaunchActivity"

    const-string v3, "Signal JS loaded"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->willFinishFalseRootActivity(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 120
    .local v1, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->checkInvalidLaunch(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUrl;->normalizeWindowUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    .line 138
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, tempCurrentActivity:Landroid/app/Activity;
    invoke-virtual {v1, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 142
    invoke-virtual {v1, p0, v0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 144
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->contextCreated()V

    .line 145
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 397
    iget-boolean v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnDestroy()V

    .line 426
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 404
    .local v0, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-eqz v1, :cond_3

    .line 405
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnDestroy()V

    .line 406
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_2

    .line 407
    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(I)V

    .line 409
    :cond_2
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->beforeForcedRestart()V

    .line 410
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 411
    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 412
    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 413
    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    .line 414
    iput-boolean v8, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    goto :goto_0

    .line 418
    :cond_3
    if-eqz v0, :cond_4

    .line 419
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createAppEndEvent()Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 423
    :cond_4
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->resetSid()V

    .line 425
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroy()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnPause()V

    .line 340
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    goto :goto_0

    .line 333
    :cond_1
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-eqz v0, :cond_2

    .line 334
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    .line 335
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnPause()V

    goto :goto_0

    .line 339
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    .line 299
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v3, :cond_1

    .line 300
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnRestart()V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onRestart()V

    .line 305
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 307
    .local v2, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v1

    .line 313
    .local v1, systemProperties:Lorg/appcelerator/titanium/TiProperties;
    const-string v3, "ti.android.root.reappears.restart"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 314
    .local v0, restart:Z
    if-eqz v0, :cond_0

    .line 315
    const-string v3, "TiLaunchActivity"

    const-string v4, "Tasks may have been destroyed by Android OS for inactivity. Restarting."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnResume()V

    .line 392
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    :cond_1
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    goto :goto_0

    .line 385
    :cond_2
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->alertMissingLauncher()V

    .line 387
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnResume()V

    goto :goto_0

    .line 391
    :cond_3
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStart()V

    .line 371
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v0, :cond_2

    .line 367
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnStart()V

    goto :goto_0

    .line 370
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStart()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStop()V

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v0, :cond_2

    .line 351
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnStop()V

    goto :goto_0

    .line 355
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStop()V

    goto :goto_0
.end method

.method protected restartActivity(I)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(II)V

    .line 244
    return-void
.end method

.method protected restartActivity(II)V
    .locals 5
    .parameter "delay"
    .parameter "finishDelay"

    .prologue
    .line 248
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v1, relaunch:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 253
    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 255
    iput p1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    .line 258
    :cond_0
    if-lez p2, :cond_1

    .line 259
    new-instance v0, Lorg/appcelerator/titanium/TiLaunchActivity$2;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/TiLaunchActivity$2;-><init>(Lorg/appcelerator/titanium/TiLaunchActivity;)V

    .line 272
    .local v0, handler:Landroid/os/Handler;
    const/16 v2, 0x64

    int-to-long v3, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    goto :goto_0
.end method

.method protected scriptLoaded()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected willFinishFalseRootActivity(Landroid/os/Bundle;)Z
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 452
    iput-boolean v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    .line 454
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isTaskRoot()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 458
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    .line 502
    :goto_0
    return v4

    .line 461
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 462
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 464
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 475
    :cond_2
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_0

    .line 478
    :cond_3
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 479
    .local v3, tiApp:Lorg/appcelerator/titanium/TiApplication;
    const/4 v2, 0x0

    .line 481
    .local v2, systemProperties:Lorg/appcelerator/titanium/TiProperties;
    if-eqz v3, :cond_4

    .line 482
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v2

    .line 485
    :cond_4
    if-eqz v2, :cond_7

    const-string v4, "ti.android.bug2373.finishfalseroot"

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 487
    iput-boolean v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    .line 494
    :cond_5
    :goto_1
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v4, :cond_6

    .line 498
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnCreate(Landroid/os/Bundle;)V

    .line 499
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 502
    :cond_6
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_0

    .line 488
    :cond_7
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kindle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lorg/appcelerator/titanium/TiLaunchActivity;->creationCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1060

    if-ne v4, v5, :cond_5

    .line 491
    iput-boolean v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_1
.end method

.method protected windowCreated()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->windowCreated()V

    .line 152
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->loadActivityScript()V

    .line 153
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->scriptLoaded()V

    .line 154
    return-void
.end method
