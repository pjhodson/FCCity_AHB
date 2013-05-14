.class public Lti/modules/titanium/network/TiNetworkListener;
.super Ljava/lang/Object;
.source "TiNetworkListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/TiNetworkListener$1;,
        Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_FAILOVER:Ljava/lang/String; = "failover"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NETWORK_TYPE_NAME:Ljava/lang/String; = "networkTypeName"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String; = "TiNetListener"


# instance fields
.field private connectivityIntentFilter:Landroid/content/IntentFilter;

.field private context:Landroid/content/Context;

.field private listening:Z

.field private messageHandler:Landroid/os/Handler;

.field private receiver:Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "messageHandler"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;-><init>(Lti/modules/titanium/network/TiNetworkListener;Lti/modules/titanium/network/TiNetworkListener$1;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->receiver:Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;

    .line 94
    iput-object p1, p0, Lti/modules/titanium/network/TiNetworkListener;->messageHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->connectivityIntentFilter:Landroid/content/IntentFilter;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/network/TiNetworkListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    iget-boolean v0, p0, Lti/modules/titanium/network/TiNetworkListener;->listening:Z

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 101
    iput-object p1, p0, Lti/modules/titanium/network/TiNetworkListener;->context:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->receiver:Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lti/modules/titanium/network/TiNetworkListener;->connectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/network/TiNetworkListener;->listening:Z

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context was not cleaned up from last release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    const-string v0, "TiNetListener"

    const-string v1, "Connectivity listener is already attached"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lti/modules/titanium/network/TiNetworkListener;->listening:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lti/modules/titanium/network/TiNetworkListener;->receiver:Lti/modules/titanium/network/TiNetworkListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/TiNetworkListener;->context:Landroid/content/Context;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/network/TiNetworkListener;->listening:Z

    .line 118
    :cond_0
    return-void
.end method
