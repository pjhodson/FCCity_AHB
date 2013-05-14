.class public Lti/modules/titanium/ui/TableViewSectionProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewSectionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TableViewSectionProxy"


# instance fields
.field protected rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewRowProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 37
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .parameter "rowProxy"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 74
    :cond_0
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowCount()D
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getRows()[Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/TableViewRowProxy;

    return-object v0
.end method

.method public insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 3
    .parameter "index"
    .parameter "row"

    .prologue
    .line 100
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    invoke-virtual {p2, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "TableViewSectionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of range. Unable to insert row at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 149
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 151
    .local v1, row:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->releaseViews()V

    goto :goto_0

    .line 154
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-void
.end method

.method public remove(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .parameter "rowProxy"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 84
    :cond_0
    return-void
.end method

.method public removeRowAt(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 111
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 112
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 113
    .local v0, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 120
    .end local v0           #rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v1, "TableViewSectionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of range. Unable to remove row at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rowAtIndex(I)Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 2
    .parameter "index"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, result:Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 91
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lti/modules/titanium/ui/TableViewRowProxy;
    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 94
    .restart local v0       #result:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 49
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 51
    .local v1, row:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/TableViewRowProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 54
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "[object TableViewSectionProxy]"

    return-object v0
.end method

.method public updateRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 4
    .parameter "index"
    .parameter "row"

    .prologue
    .line 125
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 126
    .local v0, oldRow:Lti/modules/titanium/ui/TableViewRowProxy;
    if-ne p2, v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 130
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p2, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 132
    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 136
    :cond_2
    const-string v1, "TableViewSectionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of range. Unable to update row at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
