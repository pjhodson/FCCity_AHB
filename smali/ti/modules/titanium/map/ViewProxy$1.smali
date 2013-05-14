.class Lti/modules/titanium/map/ViewProxy$1;
.super Ljava/lang/Object;
.source "ViewProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/map/ViewProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/map/ViewProxy;

.field final synthetic val$rootActivity:Lorg/appcelerator/titanium/TiRootActivity;


# direct methods
.method constructor <init>(Lti/modules/titanium/map/ViewProxy;Lorg/appcelerator/titanium/TiRootActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lti/modules/titanium/map/ViewProxy$1;->this$0:Lti/modules/titanium/map/ViewProxy;

    iput-object p2, p0, Lti/modules/titanium/map/ViewProxy$1;->val$rootActivity:Lorg/appcelerator/titanium/TiRootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy$1;->val$rootActivity:Lorg/appcelerator/titanium/TiRootActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lti/modules/titanium/map/ViewProxy$1;->this$0:Lti/modules/titanium/map/ViewProxy;

    #calls: Lti/modules/titanium/map/ViewProxy;->destroyMapActivity()V
    invoke-static {v0}, Lti/modules/titanium/map/ViewProxy;->access$000(Lti/modules/titanium/map/ViewProxy;)V

    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Lti/modules/titanium/map/ViewProxy;->access$102(Landroid/app/LocalActivityManager;)Landroid/app/LocalActivityManager;

    .line 144
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 135
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 130
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 125
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 120
    return-void
.end method
