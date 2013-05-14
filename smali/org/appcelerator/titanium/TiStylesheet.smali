.class public abstract Lorg/appcelerator/titanium/TiStylesheet;
.super Ljava/lang/Object;
.source "TiStylesheet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiStylesheet"


# instance fields
.field protected final classesDensityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected final classesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final idsDensityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected final idsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method protected addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .parameter "result"
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/kroll/KrollDict;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollDict;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 34
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    .line 38
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public final getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 11
    .parameter "objectId"
    .parameter
    .parameter "density"
    .parameter "basename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollDict;"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, classes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v8, "TiStylesheet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStylesheet id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", classes: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", density: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", basename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v7}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 46
    .local v7, result:Lorg/appcelerator/kroll/KrollDict;
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesMap:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    .line 48
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 49
    .local v1, classMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 50
    .local v4, globalMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    if-nez v4, :cond_0

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, clazz:Ljava/lang/String;
    invoke-virtual {p0, v7, v4, v2}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v7, v1, v2}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1           #classMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v2           #clazz:Ljava/lang/String;
    .end local v4           #globalMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    if-eqz v8, :cond_5

    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, globalDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 61
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #globalDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    check-cast v3, Ljava/util/HashMap;

    .line 64
    .restart local v3       #globalDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_2
    const/4 v0, 0x0

    .line 65
    .local v0, classDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 66
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->classesDensityMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #classDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 69
    .restart local v0       #classDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    .line 70
    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    .restart local v2       #clazz:Ljava/lang/String;
    invoke-virtual {p0, v7, v3, v2}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v7, v0, v2}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v0           #classDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v2           #clazz:Ljava/lang/String;
    .end local v3           #globalDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsMap:Ljava/util/HashMap;

    if-eqz v8, :cond_6

    if-eqz p1, :cond_6

    .line 78
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {p0, v7, v8, p1}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 79
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {p0, v7, v8, p1}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 81
    :cond_6
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    if-eqz v8, :cond_9

    if-eqz p1, :cond_9

    .line 83
    const/4 v3, 0x0

    .line 84
    .restart local v3       #globalDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 85
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    const-string v9, "global"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #globalDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    check-cast v3, Ljava/util/HashMap;

    .line 87
    .restart local v3       #globalDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_7
    const/4 v6, 0x0

    .line 88
    .local v6, idDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 89
    iget-object v8, p0, Lorg/appcelerator/titanium/TiStylesheet;->idsDensityMap:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #idDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    check-cast v6, Ljava/util/HashMap;

    .line 91
    .restart local v6       #idDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_8
    invoke-virtual {p0, v7, v3, p1}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v7, v6, p1}, Lorg/appcelerator/titanium/TiStylesheet;->addAll(Lorg/appcelerator/kroll/KrollDict;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 94
    .end local v3           #globalDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    .end local v6           #idDensityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;>;"
    :cond_9
    return-object v7
.end method
