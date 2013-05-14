.class public Lorg/appcelerator/titanium/util/TiColorHelper;
.super Ljava/lang/Object;
.source "TiColorHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiColorHelper"

.field static argbPattern:Ljava/util/regex/Pattern;

.field private static colorTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static rgbPattern:Ljava/util/regex/Pattern;

.field static shortHexPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "#([0-9a-f])([0-9a-f])([0-9a-f])([0-9a-f]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->shortHexPattern:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "rgb\\(([0-9]{1,3}),([0-9]{1,3}),([0-9]{1,3})\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->rgbPattern:Ljava/util/regex/Pattern;

    .line 24
    const-string v0, "rgba\\(([0-9]{1,3}),([0-9]{1,3}),([0-9]{1,3}),([0-9]{1,3})\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->argbPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildColorTable()V
    .locals 6

    .prologue
    .line 83
    const-class v1, Lorg/appcelerator/titanium/util/TiColorHelper;

    monitor-enter v1

    .line 84
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    .line 86
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "black"

    const/high16 v3, -0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "red"

    const/high16 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "purple"

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "orange"

    const/16 v3, 0xff

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "gray"

    const v3, -0x777778

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "darkgray"

    const v3, -0xbbbbbc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "lightgray"

    const v3, -0x333334

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "cyan"

    const v3, -0xff0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "magenta"

    const v3, -0xff01

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "transparent"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "aqua"

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "fuchsia"

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "lime"

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "maroon"

    const/16 v3, 0x88

    const/4 v4, 0x0

    const/16 v5, 0x88

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "pink"

    const/16 v3, 0xff

    const/16 v4, 0xc0

    const/16 v5, 0xcb

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "navy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "silver"

    const/16 v3, 0xc0

    const/16 v4, 0xc0

    const/16 v5, 0xc0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "olive"

    const/16 v3, 0x80

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "teal"

    const/4 v3, 0x0

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "brown"

    const/16 v3, 0x99

    const/16 v4, 0x66

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 12
    .parameter "value"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, color:I
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, lowval:Ljava/lang/String;
    const/4 v4, 0x0

    .line 40
    .local v4, m:Ljava/util/regex/Matcher;
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->shortHexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    if-gt v2, v8, :cond_0

    .line 44
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v6           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, newColor:Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 79
    .end local v2           #i:I
    .end local v3           #lowval:Ljava/lang/String;
    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v5           #newColor:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return v0

    .line 49
    .restart local v3       #lowval:Ljava/lang/String;
    .restart local v4       #m:Ljava/util/regex/Matcher;
    :cond_2
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->rgbPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 50
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    .line 55
    :cond_3
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->argbPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 56
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_1

    .line 65
    :cond_4
    :try_start_0
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    if-nez v8, :cond_5

    .line 68
    invoke-static {}, Lorg/appcelerator/titanium/util/TiColorHelper;->buildColorTable()V

    .line 71
    :cond_5
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 72
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    .line 74
    :cond_6
    const-string v8, "TiColorHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown color: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
