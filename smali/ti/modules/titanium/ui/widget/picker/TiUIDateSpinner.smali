.class public Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDateSpinner.java"

# interfaces
.implements Lkankan/wheel/widget/WheelView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIDateSpinner"


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

.field private dayBeforeMonth:Z

.field private dayWheel:Lkankan/wheel/widget/WheelView;

.field private ignoreItemSelection:Z

.field private locale:Ljava/util/Locale;

.field private maxDate:Ljava/util/Calendar;

.field private minDate:Ljava/util/Calendar;

.field private monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

.field private monthWheel:Lkankan/wheel/widget/WheelView;

.field private numericMonths:Z

.field private suppressChangeEvent:Z

.field private yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

.field private yearWheel:Lkankan/wheel/widget/WheelView;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 43
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->suppressChangeEvent:Z

    .line 44
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->locale:Ljava/util/Locale;

    .line 48
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayBeforeMonth:Z

    .line 49
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->numericMonths:Z

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 0
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 60
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->createNativeView(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private createNativeView(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 66
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    const/16 v3, 0xb

    const/16 v4, 0x1f

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 67
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    invoke-virtual {v1, v2, v6, v5}, Ljava/util/Calendar;->set(III)V

    .line 70
    new-instance v1, Lkankan/wheel/widget/WheelView;

    invoke-direct {v1, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    .line 71
    new-instance v1, Lkankan/wheel/widget/WheelView;

    invoke-direct {v1, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    .line 72
    new-instance v1, Lkankan/wheel/widget/WheelView;

    invoke-direct {v1, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    .line 74
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 75
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 76
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 78
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 79
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 80
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 82
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$1;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$1;-><init>(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;Landroid/content/Context;)V

    .line 91
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "dayBeforeMonth"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :cond_0
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayBeforeMonth:Z

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setNativeView(Landroid/view/View;)V

    .line 108
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getSelectedDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 394
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedYear()I

    move-result v3

    .line 395
    .local v3, year:I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedMonth()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 396
    .local v2, month:I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedDay()I

    move-result v1

    .line 397
    .local v1, day:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 398
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v3, v2, v1}, Ljava/util/Calendar;->set(III)V

    .line 399
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    return-object v4
.end method

.method private getSelectedDay()I
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getValue(I)I

    move-result v0

    return v0
.end method

.method private getSelectedMonth()I
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getValue(I)I

    move-result v0

    return v0
.end method

.method private getSelectedYear()I
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getValue(I)I

    move-result v0

    return v0
.end method

.method private setAdapters()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setYearAdapter()V

    .line 180
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setMonthAdapter()V

    .line 181
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setDayAdapter()V

    .line 183
    return-void
.end method

.method private setCalendar(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 369
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 370
    return-void
.end method

.method private setCalendar(Ljava/util/Date;)V
    .locals 1
    .parameter "date"

    .prologue
    .line 374
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 375
    return-void
.end method

.method private setDayAdapter()V
    .locals 14

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x5

    const/4 v13, 0x1

    .line 246
    const/4 v9, 0x1

    .line 247
    .local v9, setMinDay:I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    .line 249
    .local v8, setMaxDay:I
    const/4 v1, -0x1

    .local v1, currentMin:I
    const/4 v0, -0x1

    .line 250
    .local v0, currentMax:I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    if-eqz v10, :cond_0

    .line 251
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v10}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMinValue()I

    move-result v1

    .line 252
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v10}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMaxValue()I

    move-result v0

    .line 255
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 256
    .local v3, maxYear:I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 257
    .local v5, minYear:I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedYear()I

    move-result v7

    .line 258
    .local v7, selYear:I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v2, v10, 0x1

    .line 259
    .local v2, maxMonth:I
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 260
    .local v4, minMonth:I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedMonth()I

    move-result v6

    .line 262
    .local v6, selMonth:I
    if-ne v7, v3, :cond_1

    if-ne v6, v2, :cond_1

    .line 263
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 266
    :cond_1
    if-ne v7, v5, :cond_2

    if-ne v6, v4, :cond_2

    .line 267
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 270
    :cond_2
    if-ne v1, v9, :cond_3

    if-eq v0, v8, :cond_4

    .line 271
    :cond_3
    new-instance v10, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    new-instance v11, Ljava/text/DecimalFormat;

    const-string v12, "00"

    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x4

    invoke-direct {v10, v9, v8, v11, v12}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    iput-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    .line 272
    iput-boolean v13, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 273
    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    iget-object v11, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v10, v11}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 274
    const/4 v10, 0x0

    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 276
    :cond_4
    return-void
.end method

.method private setLocale(Ljava/lang/String;)V
    .locals 10
    .parameter "localeString"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x4

    .line 342
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 343
    .local v2, locale:Ljava/util/Locale;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_0

    .line 344
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, stripped:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 346
    new-instance v2, Ljava/util/Locale;

    .end local v2           #locale:Ljava/util/Locale;
    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 360
    .end local v3           #stripped:Ljava/lang/String;
    .restart local v2       #locale:Ljava/util/Locale;
    :cond_0
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 361
    iput-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->locale:Ljava/util/Locale;

    .line 362
    invoke-direct {p0, v9}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setMonthAdapter(Z)V

    .line 363
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->syncWheels()V

    .line 365
    :cond_1
    return-void

    .line 347
    .restart local v3       #stripped:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_4

    .line 348
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_3

    .line 351
    new-instance v2, Ljava/util/Locale;

    .end local v2           #locale:Ljava/util/Locale;
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #locale:Ljava/util/Locale;
    goto :goto_0

    .line 353
    :cond_3
    new-instance v2, Ljava/util/Locale;

    .end local v2           #locale:Ljava/util/Locale;
    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #locale:Ljava/util/Locale;
    goto :goto_0

    .line 356
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #language:Ljava/lang/String;
    :cond_4
    const-string v4, "TiUIDateSpinner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locale string \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not understood.  Using default locale."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMonthAdapter()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setMonthAdapter(Z)V

    .line 202
    return-void
.end method

.method private setMonthAdapter(Z)V
    .locals 12
    .parameter "forceUpdate"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 206
    const/4 v7, 0x1

    .line 207
    .local v7, setMinMonth:I
    const/16 v6, 0xc

    .line 209
    .local v6, setMaxMonth:I
    const/4 v1, -0x1

    .local v1, currentMin:I
    const/4 v0, -0x1

    .line 210
    .local v0, currentMax:I
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    if-eqz v9, :cond_0

    .line 211
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMinValue()I

    move-result v1

    .line 212
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMaxValue()I

    move-result v0

    .line 215
    :cond_0
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 216
    .local v3, maxYear:I
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 217
    .local v4, minYear:I
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedYear()I

    move-result v5

    .line 219
    .local v5, selYear:I
    if-ne v5, v3, :cond_1

    .line 220
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 223
    :cond_1
    if-ne v5, v4, :cond_2

    .line 224
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 227
    :cond_2
    if-ne v1, v7, :cond_3

    if-ne v0, v6, :cond_3

    if-eqz p1, :cond_4

    .line 229
    :cond_3
    const/4 v8, 0x4

    .line 230
    .local v8, width:I
    iget-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->numericMonths:Z

    if-eqz v9, :cond_5

    .line 231
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v2, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, format:Ljava/text/NumberFormat;
    :goto_0
    new-instance v9, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-direct {v9, v7, v6, v2, v8}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    iput-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    .line 237
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 238
    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    iget-object v10, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 239
    const/4 v9, 0x0

    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 242
    .end local v2           #format:Ljava/text/NumberFormat;
    .end local v8           #width:I
    :cond_4
    return-void

    .line 233
    .restart local v8       #width:I
    :cond_5
    new-instance v2, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;

    iget-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->locale:Ljava/util/Locale;

    invoke-direct {v2, p0, v9}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;-><init>(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;Ljava/util/Locale;)V

    .restart local v2       #format:Ljava/text/NumberFormat;
    move-object v9, v2

    .line 234
    check-cast v9, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$MonthFormat;->getLongestMonthName()I

    move-result v8

    goto :goto_0
.end method

.method private setYearAdapter()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 187
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 188
    .local v1, minYear:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 189
    .local v0, maxYear:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMinValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMaxValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-direct {v2, v1, v0, v3, v4}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    .line 194
    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 195
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    invoke-virtual {v2, v3}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    goto :goto_0
.end method

.method private syncWheels()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 280
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 281
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearWheel:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->yearAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 282
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthWheel:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->monthAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 283
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayWheel:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayAdapter:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    .line 285
    return-void
.end method


# virtual methods
.method public onItemSelected(Lkankan/wheel/widget/WheelView;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 405
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->ignoreItemSelection:Z

    if-eqz v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue()V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "d"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, valueExistsInProxy:Z
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    const/4 v1, 0x1

    .line 121
    :cond_0
    const-string v2, "minDate"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    .local v0, c:Ljava/util/Calendar;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    const-string v3, "minDate"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 127
    .end local v0           #c:Ljava/util/Calendar;
    :cond_1
    const-string v2, "maxDate"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    .restart local v0       #c:Ljava/util/Calendar;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    const-string v3, "maxDate"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 130
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    .end local v0           #c:Ljava/util/Calendar;
    :cond_2
    const-string v2, "locale"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    const-string v2, "locale"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setLocale(Ljava/lang/String;)V

    .line 137
    :cond_3
    const-string v2, "dayBeforeMonth"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    const-string v2, "dayBeforeMonth"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->dayBeforeMonth:Z

    .line 141
    :cond_4
    const-string v2, "numericMonths"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 142
    const-string v2, "numericMonths"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->numericMonths:Z

    .line 145
    :cond_5
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 146
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 150
    :cond_6
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 151
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 156
    :cond_7
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(JZ)V

    .line 158
    if-nez v1, :cond_8

    .line 159
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    :cond_8
    return-void

    .line 152
    :cond_9
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 153
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 167
    const-string v1, "value"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p3

    .line 168
    check-cast v0, Ljava/util/Date;

    .line 169
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(J)V

    .line 173
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 174
    return-void

    .line 170
    :cond_1
    const-string v1, "locale"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValue()V
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->getSelectedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(Ljava/util/Date;)V

    .line 338
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(JZ)V

    .line 290
    return-void
.end method

.method public setValue(JZ)V
    .locals 6
    .parameter "value"
    .parameter "suppressEvent"

    .prologue
    .line 295
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 297
    .local v3, oldVal:Ljava/util/Date;
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setCalendar(J)V

    .line 298
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 299
    .local v2, newVal:Ljava/util/Date;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 301
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setCalendar(Ljava/util/Date;)V

    .line 307
    :cond_0
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 309
    .local v1, isChanged:Z
    :goto_1
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setAdapters()V

    .line 311
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->syncWheels()V

    .line 312
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "value"

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    .line 315
    iget-boolean v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->suppressChangeEvent:Z

    if-nez v4, :cond_1

    .line 316
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 317
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "value"

    invoke-virtual {v0, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v4, "change"

    invoke-virtual {p0, v4, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 322
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void

    .line 302
    .end local v1           #isChanged:Z
    :cond_2
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->minDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 304
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setCalendar(Ljava/util/Date;)V

    goto :goto_0

    .line 307
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setValue(Ljava/util/Date;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(Ljava/util/Date;Z)V

    .line 333
    return-void
.end method

.method public setValue(Ljava/util/Date;Z)V
    .locals 2
    .parameter "value"
    .parameter "suppressEvent"

    .prologue
    .line 326
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 327
    .local v0, millis:J
    invoke-virtual {p0, v0, v1, p2}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->setValue(JZ)V

    .line 328
    return-void
.end method
