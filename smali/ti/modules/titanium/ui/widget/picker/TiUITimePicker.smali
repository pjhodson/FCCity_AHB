.class public Lti/modules/titanium/ui/widget/picker/TiUITimePicker;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITimePicker.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUITimePicker"


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
    .line 35
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 4
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 40
    const-string v1, "TiUITimePicker"

    const-string v2, "Creating a time picker"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker$1;

    invoke-direct {v0, p0, p2, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker$1;-><init>(Lti/modules/titanium/ui/widget/picker/TiUITimePicker;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 51
    .local v0, picker:Landroid/widget/TimePicker;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 53
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->setNativeView(Landroid/view/View;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 141
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 142
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    if-nez v2, :cond_0

    .line 143
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 144
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "change"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 148
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "d"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 58
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 60
    const/4 v4, 0x0

    .line 61
    .local v4, valueExistsInProxy:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->getNativeView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    .line 64
    .local v3, picker:Landroid/widget/TimePicker;
    const-string v5, "value"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    const-string v5, "value"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 66
    const/4 v4, 0x1

    .line 68
    :cond_0
    const-string v5, "minDate"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    const-string v5, "minDate"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    iput-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minDate:Ljava/util/Date;

    .line 71
    :cond_1
    const-string v5, "maxDate"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    const-string v5, "maxDate"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    iput-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->maxDate:Ljava/util/Date;

    .line 74
    :cond_2
    const-string v5, "minuteInterval"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    const-string v5, "minuteInterval"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 76
    .local v2, mi:I
    if-lt v2, v7, :cond_3

    const/16 v5, 0x1e

    if-gt v2, v5, :cond_3

    rem-int/lit8 v5, v2, 0x3c

    if-nez v5, :cond_3

    .line 77
    iput v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minuteInterval:I

    .line 82
    .end local v2           #mi:I
    :cond_3
    const/4 v1, 0x0

    .line 83
    .local v1, is24HourFormat:Z
    const-string v5, "format24"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    const-string v5, "format24"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 86
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6, v7}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->setValue(JZ)V

    .line 90
    if-nez v4, :cond_5

    .line 91
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_5
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minDate:Ljava/util/Date;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->maxDate:Ljava/util/Date;

    if-eqz v5, :cond_6

    .line 96
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->maxDate:Ljava/util/Date;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-gtz v5, :cond_6

    .line 97
    const-string v5, "TiUITimePicker"

    const-string v6, "maxDate is less or equal minDate, ignoring both settings."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object v8, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minDate:Ljava/util/Date;

    .line 99
    iput-object v8, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->maxDate:Ljava/util/Date;

    .line 102
    :cond_6
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 108
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p3

    .line 109
    check-cast v0, Ljava/util/Date;

    .line 110
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->setValue(J)V

    .line 114
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 115
    return-void

    .line 111
    :cond_1
    const-string v1, "format24"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->setValue(JZ)V

    .line 120
    return-void
.end method

.method public setValue(JZ)V
    .locals 3
    .parameter "value"
    .parameter "suppressEvent"

    .prologue
    .line 124
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    .line 125
    .local v1, picker:Landroid/widget/TimePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    .line 130
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 131
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    .line 132
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 133
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    .line 134
    return-void
.end method
