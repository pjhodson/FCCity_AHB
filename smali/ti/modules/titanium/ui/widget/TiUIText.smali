.class public Lti/modules/titanium/ui/widget/TiUIText;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIText$TiEditText;
    }
.end annotation


# static fields
.field private static final KEYBOARD_ASCII:I = 0x0

.field private static final KEYBOARD_DECIMAL_PAD:I = 0x8

.field private static final KEYBOARD_DEFAULT:I = 0x7

.field private static final KEYBOARD_EMAIL_ADDRESS:I = 0x5

.field private static final KEYBOARD_NAMEPHONE_PAD:I = 0x6

.field private static final KEYBOARD_NUMBERS_PUNCTUATION:I = 0x1

.field private static final KEYBOARD_NUMBER_PAD:I = 0x3

.field private static final KEYBOARD_PHONE_PAD:I = 0x4

.field private static final KEYBOARD_URL:I = 0x2

.field public static final RETURNKEY_DEFAULT:I = 0x9

.field public static final RETURNKEY_DONE:I = 0x7

.field public static final RETURNKEY_EMERGENCY_CALL:I = 0x8

.field public static final RETURNKEY_GO:I = 0x0

.field public static final RETURNKEY_GOOGLE:I = 0x1

.field public static final RETURNKEY_JOIN:I = 0x2

.field public static final RETURNKEY_NEXT:I = 0x3

.field public static final RETURNKEY_ROUTE:I = 0x4

.field public static final RETURNKEY_SEARCH:I = 0x5

.field public static final RETURNKEY_SEND:I = 0xa

.field public static final RETURNKEY_YAHOO:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TiUIText"

.field private static final TEXT_AUTOCAPITALIZATION_ALL:I = 0x3

.field private static final TEXT_AUTOCAPITALIZATION_NONE:I = 0x0

.field private static final TEXT_AUTOCAPITALIZATION_SENTENCES:I = 0x1

.field private static final TEXT_AUTOCAPITALIZATION_WORDS:I = 0x2


# instance fields
.field private field:Z

.field private maxLength:I

.field protected tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V
    .locals 4
    .parameter "proxy"
    .parameter "field"

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 114
    const-string v0, "TiUIText"

    const-string v1, "Creating a text field"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-boolean p2, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    .line 117
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIText;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;-><init>(Lti/modules/titanium/ui/widget/TiUIText;Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    .line 118
    if-eqz p2, :cond_0

    .line 119
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setSingleLine()V

    .line 120
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setMaxLines(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 124
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 125
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setIncludeFontPadding(Z)V

    .line 126
    if-eqz p2, :cond_1

    .line 127
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setGravity(I)V

    .line 131
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIText;->setNativeView(Landroid/view/View;)V

    .line 132
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setGravity(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIText;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 264
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 269
    return-void
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->focus()V

    .line 302
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "editable"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "editable"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 332
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 333
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-object v0
.end method

.method public handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .parameter "d"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 378
    const/4 v5, 0x0

    .line 379
    .local v5, type:I
    const/4 v3, 0x0

    .line 380
    .local v3, passwordMask:Z
    const/4 v2, 0x1

    .line 381
    .local v2, editable:Z
    const v1, 0x8000

    .line 382
    .local v1, autocorrect:I
    const/4 v0, 0x0

    .line 384
    .local v0, autoCapValue:I
    const-string v7, "autocorrect"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "autocorrect"

    invoke-static {p1, v7, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 385
    const/high16 v1, 0x8

    .line 388
    :cond_0
    const-string v7, "editable"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 389
    const-string v7, "editable"

    invoke-static {p1, v7, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v2

    .line 392
    :cond_1
    const-string v7, "autocapitalization"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 394
    const-string v7, "autocapitalization"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 412
    const-string v7, "TiUIText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown AutoCapitalization Value ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "autocapitalization"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    :goto_0
    const-string v7, "passwordMask"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 418
    const-string v7, "passwordMask"

    invoke-static {p1, v7, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v3

    .line 421
    :cond_3
    const-string v7, "keyboardType"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 422
    const-string v7, "keyboardType"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v5

    .line 425
    :cond_4
    or-int v6, v1, v0

    .line 426
    .local v6, typeModifiers:I
    move v4, v6

    .line 429
    .local v4, textTypeAndClass:I
    const/high16 v7, 0x8

    if-ne v1, v7, :cond_5

    if-eqz v3, :cond_6

    .line 430
    :cond_5
    or-int/lit8 v4, v4, 0x1

    .line 432
    :cond_6
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v10}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setCursorVisible(Z)V

    .line 433
    packed-switch v5, :pswitch_data_1

    .line 478
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_b

    .line 479
    or-int/lit16 v4, v4, 0x80

    .line 482
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setInputType(I)V

    .line 483
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 486
    if-eq v5, v10, :cond_7

    const/16 v7, 0x8

    if-eq v5, v7, :cond_7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_8

    .line 487
    :cond_7
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    .line 496
    :cond_8
    :goto_2
    if-nez v2, :cond_9

    .line 497
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v12}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 498
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v11}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setCursorVisible(Z)V

    .line 501
    :cond_9
    iget-boolean v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-nez v7, :cond_a

    .line 502
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v11}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setSingleLine(Z)V

    .line 504
    :cond_a
    return-void

    .line 396
    .end local v4           #textTypeAndClass:I
    .end local v6           #typeModifiers:I
    :pswitch_1
    const/4 v0, 0x0

    .line 397
    goto :goto_0

    .line 399
    :pswitch_2
    const/16 v0, 0x7000

    .line 403
    goto :goto_0

    .line 405
    :pswitch_3
    const/16 v0, 0x4000

    .line 406
    goto :goto_0

    .line 409
    :pswitch_4
    const/16 v0, 0x2000

    .line 410
    goto :goto_0

    .line 439
    .restart local v4       #textTypeAndClass:I
    .restart local v6       #typeModifiers:I
    :pswitch_5
    or-int/lit8 v4, v4, 0x2

    .line 440
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    new-instance v8, Lti/modules/titanium/ui/widget/TiUIText$1;

    invoke-direct {v8, p0}, Lti/modules/titanium/ui/widget/TiUIText$1;-><init>(Lti/modules/titanium/ui/widget/TiUIText;)V

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_1

    .line 460
    :pswitch_6
    const-string v7, "TiUIText"

    const-string v8, "Setting keyboard type URL-3"

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    .line 462
    or-int/lit8 v4, v4, 0x10

    .line 463
    goto :goto_1

    .line 465
    :pswitch_7
    or-int/lit16 v4, v4, 0x3000

    .line 467
    :pswitch_8
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {v10, v10}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 468
    or-int/lit8 v4, v4, 0x2

    .line 469
    goto :goto_1

    .line 471
    :pswitch_9
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 472
    or-int/lit8 v4, v4, 0x3

    .line 473
    goto :goto_1

    .line 475
    :pswitch_a
    or-int/lit8 v4, v4, 0x20

    goto :goto_1

    .line 491
    :cond_b
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setInputType(I)V

    .line 492
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v7

    instance-of v7, v7, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v7, :cond_8

    .line 493
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v7, v12}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_2

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 433
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public handleReturnKeyType(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x2

    .line 518
    packed-switch p1, :pswitch_data_0

    .line 553
    :goto_0
    return-void

    .line 520
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 523
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 526
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 529
    :pswitch_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 532
    :pswitch_4
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 535
    :pswitch_5
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 538
    :pswitch_6
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 541
    :pswitch_7
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 544
    :pswitch_8
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 547
    :pswitch_9
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 550
    :pswitch_a
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setImeOptions(I)V

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "textAlign"
    .parameter "verticalAlign"

    .prologue
    .line 367
    if-nez p2, :cond_0

    .line 368
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-eqz v0, :cond_2

    const-string p2, "middle"

    .line 370
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 371
    const-string p1, "left"

    .line 373
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void

    .line 368
    :cond_2
    const-string p2, "top"

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "keyEvent"

    .prologue
    .line 340
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, value:Ljava/lang/String;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 342
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "value"

    invoke-virtual {v3, v4, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    const-string v4, "TiUIText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " KeyEvent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DEBUG_MODE"

    invoke-static {v4, v3, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-nez p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/4 v3, 0x6

    if-ne p2, v3, :cond_2

    .line 355
    :cond_1
    const-string v3, "return"

    invoke-virtual {p0, v3, v0}, Lti/modules/titanium/ui/widget/TiUIText;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 358
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "enableReturnKey"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 359
    .local v1, enableReturnKey:Ljava/lang/Boolean;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 360
    const/4 v3, 0x1

    .line 362
    :goto_1
    return v3

    .line 345
    .end local v1           #enableReturnKey:Ljava/lang/Boolean;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 362
    .restart local v1       #enableReturnKey:Ljava/lang/Boolean;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 316
    if-eqz p2, :cond_1

    .line 317
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "clearOnEdit"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 318
    .local v0, clearOnEdit:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 322
    .local v1, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 323
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 326
    .end local v0           #clearOnEdit:Ljava/lang/Boolean;
    .end local v1           #r:Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->onFocusChange(Landroid/view/View;Z)V

    .line 327
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 280
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 281
    .local v3, prevText:Ljava/lang/Object;
    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-ltz v5, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-le v5, v6, :cond_1

    .line 282
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, t:Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getSelectionStart()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 284
    .local v0, cursor:I
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v5, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v5, v0}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setSelection(I)V

    .line 296
    .end local v0           #cursor:I
    .end local v4           #t:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, newValue:Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5, v3, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 291
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "value"

    invoke-virtual {v1, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "value"

    invoke-virtual {v5, v6, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const-string v5, "change"

    invoke-virtual {p0, v5, v1}, Lti/modules/titanium/ui/widget/TiUIText;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "d"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 139
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEnabled(Z)V

    .line 143
    :cond_0
    const-string v2, "maxLength"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-eqz v2, :cond_1

    .line 144
    const-string v2, "maxLength"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 146
    :cond_1
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 147
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "value"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    const-string v2, "color"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "color"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setTextColor(I)V

    .line 156
    :cond_2
    const-string v2, "hintText"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "hintText"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 160
    :cond_3
    const-string v2, "ellipsize"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    const-string v2, "ellipsize"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 162
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 168
    :cond_4
    :goto_1
    const-string v2, "font"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "font"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 172
    :cond_5
    const-string v2, "textAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "verticalAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 173
    :cond_6
    const/4 v0, 0x0

    .line 174
    .local v0, textAlign:Ljava/lang/String;
    const/4 v1, 0x0

    .line 175
    .local v1, verticalAlign:Ljava/lang/String;
    const-string v2, "textAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 176
    const-string v2, "textAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_7
    const-string v2, "verticalAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 179
    const-string v2, "verticalAlign"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_8
    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIText;->handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0           #textAlign:Ljava/lang/String;
    .end local v1           #verticalAlign:Ljava/lang/String;
    :cond_9
    const-string v2, "returnKeyType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 185
    const-string v2, "returnKeyType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIText;->handleReturnKeyType(I)V

    .line 188
    :cond_a
    const-string v2, "keyboardType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "autocorrect"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "passwordMask"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "autocapitalization"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "editable"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 189
    :cond_b
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V

    .line 192
    :cond_c
    const-string v2, "autoLink"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 193
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, "autoLink"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 195
    :cond_d
    return-void

    .line 149
    :cond_e
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 164
    :cond_f
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 201
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    const-string v6, "TiUIText"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Property: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    const-string v6, "enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 205
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEnabled(Z)V

    .line 258
    .end local p3
    :cond_1
    :goto_0
    return-void

    .line 206
    .restart local p3
    :cond_2
    const-string v6, "value"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 208
    :cond_3
    const-string v6, "maxLength"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 209
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 211
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 212
    .local v0, currentText:Landroid/text/Editable;
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-ltz v6, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    iget v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-le v6, v7, :cond_1

    .line 213
    const/4 v6, 0x0

    iget v7, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    invoke-interface {v0, v6, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 214
    .local v4, truncateText:Ljava/lang/CharSequence;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->getSelectionStart()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 215
    .local v1, cursor:I
    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    if-le v1, v6, :cond_4

    .line 216
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->maxLength:I

    .line 218
    :cond_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v6, v4}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v6, v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setSelection(I)V

    goto :goto_0

    .line 221
    .end local v0           #currentText:Landroid/text/Editable;
    .end local v1           #cursor:I
    .end local v4           #truncateText:Ljava/lang/CharSequence;
    :cond_5
    const-string v6, "color"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 222
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setTextColor(I)V

    goto :goto_0

    .line 223
    .restart local p3
    :cond_6
    const-string v6, "hintText"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 224
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v6, p3}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    .restart local p3
    :cond_7
    const-string v6, "ellipsize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 226
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 227
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 229
    :cond_8
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 231
    :cond_9
    const-string v6, "textAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "verticalAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 232
    :cond_a
    const/4 v3, 0x0

    .line 233
    .local v3, textAlign:Ljava/lang/String;
    const/4 v5, 0x0

    .line 234
    .local v5, verticalAlign:Ljava/lang/String;
    const-string v6, "textAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 235
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 239
    :cond_b
    :goto_1
    const-string v6, "verticalAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 240
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 244
    :cond_c
    :goto_2
    invoke-virtual {p0, v3, v5}, Lti/modules/titanium/ui/widget/TiUIText;->handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_d
    const-string v6, "textAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 237
    const-string v6, "textAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 241
    :cond_e
    const-string v6, "verticalAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 242
    const-string v6, "verticalAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 245
    .end local v3           #textAlign:Ljava/lang/String;
    .end local v5           #verticalAlign:Ljava/lang/String;
    :cond_f
    const-string v6, "keyboardType"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "autocorrect"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "autocapitalization"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "passwordMask"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "editable"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 246
    :cond_10
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 247
    .local v2, d:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 248
    .end local v2           #d:Lorg/appcelerator/kroll/KrollDict;
    :cond_11
    const-string v6, "returnKeyType"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 249
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/TiUIText;->handleReturnKeyType(I)V

    goto/16 :goto_0

    .line 250
    :cond_12
    const-string v6, "font"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 251
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    check-cast p3, Ljava/util/HashMap;

    .end local p3
    invoke-static {v6, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 252
    .restart local p3
    :cond_13
    const-string v6, "autoLink"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 253
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-static {v6, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->linkifyIfEnabled(Landroid/widget/TextView;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 256
    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public setSelection(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 508
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->length()I

    move-result v0

    .line 509
    .local v0, textLength:I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    .line 510
    :cond_0
    const-string v1, "TiUIText"

    const-string v2, "Invalid range for text selection. Ignoring."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Lti/modules/titanium/ui/widget/TiUIText$TiEditText;

    invoke-virtual {v1, p1, p2}, Lti/modules/titanium/ui/widget/TiUIText$TiEditText;->setSelection(II)V

    goto :goto_0
.end method
