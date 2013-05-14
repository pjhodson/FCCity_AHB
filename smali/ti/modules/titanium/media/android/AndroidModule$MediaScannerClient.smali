.class public Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;
.super Ljava/lang/Object;
.source "AndroidModule.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/android/AndroidModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaScannerClient"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lorg/appcelerator/kroll/KrollFunction;

.field private completedScanCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private connection:Landroid/media/MediaScannerConnection;

.field private mimeTypes:[Ljava/lang/Object;

.field private paths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 2
    .parameter "activity"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->completedScanCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    iput-object p1, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->activity:Landroid/app/Activity;

    .line 98
    iput-object p2, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->paths:[Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->mimeTypes:[Ljava/lang/Object;

    .line 100
    iput-object p4, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->callback:Lorg/appcelerator/kroll/KrollFunction;

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tiContext"
    .parameter "paths"
    .parameter "mimeTypes"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;-><init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 1
    .parameter "tiContext"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 105
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 116
    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->paths:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->paths:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_2

    .line 117
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 131
    :cond_1
    return-void

    .line 120
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->paths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 121
    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->paths:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 122
    .local v2, path:Ljava/lang/String;
    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    const-string v3, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_3
    const/4 v1, 0x0

    .line 126
    .local v1, mimeType:Ljava/lang/String;
    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->mimeTypes:[Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->mimeTypes:[Ljava/lang/Object;

    array-length v3, v3

    if-le v3, v0, :cond_4

    .line 127
    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->mimeTypes:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_4
    iget-object v3, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3, v2, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 135
    iget-object v1, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->completedScanCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->paths:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 139
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->callback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_1

    .line 140
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    .line 141
    .local v0, properties:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "uri"

    if-nez p2, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->callback:Lorg/appcelerator/kroll/KrollFunction;

    sget-object v2, Lti/modules/titanium/media/android/AndroidModule;->_instance:Lti/modules/titanium/media/android/AndroidModule;

    invoke-virtual {v2}, Lti/modules/titanium/media/android/AndroidModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 145
    .end local v0           #properties:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void

    .line 142
    .restart local v0       #properties:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public scan()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->paths:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->paths:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    .line 154
    iget-object v0, p0, Lti/modules/titanium/media/android/AndroidModule$MediaScannerClient;->connection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0
.end method
