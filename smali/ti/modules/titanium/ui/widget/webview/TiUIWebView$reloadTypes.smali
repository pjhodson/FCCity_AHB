.class final enum Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;
.super Ljava/lang/Enum;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "reloadTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

.field public static final enum DATA:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

.field public static final enum DEFAULT:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

.field public static final enum HTML:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

.field public static final enum URL:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->DEFAULT:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->DATA:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v4}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->HTML:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    const-string v1, "URL"

    invoke-direct {v0, v1, v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->URL:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    sget-object v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->DEFAULT:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    aput-object v1, v0, v2

    sget-object v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->DATA:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    aput-object v1, v0, v3

    sget-object v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->HTML:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    aput-object v1, v0, v4

    sget-object v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->URL:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    aput-object v1, v0, v5

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->$VALUES:[Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    return-object v0
.end method

.method public static values()[Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->$VALUES:[Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    invoke-virtual {v0}, [Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    return-object v0
.end method
