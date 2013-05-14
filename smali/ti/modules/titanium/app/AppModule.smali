.class public Lti/modules/titanium/app/AppModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AppModule.java"


# static fields
.field public static final EVENT_ACCESSIBILITY_ANNOUNCEMENT:Ljava/lang/String; = "accessibilityannouncement"

.field public static final EVENT_ACCESSIBILITY_CHANGED:Ljava/lang/String; = "accessibilitychanged"

.field private static final TAG:Ljava/lang/String; = "AppModule"


# instance fields
.field private accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

.field private appInfo:Lorg/appcelerator/titanium/ITiAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "App"

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollModule;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    .line 43
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->addAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 44
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 49
    invoke-direct {p0}, Lti/modules/titanium/app/AppModule;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public appURLToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/app/AppModule;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fireSystemEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "eventName"
    .end parameter
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 154
    const-string v2, "accessibilityannouncement"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const-string v2, "AppModule"

    const-string v3, "Accessibility announcement ignored. Accessibility services are not enabled on this device."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 161
    :cond_0
    if-nez p2, :cond_1

    .line 162
    const-string v2, "AppModule"

    const-string v3, "Accessibility announcement ignored. No announcement text was provided."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 167
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 168
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 169
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 170
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 174
    .end local v0           #accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    const-string v2, "AppModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown system event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAccessibilityEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 135
    .local v1, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 137
    .local v0, enabled:Z
    if-nez v0, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 144
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 148
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 144
    goto :goto_0
.end method

.method public getAnalytics()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->isAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getCopyright()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeployType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->removeAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 54
    return-void
.end method

.method public onHasListenersChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "event"
    .parameter "hasListeners"

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollModule;->onHasListenersChanged(Ljava/lang/String;Z)V

    .line 185
    if-nez p2, :cond_1

    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lti/modules/titanium/app/AppModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/app/AppModule$1;-><init>(Lti/modules/titanium/app/AppModule;)V

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    .line 200
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z

    goto :goto_0
.end method
