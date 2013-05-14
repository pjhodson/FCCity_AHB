.class public Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIDatePicker"


# instance fields
.field protected maxDate:Ljava/util/Date;

.field protected minDate:Ljava/util/Date;

.field protected minuteInterval:I

.field private suppressChangeEvent:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 4
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 39
    const-string v1, "TiUIDatePicker"

    const-string v2, "Creating a date picker"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker$1;

    invoke-direct {v0, p0, p2, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker$1;-><init>(Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 50
    .local v0, picker:Landroid/widget/DatePicker;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setNativeView(Landroid/view/View;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 5
    .parameter "picker"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 124
    .local v1, targetCalendar:Ljava/util/Calendar;
    invoke-virtual {v1, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 125
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 132
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 134
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 136
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 138
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 140
    :cond_1
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    if-nez v2, :cond_2

    .line 141
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 142
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "value"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "change"

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 145
    .end local v0           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 12
    .parameter "d"

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 55
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 57
    const/4 v5, 0x0

    .line 58
    .local v5, valueExistsInProxy:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 59
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    .line 61
    .local v4, picker:Landroid/widget/DatePicker;
    const-string v6, "value"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    const-string v6, "value"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 63
    const/4 v5, 0x1

    .line 65
    :cond_0
    const-string v6, "minDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 67
    .local v3, minDateCalendar:Ljava/util/Calendar;
    const-string v6, "minDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 68
    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 69
    invoke-virtual {v3, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 70
    invoke-virtual {v3, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 71
    const/16 v6, 0xe

    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 73
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    .line 75
    .end local v3           #minDateCalendar:Ljava/util/Calendar;
    :cond_1
    const-string v6, "maxDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 77
    .local v1, maxDateCalendar:Ljava/util/Calendar;
    const-string v6, "maxDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 78
    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 79
    invoke-virtual {v1, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 80
    invoke-virtual {v1, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/16 v6, 0xe

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    .line 85
    .end local v1           #maxDateCalendar:Ljava/util/Calendar;
    :cond_2
    const-string v6, "minuteInterval"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    const-string v6, "minuteInterval"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 87
    .local v2, mi:I
    if-lt v2, v7, :cond_3

    const/16 v6, 0x1e

    if-gt v2, v6, :cond_3

    rem-int/lit8 v6, v2, 0x3c

    if-nez v6, :cond_3

    .line 88
    iput v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minuteInterval:I

    .line 91
    .end local v2           #mi:I
    :cond_3
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 92
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 93
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 95
    if-nez v5, :cond_4

    .line 96
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    if-eqz v6, :cond_5

    .line 101
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-gtz v6, :cond_5

    .line 102
    const-string v6, "TiUIDatePicker"

    const-string v7, "maxDate is less or equal minDate, ignoring both settings."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v6, 0x0

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    .line 104
    const/4 v6, 0x0

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    .line 107
    :cond_5
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 113
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 115
    check-cast v0, Ljava/util/Date;

    .line 116
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(J)V

    .line 118
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 119
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 151
    return-void
.end method

.method public setValue(JZ)V
    .locals 5
    .parameter "value"
    .parameter "suppressEvent"

    .prologue
    .line 155
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 156
    .local v1, picker:Landroid/widget/DatePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 159
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 162
    return-void
.end method
