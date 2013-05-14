.class public Lti/modules/titanium/ui/android/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# static fields
.field public static final LINKIFY_ALL:I = 0xf

.field public static final LINKIFY_EMAIL_ADDRESSES:I = 0x2

.field public static final LINKIFY_MAP_ADDRESSES:I = 0x8

.field public static final LINKIFY_PHONE_NUMBERS:I = 0x4

.field public static final LINKIFY_WEB_URLS:I = 0x1

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field public static final PIXEL_FORMAT_A_8:I = 0x8

.field public static final PIXEL_FORMAT_LA_88:I = 0xa

.field public static final PIXEL_FORMAT_L_8:I = 0x9

.field public static final PIXEL_FORMAT_OPAQUE:I = -0x1

.field public static final PIXEL_FORMAT_RGBA_4444:I = 0x7

.field public static final PIXEL_FORMAT_RGBA_5551:I = 0x6

.field public static final PIXEL_FORMAT_RGBA_8888:I = 0x1

.field public static final PIXEL_FORMAT_RGBX_8888:I = 0x2

.field public static final PIXEL_FORMAT_RGB_332:I = 0xb

.field public static final PIXEL_FORMAT_RGB_565:I = 0x4

.field public static final PIXEL_FORMAT_RGB_888:I = 0x3

.field public static final PIXEL_FORMAT_TRANSLUCENT:I = -0x3

.field public static final PIXEL_FORMAT_TRANSPARENT:I = -0x2

.field public static final PIXEL_FORMAT_UNKNOWN:I = 0x0

.field public static final PROGRESS_INDICATOR_DETERMINANT:I = 0x1

.field public static final PROGRESS_INDICATOR_DIALOG:I = 0x1

.field public static final PROGRESS_INDICATOR_INDETERMINANT:I = 0x0

.field public static final PROGRESS_INDICATOR_STATUS_BAR:I = 0x0

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SOFT_KEYBOARD_DEFAULT_ON_FOCUS:I = 0x0

.field public static final SOFT_KEYBOARD_HIDE_ON_FOCUS:I = 0x1

.field public static final SOFT_KEYBOARD_SHOW_ON_FOCUS:I = 0x2

.field public static final SWITCH_STYLE_CHECKBOX:I = 0x0

.field public static final SWITCH_STYLE_TOGGLEBUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UIAndroidModule"

.field public static final WEBVIEW_PLUGINS_OFF:I = 0x0

.field public static final WEBVIEW_PLUGINS_ON:I = 0x1

.field public static final WEBVIEW_PLUGINS_ON_DEMAND:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 92
    invoke-direct {p0}, Lti/modules/titanium/ui/android/AndroidModule;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/android/AndroidModule;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModule;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public hideSoftKeyboard()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/AndroidModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/android/AndroidModule$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/android/AndroidModule$1;-><init>(Lti/modules/titanium/ui/android/AndroidModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public openPreferences(Ljava/lang/String;)V
    .locals 4
    .parameter "prefsName"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 99
    iget-object v1, p0, Lti/modules/titanium/ui/android/AndroidModule;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lti/modules/titanium/ui/android/AndroidModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lti/modules/titanium/ui/android/TiPreferencesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, i:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 103
    const-string v1, "prefsName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/AndroidModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v1, "UIAndroidModule"

    const-string v2, "Unable to open preferences. Activity is null"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
