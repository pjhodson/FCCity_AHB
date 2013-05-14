.class Lti/modules/titanium/app/AppModule$1;
.super Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;
.source "AppModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/app/AppModule;->onHasListenersChanged(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/app/AppModule;


# direct methods
.method constructor <init>(Lti/modules/titanium/app/AppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lti/modules/titanium/app/AppModule$1;->this$0:Lti/modules/titanium/app/AppModule;

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 194
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 195
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lti/modules/titanium/app/AppModule$1;->this$0:Lti/modules/titanium/app/AppModule;

    const-string v2, "accessibilitychanged"

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/app/AppModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 197
    return-void
.end method
