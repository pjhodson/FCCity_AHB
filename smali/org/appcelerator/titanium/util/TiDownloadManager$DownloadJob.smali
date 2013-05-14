.class public Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;
.super Ljava/lang/Object;
.source "TiDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DownloadJob"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

.field protected uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiDownloadManager;Ljava/net/URI;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 126
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    .line 128
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 135
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 136
    .local v5, stream:Ljava/io/InputStream;
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 137
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 139
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v7, v6, Lorg/appcelerator/titanium/util/TiDownloadManager;->downloadingURIs:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :try_start_1
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v6, v6, Lorg/appcelerator/titanium/util/TiDownloadManager;->downloadingURIs:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, hash:Ljava/lang/String;
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v7, v6, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    :try_start_3
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v6, v6, Lorg/appcelerator/titanium/util/TiDownloadManager;->listeners:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 148
    .local v4, listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    :try_start_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 150
    .local v3, listener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 151
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/util/TiDownloadListener;

    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-interface {v6, v7}, Lorg/appcelerator/titanium/util/TiDownloadListener;->postDownload(Ljava/net/URI;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 156
    .end local v1           #hash:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;"
    .end local v4           #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    const/16 v8, 0x3e9

    #calls: Lorg/appcelerator/titanium/util/TiDownloadManager;->sendMessage(Ljava/net/URI;I)V
    invoke-static {v6, v7, v8}, Lorg/appcelerator/titanium/util/TiDownloadManager;->access$000(Lorg/appcelerator/titanium/util/TiDownloadManager;Ljava/net/URI;I)V

    .line 159
    const-string v6, "TiDownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception downloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 141
    .restart local v5       #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 148
    .restart local v1       #hash:Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v6

    .line 155
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #listenerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Lorg/appcelerator/titanium/util/TiDownloadListener;>;>;"
    :cond_1
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->this$0:Lorg/appcelerator/titanium/util/TiDownloadManager;

    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiDownloadManager$DownloadJob;->uri:Ljava/net/URI;

    const/16 v8, 0x3e8

    #calls: Lorg/appcelerator/titanium/util/TiDownloadManager;->sendMessage(Ljava/net/URI;I)V
    invoke-static {v6, v7, v8}, Lorg/appcelerator/titanium/util/TiDownloadManager;->access$000(Lorg/appcelerator/titanium/util/TiDownloadManager;Ljava/net/URI;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1
.end method
