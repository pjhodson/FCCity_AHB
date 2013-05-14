.class public Lorg/appcelerator/titanium/util/TiRHelper;
.super Ljava/lang/Object;
.source "TiRHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiRHelper"

.field private static clsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static clsPrefixAndroid:Ljava/lang/String;

.field private static clsPrefixApplication:Ljava/lang/String;

.field private static valCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiRHelper;->clsCache:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiRHelper;->valCache:Ljava/util/Map;

    .line 27
    const-string v0, "android.R$"

    sput-object v0, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixAndroid:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixApplication:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/appcelerator/titanium/util/TiRHelper;->valCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    sget-object v0, Lorg/appcelerator/titanium/util/TiRHelper;->clsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    return-void
.end method

.method public static getAndroidResource(Ljava/lang/String;)I
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixAndroid:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getApplicationResource(Ljava/lang/String;)I
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixApplication:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "classname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v2, Lorg/appcelerator/titanium/util/TiRHelper;->clsCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 44
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 48
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 46
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v0       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    sget-object v2, Lorg/appcelerator/titanium/util/TiRHelper;->clsCache:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 48
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method protected static getClassAndFieldNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    const/16 v7, 0x2e

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 52
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 53
    .local v2, lastDot:I
    if-gez v2, :cond_0

    const-string v0, ""

    .line 54
    .local v0, className:Ljava/lang/String;
    :goto_0
    if-gez v2, :cond_2

    move-object v1, p0

    .line 55
    .local v1, fieldName:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v4

    return-object v3

    .line 53
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #fieldName:Ljava/lang/String;
    :cond_0
    if-gez v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x24

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_2

    .line 54
    .restart local v0       #className:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getResource(Ljava/lang/String;)I
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method protected static getResource(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "prefix"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    sget-object v1, Lorg/appcelerator/titanium/util/TiRHelper;->valCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 61
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 63
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiRHelper;->getClassAndFieldNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/appcelerator/titanium/util/TiRHelper;->lookupResource(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getResource(Ljava/lang/String;Z)I
    .locals 5
    .parameter "path"
    .parameter "includeSystemResources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v4, Lorg/appcelerator/titanium/util/TiRHelper;->valCache:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 100
    .local v2, i:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 111
    :goto_0
    return v3

    .line 102
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiRHelper;->getClassAndFieldNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, classAndFieldNames:[Ljava/lang/String;
    :try_start_0
    sget-object v4, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixApplication:Ljava/lang/String;

    invoke-static {v4, p0, v0}, Lorg/appcelerator/titanium/util/TiRHelper;->lookupResource(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 106
    .local v3, resid:I
    goto :goto_0

    .line 107
    .end local v3           #resid:I
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    if-nez p1, :cond_1

    .line 109
    throw v1

    .line 111
    :cond_1
    sget-object v4, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixAndroid:Ljava/lang/String;

    invoke-static {v4, p0, v0}, Lorg/appcelerator/titanium/util/TiRHelper;->lookupResource(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method protected static lookupResource(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "prefix"
    .parameter "path"
    .parameter "classAndFieldNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 68
    sget-object v2, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixApplication:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".R$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixApplication:Ljava/lang/String;

    .line 70
    :cond_0
    if-nez p0, :cond_1

    .line 71
    sget-object p0, Lorg/appcelerator/titanium/util/TiRHelper;->clsPrefixApplication:Ljava/lang/String;

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 77
    .local v1, i:Ljava/lang/Integer;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    sget-object v2, Lorg/appcelerator/titanium/util/TiRHelper;->valCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TiRHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error looking up resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v0, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 80
    sget-object v2, Lorg/appcelerator/titanium/util/TiRHelper;->valCache:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;

    invoke-direct {v2, p1}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
