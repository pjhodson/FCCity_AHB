.class public Lti/modules/titanium/ui/EmailDialogProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "EmailDialogProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;


# static fields
.field public static final CANCELLED:I = 0x0

.field public static final FAILED:I = 0x3

.field public static final SAVED:I = 0x1

.field public static final SENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EmailDialogProxy"


# instance fields
.field private attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private privateDataDirectoryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/ui/EmailDialogProxy;->privateDataDirectoryPath:Ljava/lang/String;

    .line 63
    const-string v1, "appdata-private:///"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    .line 64
    .local v0, privateDataDirectory:Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/EmailDialogProxy;->privateDataDirectoryPath:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 69
    invoke-direct {p0}, Lti/modules/titanium/ui/EmailDialogProxy;-><init>()V

    .line 70
    return-void
.end method

.method private baseMimeType(Z)Ljava/lang/String;
    .locals 3
    .parameter "isHtml"

    .prologue
    .line 106
    if-eqz p1, :cond_1

    const-string v0, "text/html"

    .line 113
    .local v0, result:Ljava/lang/String;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 114
    const-string v0, "message/rfc822"

    .line 116
    :cond_0
    return-object v0

    .line 106
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    const-string v0, "text/plain"

    goto :goto_0
.end method

.method private blobToFile(Lorg/appcelerator/titanium/TiBlob;)Ljava/io/File;
    .locals 4
    .parameter "blob"

    .prologue
    .line 228
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 229
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v2

    .line 238
    :goto_0
    return-object v2

    .line 233
    :cond_0
    const-string v1, "attachment"

    .line 234
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, extension:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    :cond_1
    invoke-direct {p0, p1, v1}, Lti/modules/titanium/ui/EmailDialogProxy;->blobToTemp(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method private blobToTemp(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "blob"
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 193
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->getDataDirectory(Z)Ljava/io/File;

    move-result-object v4

    const-string v5, "temp"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v1, tempFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 196
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v3, tempfilej:Ljava/io/File;
    new-instance v2, Lorg/appcelerator/titanium/io/TiFile;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lorg/appcelerator/titanium/io/TiFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 199
    .local v2, tempfile:Lorg/appcelerator/titanium/io/TiFile;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiFile;->deleteFile()Z

    .line 203
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Lorg/appcelerator/titanium/io/TiFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    .line 204
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiFile;->getNativeFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 209
    :goto_0
    return-object v4

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/io/IOException;
    const-string v4, "EmailDialogProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to attach file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 120
    invoke-direct {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->getAttachmentUris()Ljava/util/ArrayList;

    move-result-object v3

    .line 121
    .local v3, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v2, Landroid/content/Intent;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    :goto_0
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, sendIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 123
    .local v1, isHtml:Z
    const-string v4, "html"

    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/EmailDialogProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const-string v4, "html"

    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/EmailDialogProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 126
    :cond_0
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/EmailDialogProxy;->baseMimeType(Z)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, intentType:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v4, "android.intent.extra.EMAIL"

    const-string v5, "toRecipients"

    invoke-direct {p0, v2, v4, v5}, Lti/modules/titanium/ui/EmailDialogProxy;->putAddressExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v4, "android.intent.extra.CC"

    const-string v5, "ccRecipients"

    invoke-direct {p0, v2, v4, v5}, Lti/modules/titanium/ui/EmailDialogProxy;->putAddressExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v4, "android.intent.extra.BCC"

    const-string v5, "bccRecipients"

    invoke-direct {p0, v2, v4, v5}, Lti/modules/titanium/ui/EmailDialogProxy;->putAddressExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v4, "android.intent.extra.SUBJECT"

    const-string v5, "subject"

    invoke-direct {p0, v2, v4, v5}, Lti/modules/titanium/ui/EmailDialogProxy;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v4, "android.intent.extra.TEXT"

    const-string v5, "messageBody"

    invoke-direct {p0, v2, v4, v5, v1}, Lti/modules/titanium/ui/EmailDialogProxy;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    invoke-direct {p0, v2, v3}, Lti/modules/titanium/ui/EmailDialogProxy;->prepareAttachments(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 135
    const-string v4, "EmailDialogProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Choosing for mime type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v2

    .line 121
    .end local v0           #intentType:Ljava/lang/String;
    .end local v1           #isHtml:Z
    .end local v2           #sendIntent:Landroid/content/Intent;
    :cond_1
    const-string v4, "android.intent.action.SEND"

    goto :goto_0
.end method

.method private getAttachmentUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 5
    .parameter "attachment"

    .prologue
    const/4 v3, 0x0

    .line 243
    instance-of v4, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 244
    check-cast v1, Lti/modules/titanium/filesystem/FileProxy;

    .line 245
    .local v1, fileProxy:Lti/modules/titanium/filesystem/FileProxy;
    invoke-virtual {v1}, Lti/modules/titanium/filesystem/FileProxy;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/EmailDialogProxy;->isPrivateData(Lti/modules/titanium/filesystem/FileProxy;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    invoke-direct {p0, v1}, Lti/modules/titanium/ui/EmailDialogProxy;->privateFileToTemp(Lti/modules/titanium/filesystem/FileProxy;)Ljava/io/File;

    move-result-object v0

    .line 248
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 249
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 264
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileProxy:Lti/modules/titanium/filesystem/FileProxy;
    .end local p1
    :cond_0
    :goto_0
    return-object v3

    .line 254
    .restart local v1       #fileProxy:Lti/modules/titanium/filesystem/FileProxy;
    .restart local p1
    :cond_1
    invoke-virtual {v1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v2

    .line 255
    .local v2, nativeFile:Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 258
    .end local v1           #fileProxy:Lti/modules/titanium/filesystem/FileProxy;
    .end local v2           #nativeFile:Ljava/io/File;
    :cond_2
    instance-of v4, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v4, :cond_0

    .line 259
    check-cast p1, Lorg/appcelerator/titanium/TiBlob;

    .end local p1
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/EmailDialogProxy;->blobToFile(Lorg/appcelerator/titanium/TiBlob;)Ljava/io/File;

    move-result-object v0

    .line 260
    .restart local v0       #file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 261
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private getAttachmentUris()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v4, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 270
    const/4 v3, 0x0

    .line 279
    :cond_0
    return-object v3

    .line 272
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v3, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, attachment:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/EmailDialogProxy;->getAttachmentUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v2

    .line 275
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 276
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isPrivateData(Lti/modules/titanium/filesystem/FileProxy;)Z
    .locals 3
    .parameter "file"

    .prologue
    const/4 v0, 0x1

    .line 334
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android_asset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/EmailDialogProxy;->privateDataDirectoryPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareAttachments(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "sendIntent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .line 283
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 287
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 290
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 295
    :cond_2
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private privateFileToTemp(Lti/modules/titanium/filesystem/FileProxy;)Ljava/io/File;
    .locals 5
    .parameter "file"

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, tempfile:Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lti/modules/titanium/ui/EmailDialogProxy;->blobToTemp(Lorg/appcelerator/titanium/TiBlob;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/IOException;
    const-string v2, "EmailDialogProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to attach file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private putAddressExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "intent"
    .parameter "extraType"
    .parameter "ourkey"

    .prologue
    .line 315
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/EmailDialogProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 316
    .local v4, testprop:Ljava/lang/Object;
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 317
    check-cast v4, [Ljava/lang/Object;

    .end local v4           #testprop:Ljava/lang/Object;
    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 318
    .local v3, oaddrs:[Ljava/lang/Object;
    array-length v2, v3

    .line 319
    .local v2, len:I
    new-array v0, v2, [Ljava/lang/String;

    .line 320
    .local v0, addrs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 321
    aget-object v5, v3, v1

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    .end local v0           #addrs:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #oaddrs:[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "extraType"
    .parameter "ourKey"

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lti/modules/titanium/ui/EmailDialogProxy;->putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 301
    return-void
.end method

.method private putStringExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "intent"
    .parameter "extraType"
    .parameter "ourkey"
    .parameter "encodeHtml"

    .prologue
    .line 304
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/EmailDialogProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/EmailDialogProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, text:Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 307
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 312
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 309
    .restart local v0       #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public addAttachment(Ljava/lang/Object;)V
    .locals 3
    .parameter "attachment"

    .prologue
    .line 93
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_2

    .line 94
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    .line 97
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxy;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_2
    const-string v0, "EmailDialogProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAttachment for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored. Only files and blobs may be attached."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public doOpen()V
    .locals 7

    .prologue
    .line 153
    invoke-direct {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->buildIntent()Landroid/content/Intent;

    move-result-object v4

    .line 154
    .local v4, sendIntent:Landroid/content/Intent;
    const-string v5, "Send"

    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 156
    .local v2, choosingIntent:Landroid/content/Intent;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 158
    check-cast v1, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 159
    .local v1, activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-interface {v1}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v3

    .line 161
    .local v3, code:I
    new-instance v5, Lti/modules/titanium/ui/EmailDialogProxy$1;

    invoke-direct {v5, p0}, Lti/modules/titanium/ui/EmailDialogProxy$1;-><init>(Lti/modules/titanium/ui/EmailDialogProxy;)V

    invoke-interface {v1, v2, v3, v5}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 189
    .end local v1           #activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    .end local v3           #code:I
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v5, "EmailDialogProxy"

    const-string v6, "Could not open email dialog, current activity is null."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 8

    .prologue
    .line 74
    const/4 v4, 0x0

    .line 75
    .local v4, supported:Z
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 76
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 78
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 79
    invoke-direct {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    .line 80
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 82
    const/4 v4, 0x1

    .line 83
    const-string v5, "EmailDialogProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of activities that support ACTION_SEND: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    return v4
.end method

.method public onActivityTransition(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    invoke-virtual {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->doOpen()V

    .line 349
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->removeActivityTransitionListener(Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;)V

    .line 351
    :cond_0
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->isActivityTransition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->addActivityTransitionListener(Lorg/appcelerator/titanium/TiApplication$ActivityTransitionListener;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/EmailDialogProxy;->doOpen()V

    goto :goto_0
.end method
