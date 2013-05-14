.class public Lorg/appcelerator/kroll/util/KrollAssetHelper;
.super Ljava/lang/Object;
.source "KrollAssetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiAssetHelper"

.field private static assetCrypt:Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

.field private static cacheDir:Ljava/lang/String;

.field private static manager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field

.field private static packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 125
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    if-eqz p0, :cond_0

    const-string v1, "Resources/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "Resources/"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, resourcePath:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->getInstance()Lorg/appcelerator/kroll/common/TiFastDev;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/kroll/common/TiFastDev;->fileExists(Ljava/lang/String;)Z

    move-result v1

    .line 132
    .end local v0           #resourcePath:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->cacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->manager:Ljava/lang/ref/WeakReference;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->packageName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->cacheDir:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static readAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"

    .prologue
    const/4 v9, 0x0

    .line 48
    const-string v10, "Resources/"

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, resourcePath:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->isFastDevEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 51
    if-eqz p0, :cond_2

    const-string v10, "Resources/"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 52
    const-string v10, "TiAssetHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fetching \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" with Fastdev..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lorg/appcelerator/kroll/common/TiFastDev;->getInstance()Lorg/appcelerator/kroll/common/TiFastDev;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/appcelerator/kroll/common/TiFastDev;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 54
    .local v8, stream:Ljava/io/InputStream;
    invoke-static {v8}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, asset:Ljava/lang/String;
    const-string v10, "NOT_FOUND"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 94
    .end local v0           #asset:Ljava/lang/String;
    .end local v8           #stream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 58
    .restart local v0       #asset:Ljava/lang/String;
    .restart local v8       #stream:Ljava/io/InputStream;
    :cond_1
    const-string v10, "TiAssetHelper"

    const-string v11, "File not found with Fastdev."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0           #asset:Ljava/lang/String;
    .end local v8           #stream:Ljava/io/InputStream;
    :cond_2
    sget-object v10, Lorg/appcelerator/kroll/util/KrollAssetHelper;->assetCrypt:Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

    if-eqz v10, :cond_3

    .line 64
    sget-object v10, Lorg/appcelerator/kroll/util/KrollAssetHelper;->assetCrypt:Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

    invoke-interface {v10, v7}, Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0       #asset:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    .end local v0           #asset:Ljava/lang/String;
    :cond_3
    :try_start_0
    sget-object v10, Lorg/appcelerator/kroll/util/KrollAssetHelper;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 72
    .local v1, assetManager:Landroid/content/res/AssetManager;
    if-nez v1, :cond_4

    .line 73
    const-string v10, "TiAssetHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AssetManager is null, can\'t read asset: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 74
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 78
    .local v5, in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v2, v10, [B

    .line 80
    .local v2, buffer:[B
    const/4 v3, 0x0

    .line 82
    .local v3, count:I
    :cond_5
    :goto_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_6

    .line 83
    if-eqz v6, :cond_5

    .line 84
    const/4 v10, 0x0

    invoke-virtual {v6, v2, v10, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    .end local v1           #assetManager:Landroid/content/res/AssetManager;
    .end local v2           #buffer:[B
    .end local v3           #count:I
    .end local v5           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 91
    .local v4, e:Ljava/io/IOException;
    const-string v10, "TiAssetHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while reading asset \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 94
    goto :goto_0

    .line 88
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #assetManager:Landroid/content/res/AssetManager;
    .restart local v2       #buffer:[B
    .restart local v3       #count:I
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    :cond_6
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    .line 100
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 103
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 105
    .local v1, count:I
    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 106
    if-eqz v4, :cond_0

    .line 107
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 113
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 114
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v5, "TiAssetHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v5, 0x0

    :goto_2
    return-object v5

    .line 111
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_2

    .line 116
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 117
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TiAssetHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while reading file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static setAssetCrypt(Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;)V
    .locals 0
    .parameter "assetCrypt"

    .prologue
    .line 36
    sput-object p0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->assetCrypt:Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

    .line 37
    return-void
.end method
