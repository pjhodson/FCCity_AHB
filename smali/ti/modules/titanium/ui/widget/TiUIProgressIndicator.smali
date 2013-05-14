.class public Lti/modules/titanium/ui/widget/TiUIProgressIndicator;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIProgressIndicator.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final DETERMINANT:I = 0x1

.field public static final DIALOG:I = 0x1

.field public static final INDETERMINANT:I = 0x0

.field private static final MSG_HIDE:I = 0x66

.field private static final MSG_PROGRESS:I = 0x65

.field private static final MSG_SHOW:I = 0x64

.field public static final STATUS_BAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TiUIProgressDialog"


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected incrementFactor:I

.field protected location:I

.field protected max:I

.field protected min:I

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected statusBarTitle:Ljava/lang/String;

.field protected type:I

.field protected visible:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 57
    const-string v0, "TiUIProgressDialog"

    const-string v1, "Creating an progress indicator"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handler:Landroid/os/Handler;

    .line 59
    return-void
.end method


# virtual methods
.method protected handleHide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 241
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 243
    .local v0, ownerActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #ownerActivity:Landroid/app/Activity;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->removeDialog(Landroid/app/Dialog;)V

    .line 245
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 247
    :cond_0
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    .line 256
    :goto_0
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    .line 257
    return-void

    .line 249
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 250
    .local v1, parent:Landroid/app/Activity;
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 251
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 252
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 253
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->statusBarTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->statusBarTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 63
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 83
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 65
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handleShow()V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, parent:Landroid/app/Activity;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0

    .line 78
    .end local v0           #parent:Landroid/app/Activity;
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handleHide()V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleShow()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 149
    const-string v2, ""

    .line 150
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #message:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 154
    .restart local v2       #message:Ljava/lang/String;
    :cond_0
    iput v7, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    .line 155
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    .line 159
    :cond_1
    iput v8, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    .line 160
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "min"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "min"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    .line 164
    :cond_2
    const/16 v4, 0x64

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    .line 165
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "max"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "max"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    .line 169
    :cond_3
    iput v8, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    .line 170
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    .line 174
    :cond_4
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    if-nez v4, :cond_7

    .line 175
    const/16 v4, 0x2710

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->incrementFactor:I

    .line 176
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 178
    .local v3, parent:Landroid/app/Activity;
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    if-nez v4, :cond_5

    .line 179
    invoke-virtual {v3, v7}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 180
    invoke-virtual {v3, v7}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 181
    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->statusBarTitle:Ljava/lang/String;

    .line 182
    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    .end local v3           #parent:Landroid/app/Activity;
    :goto_0
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    .line 230
    return-void

    .line 183
    .restart local v3       #parent:Landroid/app/Activity;
    :cond_5
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    if-ne v4, v7, :cond_6

    .line 184
    invoke-virtual {v3, v8}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 185
    invoke-virtual {v3, v8}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 186
    invoke-virtual {v3, v7}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 187
    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->statusBarTitle:Ljava/lang/String;

    .line 188
    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_6
    const-string v4, "TiUIProgressDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    .end local v3           #parent:Landroid/app/Activity;
    :cond_7
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    if-ne v4, v7, :cond_e

    .line 193
    iput v7, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->incrementFactor:I

    .line 194
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_a

    .line 195
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_8

    .line 197
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 199
    :cond_8
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    .line 200
    instance-of v4, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v4, :cond_9

    move-object v1, v0

    .line 201
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 202
    .local v1, baseActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    new-instance v4, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v1, v5, v7, v6}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/app/AlertDialog;ZLjava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/TiBaseActivity;->addDialog(Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;)V

    .line 203
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 205
    .end local v1           #baseActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    :cond_9
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 208
    .end local v0           #a:Landroid/app/Activity;
    :cond_a
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    const-string v6, "cancelable"

    invoke-virtual {v5, v6, v8}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 211
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    if-nez v4, :cond_b

    .line 212
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 225
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 213
    :cond_b
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    if-ne v4, v7, :cond_d

    .line 214
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 215
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 216
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    if-eqz v4, :cond_c

    .line 217
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 221
    :goto_2
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1

    .line 219
    :cond_c
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_2

    .line 223
    :cond_d
    const-string v4, "TiUIProgressDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    :cond_e
    const-string v4, "TiUIProgressDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 234
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    .line 262
    const-string v0, "cancel"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 263
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 92
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 97
    const-string v3, "TiUIProgressDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v3, "message"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v3, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local p3
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, parent:Landroid/app/Activity;
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    .end local v0           #parent:Landroid/app/Activity;
    .restart local p3
    :cond_2
    const-string v3, "value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    if-eqz v3, :cond_0

    .line 112
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 113
    .local v2, value:I
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    sub-int v3, v2, v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->incrementFactor:I

    mul-int v1, v3, v4

    .line 115
    .local v1, thePos:I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handler:Landroid/os/Handler;

    const/16 v4, 0x65

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 118
    .end local v1           #thePos:I
    .end local v2           #value:I
    :cond_3
    const-string v3, "cancelable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 124
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 130
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRootActivityAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, currentActivity:Landroid/app/Activity;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-eqz v1, :cond_2

    .line 138
    check-cast v0, Lorg/appcelerator/titanium/TiLaunchActivity;

    .end local v0           #currentActivity:Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isJSActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handleShow()V

    goto :goto_0
.end method
