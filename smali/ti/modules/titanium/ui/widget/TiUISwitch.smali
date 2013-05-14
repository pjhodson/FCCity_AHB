.class public Lti/modules/titanium/ui/widget/TiUISwitch;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUISwitch"


# instance fields
.field private oldValue:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->oldValue:Z

    .line 34
    const-string v0, "TiUISwitch"

    const-string v1, "Creating a switch"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "style"

    const/4 v1, 0x0

    const-string v2, "style"

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lti/modules/titanium/ui/widget/TiUISwitch;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUISwitch;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUISwitch;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "btn"
    .parameter "value"

    .prologue
    .line 125
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 127
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->oldValue:Z

    if-eq v1, p2, :cond_0

    .line 130
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "change"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 132
    iput-boolean p2, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->oldValue:Z

    .line 134
    :cond_0
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 44
    const-string v1, "style"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "style"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUISwitch;->setStyle(I)V

    .line 48
    :cond_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-string v1, "value"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->oldValue:Z

    .line 52
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISwitch;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, nativeView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 54
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0           #nativeView:Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUISwitch;->updateButton(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V

    .line 56
    :cond_2
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "TiUISwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISwitch;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 98
    .local v0, cb:Landroid/widget/CompoundButton;
    const-string v1, "style"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 99
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUISwitch;->setStyle(I)V

    .line 121
    .end local v0           #cb:Landroid/widget/CompoundButton;
    .end local p3
    :goto_0
    return-void

    .line 100
    .restart local v0       #cb:Landroid/widget/CompoundButton;
    .restart local p3
    :cond_1
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 101
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    .restart local p3
    :cond_2
    const-string v1, "titleOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3

    .line 103
    check-cast v0, Landroid/widget/ToggleButton;

    .end local v0           #cb:Landroid/widget/CompoundButton;
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    .restart local v0       #cb:Landroid/widget/CompoundButton;
    .restart local p3
    :cond_3
    const-string v1, "titleOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4

    .line 105
    check-cast v0, Landroid/widget/ToggleButton;

    .end local v0           #cb:Landroid/widget/CompoundButton;
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    .restart local v0       #cb:Landroid/widget/CompoundButton;
    .restart local p3
    :cond_4
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 107
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 108
    :cond_5
    const-string v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 109
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setTextColor(I)V

    goto :goto_0

    .line 110
    :cond_6
    const-string v1, "font"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    check-cast p3, Lorg/appcelerator/kroll/KrollDict;

    .end local p3
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    goto :goto_0

    .line 112
    .restart local p3
    :cond_7
    const-string v1, "textAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->requestLayout()V

    goto :goto_0

    .line 115
    :cond_8
    const-string v1, "verticalAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 116
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->requestLayout()V

    goto/16 :goto_0

    .line 119
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method protected setStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 138
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISwitch;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    .line 139
    .local v1, currentButton:Landroid/widget/CompoundButton;
    const/4 v0, 0x0

    .line 141
    .local v0, button:Landroid/widget/CompoundButton;
    packed-switch p1, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-nez v2, :cond_1

    .line 144
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISwitch$1;

    .end local v0           #button:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lti/modules/titanium/ui/widget/TiUISwitch$1;-><init>(Lti/modules/titanium/ui/widget/TiUISwitch;Landroid/content/Context;)V

    .line 174
    .restart local v0       #button:Landroid/widget/CompoundButton;
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->setNativeView(Landroid/view/View;)V

    .line 176
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lti/modules/titanium/ui/widget/TiUISwitch;->updateButton(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V

    .line 177
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 157
    :pswitch_1
    instance-of v2, v1, Landroid/widget/ToggleButton;

    if-nez v2, :cond_1

    .line 158
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISwitch$2;

    .end local v0           #button:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lti/modules/titanium/ui/widget/TiUISwitch$2;-><init>(Lti/modules/titanium/ui/widget/TiUISwitch;Landroid/content/Context;)V

    .restart local v0       #button:Landroid/widget/CompoundButton;
    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateButton(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "cb"
    .parameter "d"

    .prologue
    const/4 v4, 0x0

    .line 59
    const-string v2, "title"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "title"

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    const-string v2, "titleOff"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 63
    check-cast v2, Landroid/widget/ToggleButton;

    const-string v3, "titleOff"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 65
    :cond_1
    const-string v2, "titleOn"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p1, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 66
    check-cast v2, Landroid/widget/ToggleButton;

    const-string v3, "titleOn"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 68
    :cond_2
    const-string v2, "value"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    const-string v2, "value"

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 72
    :cond_3
    const-string v2, "color"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    const-string v2, "color"

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 75
    :cond_4
    const-string v2, "font"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    const-string v2, "font"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 78
    :cond_5
    const-string v2, "textAlign"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 79
    const-string v2, "textAlign"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, textAlign:Ljava/lang/String;
    invoke-static {p1, v0, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v0           #textAlign:Ljava/lang/String;
    :cond_6
    const-string v2, "verticalAlign"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 83
    const-string v2, "verticalAlign"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, verticalAlign:Ljava/lang/String;
    invoke-static {p1, v4, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v1           #verticalAlign:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    .line 87
    return-void
.end method
