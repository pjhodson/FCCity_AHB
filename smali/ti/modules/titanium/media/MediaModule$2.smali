.class Lti/modules/titanium/media/MediaModule$2;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/MediaModule;->previewImage(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;

.field final synthetic val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

.field final synthetic val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    iput-object p2, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    iput-object p3, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 5
    .parameter "activity"
    .parameter "requestCode"
    .parameter "e"

    .prologue
    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gallery problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, msg:Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v4, -0x1

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v3, v4, v0}, Lti/modules/titanium/media/MediaModule;->access$500(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 817
    :cond_0
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 802
    const-string v1, "TiMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnResult called: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_0

    .line 804
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 805
    .local v0, response:Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 806
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/MediaModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 808
    .end local v0           #response:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method
