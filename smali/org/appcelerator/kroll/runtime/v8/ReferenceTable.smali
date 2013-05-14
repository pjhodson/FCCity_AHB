.class public final Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;
.super Ljava/lang/Object;
.source "ReferenceTable.java"


# static fields
.field private static lastKey:I

.field private static references:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->references:Ljava/util/HashMap;

    .line 9
    const/4 v0, 0x1

    sput v0, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->lastKey:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearWeakReference(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 52
    sget-object v1, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->references:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, ref:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Ljava/lang/ref/WeakReference;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 55
    .restart local v0       #ref:Ljava/lang/Object;
    sget-object v1, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->references:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-object v0
.end method

.method public static createReference(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    .line 18
    sget v0, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->lastKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->lastKey:I

    .line 19
    .local v0, key:I
    sget-object v1, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->references:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return v0
.end method

.method public static destroyReference(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 29
    sget-object v0, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->references:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static getReference(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 67
    sget-object v1, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->references:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, ref:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Ljava/lang/ref/WeakReference;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 71
    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public static makeWeakReference(I)V
    .locals 4
    .parameter "key"

    .prologue
    .line 39
    sget-object v1, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->references:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, ref:Ljava/lang/Object;
    sget-object v1, Lorg/appcelerator/kroll/runtime/v8/ReferenceTable;->references:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
