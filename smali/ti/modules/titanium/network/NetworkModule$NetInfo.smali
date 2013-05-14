.class Lti/modules/titanium/network/NetworkModule$NetInfo;
.super Ljava/lang/Object;
.source "NetworkModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/NetworkModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetInfo"
.end annotation


# instance fields
.field public failover:Z

.field public reason:Ljava/lang/String;

.field public state:Lti/modules/titanium/network/NetworkModule$State;

.field final synthetic this$0:Lti/modules/titanium/network/NetworkModule;

.field public type:I

.field public typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/NetworkModule;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lti/modules/titanium/network/NetworkModule$NetInfo;->this$0:Lti/modules/titanium/network/NetworkModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lti/modules/titanium/network/NetworkModule$State;->UNKNOWN:Lti/modules/titanium/network/NetworkModule$State;

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule$NetInfo;->state:Lti/modules/titanium/network/NetworkModule$State;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/network/NetworkModule$NetInfo;->failover:Z

    .line 67
    const-string v0, "NONE"

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule$NetInfo;->typeName:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/network/NetworkModule$NetInfo;->type:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule$NetInfo;->reason:Ljava/lang/String;

    .line 70
    return-void
.end method
