.class Lti/modules/titanium/ui/widget/TiUIText$1;
.super Landroid/text/method/NumberKeyListener;
.source "TiUIText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIText;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIText;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIText$1;->this$0:Lti/modules/titanium/ui/widget/TiUIText;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 449
    const/16 v0, 0x2b

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2et 0x0t
        0x2dt 0x0t
        0x2bt 0x0t
        0x5ft 0x0t
        0x2at 0x0t
        0x2dt 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x7ct 0x0t
        0x5ct 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x2ct 0x0t
        0x3ft 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x27t 0x0t
        0x22t 0x0t
        0x7et 0x0t
    .end array-data
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x2

    return v0
.end method
