.class public Lorg/appcelerator/titanium/util/TiUrl;
.super Ljava/lang/Object;
.source "TiUrl.java"


# static fields
.field public static final CURRENT_PATH:Ljava/lang/String; = "."

.field public static final CURRENT_PATH_WITH_SEPARATOR:Ljava/lang/String; = "./"

.field public static final PARENT_PATH:Ljava/lang/String; = ".."

.field public static final PARENT_PATH_WITH_SEPARATOR:Ljava/lang/String; = "../"

.field public static final PATH_SEPARATOR:Ljava/lang/String; = "/"

.field public static final SCHEME_SUFFIX:Ljava/lang/String; = "://"

.field protected static final TAG:Ljava/lang/String; = "TiUrl"

.field private static proxyUrlCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/titanium/util/TiUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseUrl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiUrl;->proxyUrlCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 41
    const-string v0, "app://"

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"
    .parameter "url"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    const-string p1, "app://"

    .end local p1
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 47
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static absoluteUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "defaultScheme"
    .parameter "url"
    .parameter "baseUrl"

    .prologue
    const/4 v6, 0x1

    .line 266
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 267
    :cond_1
    if-nez p0, :cond_2

    const-string v5, ""

    .line 313
    :goto_0
    return-object v5

    .line 267
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 269
    :cond_3
    const-string v0, ""

    .line 270
    .local v0, combined:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 271
    :cond_4
    move-object v0, p1

    .line 297
    :goto_1
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 298
    .local v3, uri:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e

    .line 299
    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    .line 306
    :goto_2
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    .line 307
    if-eqz p0, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 272
    .end local v3           #uri:Ljava/net/URI;
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 273
    :cond_6
    move-object v0, p2

    goto :goto_1

    .line 275
    :cond_7
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v3       #uri:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 279
    move-object v0, p1

    goto :goto_1

    .line 280
    :cond_8
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "file://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 282
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_9

    .line 283
    const-string v0, "/"

    goto :goto_1

    .line 284
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_a

    .line 285
    move-object v0, p1

    goto :goto_1

    .line 286
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_b

    .line 287
    move-object v0, p2

    goto :goto_1

    .line 289
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 291
    :cond_c
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 294
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 301
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, scheme:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    .line 304
    new-instance v4, Ljava/net/URI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .end local v3           #uri:Ljava/net/URI;
    .local v4, uri:Ljava/net/URI;
    move-object v3, v4

    .end local v4           #uri:Ljava/net/URI;
    .restart local v3       #uri:Ljava/net/URI;
    goto/16 :goto_2

    .line 307
    .end local v2           #scheme:Ljava/lang/String;
    :cond_f
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 309
    :cond_10
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 311
    .end local v0           #combined:Ljava/lang/String;
    .end local v3           #uri:Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v5, "TiUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    .line 313
    goto/16 :goto_0
.end method

.method public static createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;
    .locals 6
    .parameter "url"

    .prologue
    .line 108
    sget-object v4, Lorg/appcelerator/titanium/util/TiUrl;->proxyUrlCache:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    sget-object v4, Lorg/appcelerator/titanium/util/TiUrl;->proxyUrlCache:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/util/TiUrl;

    .line 125
    :goto_0
    return-object v4

    .line 112
    :cond_0
    if-nez p0, :cond_1

    .line 113
    new-instance v4, Lorg/appcelerator/titanium/util/TiUrl;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 117
    .local v1, lastSlash:I
    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, baseUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 119
    const-string v0, "app://"

    .line 122
    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, path:Ljava/lang/String;
    new-instance v3, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v3, v0, v2}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v3, result:Lorg/appcelerator/titanium/util/TiUrl;
    sget-object v4, Lorg/appcelerator/titanium/util/TiUrl;->proxyUrlCache:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 125
    goto :goto_0
.end method

.method public static getCleanUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "argString"

    .prologue
    const/4 v6, 0x0

    .line 320
    if-nez p0, :cond_0

    .line 346
    :goto_0
    return-object v6

    .line 324
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 326
    .local v0, base:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 327
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&="

    invoke-static {v7, v8}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 328
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/:@"

    invoke-static {v7, v8}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, encodedAuthority:Ljava/lang/String;
    const/16 v7, 0x40

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 330
    .local v4, firstAt:I
    if-ltz v4, :cond_1

    .line 331
    const/16 v7, 0x40

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 332
    .local v5, lastAt:I
    if-le v5, v4, :cond_1

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/:"

    invoke-static {v8, v9}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .end local v5           #lastAt:I
    :cond_1
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 342
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-static {v7, v8}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 343
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 344
    .end local v0           #base:Landroid/net/Uri;
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v3           #encodedAuthority:Ljava/lang/String;
    .end local v4           #firstAt:I
    :catch_0
    move-exception v2

    .line 345
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "TiUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getCleanUri argString= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static normalizeWindowUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;
    .locals 4
    .parameter "url"

    .prologue
    .line 130
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, lastSlash:I
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, baseUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 133
    const-string v0, "app://"

    .line 135
    :cond_0
    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiUrl;->normalizeWindowUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    return-object v2
.end method

.method public static normalizeWindowUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;
    .locals 10
    .parameter "baseUrl"
    .parameter "url"

    .prologue
    const/4 v9, 0x2

    .line 140
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    const-string v6, "TiUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window Base URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz p1, :cond_0

    .line 143
    const-string v6, "TiUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window Relative URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 148
    .local v5, uri:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, scheme:Ljava/lang/String;
    if-nez v4, :cond_8

    .line 150
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 152
    .local v1, fname:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v6, "./"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 154
    const-string v3, ""

    .line 159
    :cond_1
    :goto_0
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, lastIndex:I
    if-lez v2, :cond_3

    .line 161
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 168
    :goto_1
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 169
    if-nez v3, :cond_4

    const-string p0, "app://"

    .line 170
    :goto_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 189
    .end local v1           #fname:Ljava/lang/String;
    .end local v2           #lastIndex:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #uri:Ljava/net/URI;
    :goto_3
    new-instance v6, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v6, p0, p1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 156
    .restart local v1       #fname:Ljava/lang/String;
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #scheme:Ljava/lang/String;
    .restart local v5       #uri:Ljava/net/URI;
    :cond_2
    const/4 v6, 0x2

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 164
    .restart local v2       #lastIndex:I
    :cond_3
    move-object v1, v3

    .line 165
    const/4 v3, 0x0

    goto :goto_1

    .line 169
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app:/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 171
    :cond_5
    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 172
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 173
    :cond_6
    const-string v6, "../"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 174
    const/4 v6, 0x1

    invoke-static {v3, p0, v6}, Lorg/appcelerator/titanium/util/TiUrl;->parseRelativeBaseUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 176
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 178
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 179
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 181
    .end local v1           #fname:Ljava/lang/String;
    .end local v2           #lastIndex:I
    .end local v3           #path:Ljava/lang/String;
    :cond_8
    const-string v6, "app"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 182
    move-object p0, p1

    goto/16 :goto_3

    .line 184
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheme not implemented for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #uri:Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v6, "TiUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected static parseRelativeBaseUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .parameter "path"
    .parameter "baseUrl"
    .parameter "checkAppPrefix"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 57
    const-string v10, "/"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, right:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 59
    .local v4, left:[Ljava/lang/String;
    const-string v10, "://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 60
    if-eqz p2, :cond_3

    .line 61
    const-string v10, "app://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 62
    new-array v4, v11, [Ljava/lang/String;

    .line 79
    :goto_0
    const/4 v5, 0x0

    .line 80
    .local v5, rIndex:I
    array-length v3, v4

    .line 81
    .local v3, lIndex:I
    :cond_0
    aget-object v10, v6, v5

    const-string v11, ".."

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 82
    add-int/lit8 v3, v3, -0x1

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-le v5, v10, :cond_0

    .line 88
    :cond_1
    const-string v8, ""

    .line 89
    .local v8, sep:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v8, "/"

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v1           #i:I
    .end local v3           #lIndex:I
    .end local v5           #rIndex:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v8           #sep:Ljava/lang/String;
    :cond_2
    const-string v10, "://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, idx:I
    add-int/lit8 v10, v2, 0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 66
    goto :goto_0

    .line 68
    .end local v2           #idx:I
    :cond_3
    const-string v10, "://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, tmp:[Ljava/lang/String;
    array-length v10, v9

    if-le v10, v12, :cond_4

    .line 70
    aget-object v10, v9, v12

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 72
    :cond_4
    new-array v4, v11, [Ljava/lang/String;

    goto :goto_0

    .line 76
    .end local v9           #tmp:[Ljava/lang/String;
    :cond_5
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 94
    .restart local v1       #i:I
    .restart local v3       #lIndex:I
    .restart local v5       #rIndex:I
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    .restart local v8       #sep:Ljava/lang/String;
    :cond_6
    move v1, v5

    :goto_2
    array-length v10, v6

    if-ge v1, v10, :cond_7

    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v8, "/"

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, bUrl:Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_8
    return-object v0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "baseUrl"
    .parameter "path"
    .parameter "scheme"

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 209
    invoke-static {p1}, Lorg/appcelerator/titanium/io/TiFileFactory;->isLocalScheme(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v3, p1

    .line 260
    :goto_0
    return-object v3

    .line 213
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.resource://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/raw/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 214
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 215
    .local v7, upath:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, fileName:Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 219
    .local v2, lastPeriodPos:I
    if-gtz v2, :cond_1

    .line 220
    move-object v1, v0

    .line 224
    .local v1, fileNameWithoutExt:Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p1, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, newPath:Ljava/lang/String;
    goto :goto_0

    .line 222
    .end local v1           #fileNameWithoutExt:Ljava/lang/String;
    .end local v3           #newPath:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #fileNameWithoutExt:Ljava/lang/String;
    goto :goto_1

    .line 229
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #fileNameWithoutExt:Ljava/lang/String;
    .end local v2           #lastPeriodPos:I
    .end local v7           #upath:Landroid/net/Uri;
    :cond_2
    const/4 v5, 0x0

    .line 230
    .local v5, result:Ljava/lang/String;
    if-nez p2, :cond_3

    .line 231
    const-string p2, "app:"

    .line 233
    :cond_3
    const-string v9, "./"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v11, :cond_8

    .line 235
    const-string p1, ""

    .line 240
    :cond_4
    :goto_2
    const-string v9, "../"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "./"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 241
    :cond_5
    invoke-static {p2, p1, p0}, Lorg/appcelerator/titanium/util/TiUrl;->absoluteUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    :cond_6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 245
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    .line 246
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 255
    :goto_3
    const-string v9, "file:"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 256
    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    aput-object v5, v4, v12

    .line 257
    .local v4, p:[Ljava/lang/String;
    invoke-static {v4, v12}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile([Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v6

    .line 258
    .local v6, tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v6}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v5

    .end local v4           #p:[Ljava/lang/String;
    .end local v6           #tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_7
    move-object v3, v5

    .line 260
    goto/16 :goto_0

    .line 237
    .end local v8           #uri:Landroid/net/Uri;
    :cond_8
    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 249
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 252
    :cond_a
    move-object v5, p1

    goto :goto_3
.end method


# virtual methods
.method public getNormalizedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUrl;->normalizeWindowUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public resolve()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 199
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "baseUrl"
    .parameter "path"

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
