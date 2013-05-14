.class Lti/modules/titanium/media/MediaModule$CallbackWrapper;
.super Ljava/lang/Object;
.source "MediaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/MediaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field public callback:Lorg/appcelerator/kroll/KrollFunction;

.field public callbackActivity:Lorg/appcelerator/titanium/TiBaseActivity;

.field public callbackArgs:Lorg/appcelerator/kroll/KrollDict;

.field public krollObject:Lorg/appcelerator/kroll/KrollObject;

.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/TiBaseActivity;Lorg/appcelerator/kroll/KrollFunction;Lorg/appcelerator/kroll/KrollObject;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter
    .parameter "callbackActivity"
    .parameter "callback"
    .parameter "krollObject"
    .parameter "callbackArgs"

    .prologue
    .line 303
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->callbackActivity:Lorg/appcelerator/titanium/TiBaseActivity;

    .line 305
    iput-object p3, p0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->callback:Lorg/appcelerator/kroll/KrollFunction;

    .line 306
    iput-object p4, p0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    .line 307
    iput-object p5, p0, Lti/modules/titanium/media/MediaModule$CallbackWrapper;->callbackArgs:Lorg/appcelerator/kroll/KrollDict;

    .line 308
    return-void
.end method
