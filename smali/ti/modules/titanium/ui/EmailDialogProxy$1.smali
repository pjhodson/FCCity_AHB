.class Lti/modules/titanium/ui/EmailDialogProxy$1;
.super Ljava/lang/Object;
.source "EmailDialogProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/EmailDialogProxy;->doOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/EmailDialogProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/EmailDialogProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lti/modules/titanium/ui/EmailDialogProxy$1;->this$0:Lti/modules/titanium/ui/EmailDialogProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"
    .parameter "e"

    .prologue
    .line 178
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 179
    .local v0, result:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "result"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 181
    iget-object v1, p0, Lti/modules/titanium/ui/EmailDialogProxy$1;->this$0:Lti/modules/titanium/ui/EmailDialogProxy;

    const-string v2, "complete"

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/ui/EmailDialogProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 170
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 171
    .local v0, result:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "result"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 173
    iget-object v1, p0, Lti/modules/titanium/ui/EmailDialogProxy$1;->this$0:Lti/modules/titanium/ui/EmailDialogProxy;

    const-string v2, "complete"

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/ui/EmailDialogProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
