.class Lorg/appcelerator/titanium/view/TiCompositeLayout$1;
.super Ljava/lang/Object;
.source "TiCompositeLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiCompositeLayout;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;->this$0:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/high16 v4, -0x8000

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 132
    .local v0, p1:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 134
    .local v1, p2:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v2, 0x0

    .line 136
    .local v2, result:I
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-eq v3, v4, :cond_3

    iget v3, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-eq v3, v4, :cond_3

    .line 137
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    iget v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-ge v3, v4, :cond_2

    .line 138
    const/4 v2, -0x1

    .line 158
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 159
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    iget v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    if-ge v3, v4, :cond_7

    .line 160
    const/4 v2, -0x1

    .line 168
    :cond_1
    :goto_1
    return v2

    .line 139
    :cond_2
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    iget v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-le v3, v4, :cond_0

    .line 140
    const/4 v2, 0x1

    goto :goto_0

    .line 142
    :cond_3
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-eq v3, v4, :cond_5

    .line 143
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-gez v3, :cond_4

    .line 144
    const/4 v2, -0x1

    .line 146
    :cond_4
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-lez v3, :cond_0

    .line 147
    const/4 v2, 0x1

    goto :goto_0

    .line 149
    :cond_5
    iget v3, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-eq v3, v4, :cond_0

    .line 150
    iget v3, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-gez v3, :cond_6

    .line 151
    const/4 v2, 0x1

    .line 153
    :cond_6
    iget v3, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    if-lez v3, :cond_0

    .line 154
    const/4 v2, -0x1

    goto :goto_0

    .line 161
    :cond_7
    iget v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    iget v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    if-le v3, v4, :cond_8

    .line 162
    const/4 v2, 0x1

    goto :goto_1

    .line 164
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Ambiguous Z-Order"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
