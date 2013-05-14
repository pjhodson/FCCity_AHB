.class public final Lnet/foodcare/healthyhometown/FoodcareApplication;
.super Lorg/appcelerator/titanium/TiApplication;
.source "FoodcareApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FoodcareApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lorg/appcelerator/titanium/TiApplication;->onCreate()V

    .line 33
    new-instance v0, Lnet/foodcare/healthyhometown/FoodcareAppInfo;

    invoke-direct {v0, p0}, Lnet/foodcare/healthyhometown/FoodcareAppInfo;-><init>(Lorg/appcelerator/titanium/TiApplication;)V

    iput-object v0, p0, Lnet/foodcare/healthyhometown/FoodcareApplication;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    .line 34
    invoke-virtual {p0}, Lnet/foodcare/healthyhometown/FoodcareApplication;->postAppInfo()V

    .line 37
    new-instance v0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-direct {v0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;-><init>()V

    .line 40
    invoke-static {p0, v0}, Lorg/appcelerator/kroll/KrollRuntime;->init(Landroid/content/Context;Lorg/appcelerator/kroll/KrollRuntime;)V

    .line 42
    new-instance v0, Lnet/foodcare/healthyhometown/ApplicationStylesheet;

    invoke-direct {v0}, Lnet/foodcare/healthyhometown/ApplicationStylesheet;-><init>()V

    iput-object v0, p0, Lnet/foodcare/healthyhometown/FoodcareApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    .line 43
    invoke-virtual {p0}, Lnet/foodcare/healthyhometown/FoodcareApplication;->postOnCreate()V

    .line 49
    return-void
.end method

.method public verifyCustomModules(Lorg/appcelerator/titanium/TiRootActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    new-instance v0, Lorg/appcelerator/titanium/TiVerify;

    invoke-direct {v0, p1, p0}, Lorg/appcelerator/titanium/TiVerify;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/TiApplication;)V

    .line 55
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiVerify;->verify()V

    .line 56
    return-void
.end method
