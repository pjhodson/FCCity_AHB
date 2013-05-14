.class public Lorg/appcelerator/kroll/KrollModuleInfo;
.super Ljava/lang/Object;
.source "KrollModuleInfo.java"


# instance fields
.field protected author:Ljava/lang/String;

.field protected copyright:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected guid:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected isJSModule:Z

.field protected license:Ljava/lang/String;

.field protected licenseKey:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "id"
    .parameter "guid"
    .parameter "version"
    .parameter "description"
    .parameter "author"
    .parameter "license"
    .parameter "copyright"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v1, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->isJSModule:Z

    .line 20
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->id:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->guid:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->version:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->description:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->author:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->license:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->copyright:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->licenseKey:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->isJSModule:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsJSModule()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->isJSModule:Z

    return v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->license:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setIsJSModule(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->isJSModule:Z

    .line 90
    return-void
.end method

.method public setLicenseKey(Ljava/lang/String;)V
    .locals 0
    .parameter "licenseKey"

    .prologue
    .line 79
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollModuleInfo;->licenseKey:Ljava/lang/String;

    .line 80
    return-void
.end method
