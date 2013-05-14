.class public Lti/modules/titanium/ui/android/TiPreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "TiPreferencesActivity.java"


# static fields
.field private static final DEFAULT_PREFS_RNAME:Ljava/lang/String; = "preferences"

.field private static final TAG:Ljava/lang/String; = "TiPreferencesActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string v2, "preferences"

    .line 26
    .local v2, prefsName:Ljava/lang/String;
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "prefsName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "prefsName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 29
    move-object v2, v1

    .line 35
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v5, "titanium"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    .line 37
    .local v3, resid:I
    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->addPreferencesFromResource(I)V

    .line 49
    .end local v3           #resid:I
    :goto_0
    return-void

    .line 40
    .restart local v3       #resid:I
    :cond_1
    const-string v4, "TiPreferencesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xml."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preferences not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->finish()V
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v3           #resid:I
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v4, "TiPreferencesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading preferences: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->finish()V

    goto :goto_0
.end method
