.class Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TiNetworkListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiNetworkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/TiNetworkListener;


# direct methods
.method private constructor <init>(Lti/modules/titanium/network/TiNetworkListener;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;->this$0:Lti/modules/titanium/network/TiNetworkListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lti/modules/titanium/network/TiNetworkListener;Lti/modules/titanium/network/TiNetworkListener$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;-><init>(Lti/modules/titanium/network/TiNetworkListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 86
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v8, p0, Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;->this$0:Lti/modules/titanium/network/TiNetworkListener;

    #getter for: Lti/modules/titanium/network/TiNetworkListener;->messageHandler:Landroid/os/Handler;
    invoke-static {v8}, Lti/modules/titanium/network/TiNetworkListener;->access$000(Lti/modules/titanium/network/TiNetworkListener;)Landroid/os/Handler;

    move-result-object v8

    if-nez v8, :cond_1

    .line 53
    const-string v8, "TiNetListener"

    const-string v9, "Network receiver is active but no handler has been set."

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_1
    const-string v8, "noConnectivity"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 59
    .local v5, noConnectivity:Z
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 61
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    const-string v8, "otherNetwork"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 64
    .local v6, otherNetworkInfo:Landroid/net/NetworkInfo;
    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, reason:Ljava/lang/String;
    const-string v8, "isFailover"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 68
    .local v2, failover:Z
    const-string v10, "TiNetListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive(): mNetworkInfo="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " mOtherNetworkInfo = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v6, :cond_2

    const-string v8, "[none]"

    :goto_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "DEBUG_MODE"

    invoke-static {v10, v8, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v8, p0, Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;->this$0:Lti/modules/titanium/network/TiNetworkListener;

    #getter for: Lti/modules/titanium/network/TiNetworkListener;->messageHandler:Landroid/os/Handler;
    invoke-static {v8}, Lti/modules/titanium/network/TiNetworkListener;->access$000(Lti/modules/titanium/network/TiNetworkListener;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 74
    .local v3, message:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, b:Landroid/os/Bundle;
    const-string v10, "connected"

    if-nez v5, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v8, "networkType"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    if-eqz v5, :cond_4

    .line 78
    const-string v8, "networkTypeName"

    const-string v9, "NONE"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_3
    const-string v8, "failover"

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string v8, "reason"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 68
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #message:Landroid/os/Message;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " noConn="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .restart local v1       #b:Landroid/os/Bundle;
    .restart local v3       #message:Landroid/os/Message;
    :cond_3
    move v8, v9

    .line 75
    goto :goto_2

    .line 80
    :cond_4
    const-string v8, "networkTypeName"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
