.class Lti/modules/titanium/ui/android/AndroidModule$1;
.super Ljava/lang/Object;
.source "AndroidModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/android/AndroidModule;->hideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/android/AndroidModule;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/android/AndroidModule;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lti/modules/titanium/ui/android/AndroidModule$1;->this$0:Lti/modules/titanium/ui/android/AndroidModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/android/AndroidModule$1;->this$0:Lti/modules/titanium/ui/android/AndroidModule;

    #getter for: Lti/modules/titanium/ui/android/AndroidModule;->activity:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lti/modules/titanium/ui/android/AndroidModule;->access$000(Lti/modules/titanium/ui/android/AndroidModule;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lti/modules/titanium/ui/android/AndroidModule$1;->this$0:Lti/modules/titanium/ui/android/AndroidModule;

    invoke-virtual {v1}, Lti/modules/titanium/ui/android/AndroidModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    goto :goto_0

    .line 125
    :cond_1
    const-string v1, "UIAndroidModule"

    const-string v2, "Unable to hide soft keyboard. Activity is null"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
