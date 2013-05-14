.class public Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;
.super Lorg/appcelerator/kroll/KrollPropertyChange;
.source "KrollProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KrollPropertyChangeSet"
.end annotation


# instance fields
.field public entryCount:I

.field public keys:[Ljava/lang/String;

.field public newValues:[Ljava/lang/Object;

.field public oldValues:[Ljava/lang/Object;

.field final synthetic this$0:Lorg/appcelerator/kroll/KrollProxy;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;I)V
    .locals 1
    .parameter
    .parameter "capacity"

    .prologue
    const/4 v0, 0x0

    .line 588
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->this$0:Lorg/appcelerator/kroll/KrollProxy;

    .line 589
    invoke-direct {p0, v0, v0, v0}, Lorg/appcelerator/kroll/KrollPropertyChange;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 590
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->entryCount:I

    .line 591
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->keys:[Ljava/lang/String;

    .line 592
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->oldValues:[Ljava/lang/Object;

    .line 593
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->newValues:[Ljava/lang/Object;

    .line 594
    return-void
.end method


# virtual methods
.method public addChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 597
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->keys:[Ljava/lang/String;

    iget v1, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->entryCount:I

    aput-object p1, v0, v1

    .line 598
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->oldValues:[Ljava/lang/Object;

    iget v1, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->entryCount:I

    aput-object p2, v0, v1

    .line 599
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->newValues:[Ljava/lang/Object;

    iget v1, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->entryCount:I

    aput-object p3, v0, v1

    .line 600
    iget v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->entryCount:I

    .line 601
    return-void
.end method

.method public fireEvent(Lorg/appcelerator/kroll/KrollProxy;Lorg/appcelerator/kroll/KrollProxyListener;)V
    .locals 4
    .parameter "proxy"
    .parameter "listener"

    .prologue
    .line 604
    if-nez p2, :cond_1

    .line 610
    :cond_0
    return-void

    .line 607
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->entryCount:I

    if-ge v0, v1, :cond_0

    .line 608
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->oldValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollProxy$KrollPropertyChangeSet;->newValues:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p2, v1, v2, v3, p1}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
