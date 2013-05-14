.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiAnimationBuilder"


# instance fields
.field protected anchorX:F

.field protected anchorY:F

.field protected animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

.field protected applyOpacity:Z

.field protected autoreverse:Ljava/lang/Boolean;

.field protected backgroundColor:Ljava/lang/Integer;

.field protected bottom:Ljava/lang/String;

.field protected callback:Lorg/appcelerator/kroll/KrollFunction;

.field protected centerX:Ljava/lang/String;

.field protected centerY:Ljava/lang/String;

.field protected delay:Ljava/lang/Double;

.field protected duration:Ljava/lang/Double;

.field protected height:Ljava/lang/String;

.field protected left:Ljava/lang/String;

.field protected options:Ljava/util/HashMap;

.field protected relayoutChild:Z

.field protected repeat:Ljava/lang/Double;

.field protected right:Ljava/lang/String;

.field protected tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected toOpacity:Ljava/lang/Double;

.field protected top:Ljava/lang/String;

.field protected view:Landroid/view/View;

.field protected viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 52
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    .line 53
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    .line 54
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    .line 55
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 56
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    .line 57
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    .line 64
    iput-boolean v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    iput-boolean v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 72
    iput v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    .line 73
    iput v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    .line 74
    return-void
.end method

.method private addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animationSet"
    .parameter "animation"

    .prologue
    .line 202
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 206
    .local v0, repeatCount:I
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 210
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 213
    return-void

    .line 202
    .end local v0           #repeatCount:I
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public applyAnimation(Lorg/appcelerator/titanium/view/TiAnimation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 170
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    .line 171
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiAnimation;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Ljava/util/HashMap;)V

    .line 172
    return-void
.end method

.method public applyOptions(Ljava/util/HashMap;)V
    .locals 10
    .parameter "options"

    .prologue
    const-wide/high16 v8, 0x3ff0

    .line 79
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v4, "anchorPoint"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    const-string v4, "anchorPoint"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, anchorPoint:Ljava/lang/Object;
    instance-of v4, v0, Ljava/util/HashMap;

    if-eqz v4, :cond_10

    move-object v3, v0

    .line 86
    check-cast v3, Ljava/util/HashMap;

    .line 87
    .local v3, point:Ljava/util/HashMap;
    const-string v4, "x"

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    .line 88
    const-string v4, "y"

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    .line 94
    .end local v0           #anchorPoint:Ljava/lang/Object;
    .end local v3           #point:Ljava/util/HashMap;
    :cond_1
    :goto_1
    const-string v4, "transform"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    const-string v4, "transform"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 97
    :cond_2
    const-string v4, "delay"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    const-string v4, "delay"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    .line 101
    :cond_3
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    const-string v4, "duration"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    .line 105
    :cond_4
    const-string v4, "opacity"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    const-string v4, "opacity"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    .line 109
    :cond_5
    const-string v4, "repeat"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 110
    const-string v4, "repeat"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 112
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_6

    .line 115
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 121
    :cond_6
    :goto_2
    const-string v4, "autoreverse"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 122
    const-string v4, "autoreverse"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    .line 125
    :cond_7
    const-string v4, "top"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 126
    const-string v4, "top"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    .line 129
    :cond_8
    const-string v4, "bottom"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 130
    const-string v4, "bottom"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    .line 133
    :cond_9
    const-string v4, "left"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 134
    const-string v4, "left"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    .line 137
    :cond_a
    const-string v4, "right"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 138
    const-string v4, "right"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    .line 141
    :cond_b
    const-string v4, "center"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 142
    const-string v4, "center"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 143
    .local v2, centerPoint:Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/HashMap;

    if-eqz v4, :cond_12

    move-object v1, v2

    .line 144
    check-cast v1, Ljava/util/HashMap;

    .line 145
    .local v1, center:Ljava/util/HashMap;
    const-string v4, "x"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    .line 146
    const-string v4, "y"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    .line 153
    .end local v1           #center:Ljava/util/HashMap;
    .end local v2           #centerPoint:Ljava/lang/Object;
    :cond_c
    :goto_3
    const-string v4, "width"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 154
    const-string v4, "width"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    .line 157
    :cond_d
    const-string v4, "height"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 158
    const-string v4, "height"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    .line 161
    :cond_e
    const-string v4, "backgroundColor"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 162
    const-string v4, "backgroundColor"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    .line 165
    :cond_f
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 90
    .restart local v0       #anchorPoint:Ljava/lang/Object;
    :cond_10
    const-string v4, "TiAnimationBuilder"

    const-string v5, "Invalid argument type for anchorPoint property. Ignoring"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 118
    .end local v0           #anchorPoint:Ljava/lang/Object;
    :cond_11
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    goto/16 :goto_2

    .line 149
    .restart local v2       #centerPoint:Ljava/lang/Object;
    :cond_12
    const-string v4, "TiAnimationBuilder"

    const-string v5, "Invalid argument type for center property. Ignoring"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public createMatrixAnimation(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    .locals 3
    .parameter "matrix"

    .prologue
    .line 217
    new-instance v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    iget v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    invoke-direct {v0, p1, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V

    return-object v0
.end method

.method public render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)Landroid/view/animation/AnimationSet;
    .locals 11
    .parameter "viewProxy"
    .parameter "view"

    .prologue
    .line 181
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 182
    .local v10, parent:Landroid/view/ViewParent;
    const/4 v7, 0x0

    .line 183
    .local v7, parentWidth:I
    const/4 v8, 0x0

    .line 185
    .local v8, parentHeight:I
    instance-of v0, v10, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v9, v10

    .line 186
    check-cast v9, Landroid/view/ViewGroup;

    .line 187
    .local v9, group:Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    .line 188
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    .line 191
    .end local v9           #group:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;IIIIII)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;IIIIII)Landroid/view/animation/AnimationSet;
    .locals 41
    .parameter "viewProxy"
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 223
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    .line 224
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 226
    new-instance v31, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 227
    .local v31, as:Landroid/view/animation/AnimationSet;
    new-instance v30, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    .line 228
    .local v30, animationListener:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v7, :cond_1

    .line 229
    :cond_0
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v38

    .line 233
    .local v38, tiView:Lorg/appcelerator/titanium/view/TiUIView;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    if-eqz v7, :cond_3

    .line 242
    if-nez v38, :cond_18

    const/16 v32, 0x1

    .line 245
    .local v32, currentAnimatedAlpha:F
    :goto_0
    const/4 v7, 0x1

    cmpl-float v7, v32, v7

    if-eqz v7, :cond_19

    .line 247
    move/from16 v34, v32

    .line 256
    .local v34, fromOpacity:F
    :goto_1
    new-instance v19, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-direct {v0, v1, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 260
    .local v19, animation:Landroid/view/animation/Animation;
    if-eqz v38, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/view/TiUIView;->setAnimatedAlpha(F)V

    .line 264
    :cond_2
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 266
    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    const-string v7, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    if-eqz v7, :cond_3

    if-eqz v38, :cond_3

    .line 282
    const/high16 v7, 0x3f80

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 286
    .end local v19           #animation:Landroid/view/animation/Animation;
    .end local v32           #currentAnimatedAlpha:F
    .end local v34           #fromOpacity:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    if-eqz v7, :cond_4

    .line 287
    const/16 v33, 0x0

    .line 289
    .local v33, fromBackgroundColor:I
    const-string v7, "backgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 290
    const-string v7, "backgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v33

    .line 297
    :goto_2
    new-instance v28, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    move/from16 v2, v33

    invoke-direct {v0, v1, v2, v7}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;-><init>(Landroid/view/View;II)V

    .line 298
    .local v28, a:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 301
    .end local v28           #a:Landroid/view/animation/Animation;
    .end local v33           #fromBackgroundColor:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v7, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->hasScaleOperation()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v38, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v0, v38

    invoke-virtual {v8, v0, v7}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->verifyScaleValues(Lorg/appcelerator/titanium/view/TiUIView;Z)Landroid/util/Pair;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/view/TiUIView;->setAnimatedScaleValues(Landroid/util/Pair;)V

    .line 309
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->hasRotateOperation()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v38, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v38

    invoke-virtual {v8, v0, v7}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->verifyRotationValues(Lorg/appcelerator/titanium/view/TiUIView;Z)F

    move-result v7

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/view/TiUIView;->setAnimatedRotationDegrees(F)V

    .line 314
    :cond_6
    new-instance v29, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    move-object/from16 v0, p0

    iget v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    move-object/from16 v0, v29

    invoke-direct {v0, v7, v8, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V

    .line 316
    .local v29, anim:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 320
    .end local v29           #anim:Landroid/view/animation/Animation;
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 321
    :cond_8
    const/4 v12, 0x0

    .local v12, optionTop:Lorg/appcelerator/titanium/TiDimension;
    const/4 v14, 0x0

    .line 322
    .local v14, optionBottom:Lorg/appcelerator/titanium/TiDimension;
    const/4 v4, 0x0

    .local v4, optionLeft:Lorg/appcelerator/titanium/TiDimension;
    const/4 v6, 0x0

    .line 323
    .local v6, optionRight:Lorg/appcelerator/titanium/TiDimension;
    const/4 v5, 0x0

    .local v5, optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    const/4 v13, 0x0

    .line 328
    .local v13, optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    if-eqz v7, :cond_1e

    .line 329
    new-instance v12, Lorg/appcelerator/titanium/TiDimension;

    .end local v12           #optionTop:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-direct {v12, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 336
    .restart local v12       #optionTop:Lorg/appcelerator/titanium/TiDimension;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 337
    new-instance v14, Lorg/appcelerator/titanium/TiDimension;

    .end local v14           #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-direct {v14, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 340
    .restart local v14       #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    if-eqz v7, :cond_1f

    .line 341
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    .end local v4           #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 348
    .restart local v4       #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 349
    new-instance v6, Lorg/appcelerator/titanium/TiDimension;

    .end local v6           #optionRight:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 352
    .restart local v6       #optionRight:Lorg/appcelerator/titanium/TiDimension;
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 353
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    .end local v5           #optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 356
    .restart local v5       #optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 357
    new-instance v13, Lorg/appcelerator/titanium/TiDimension;

    .end local v13           #optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-direct {v13, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 360
    .restart local v13       #optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    :cond_e
    const/4 v7, 0x2

    new-array v10, v7, [I

    .line 361
    .local v10, horizontal:[I
    const/4 v7, 0x2

    new-array v0, v7, [I

    move-object/from16 v18, v0

    .line 362
    .local v18, vertical:[I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v37

    .line 363
    .local v37, parent:Landroid/view/ViewParent;
    const/4 v3, 0x0

    .line 365
    .local v3, parentView:Landroid/view/View;
    move-object/from16 v0, v37

    instance-of v7, v0, Landroid/view/View;

    if-eqz v7, :cond_f

    move-object/from16 v3, v37

    .line 366
    check-cast v3, Landroid/view/View;

    .line 369
    :cond_f
    const/4 v8, 0x0

    move/from16 v7, p5

    move/from16 v9, p7

    invoke-static/range {v3 .. v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 371
    const/16 v16, 0x0

    move-object v11, v3

    move/from16 v15, p6

    move/from16 v17, p8

    invoke-static/range {v11 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 374
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v7, 0x0

    aget v7, v10, v7

    sub-int v7, v7, p3

    int-to-float v0, v7

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v7, 0x0

    aget v7, v18, v7

    sub-int v7, v7, p4

    int-to-float v0, v7

    move/from16 v27, v0

    invoke-direct/range {v19 .. v27}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 377
    .restart local v19       #animation:Landroid/view/animation/Animation;
    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_20

    :cond_10
    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 387
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 388
    const-string v7, "TiAnimationBuilder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "animate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " relative to self: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v10, v9

    sub-int v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v18, v9

    sub-int v9, v9, p4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v3           #parentView:Landroid/view/View;
    .end local v4           #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    .end local v5           #optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    .end local v6           #optionRight:Lorg/appcelerator/titanium/TiDimension;
    .end local v10           #horizontal:[I
    .end local v12           #optionTop:Lorg/appcelerator/titanium/TiDimension;
    .end local v13           #optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    .end local v14           #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    .end local v18           #vertical:[I
    .end local v19           #animation:Landroid/view/animation/Animation;
    .end local v37           #parent:Landroid/view/ViewParent;
    :cond_11
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-nez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    if-nez v7, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    if-eqz v7, :cond_15

    .line 397
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    if-eqz v7, :cond_21

    .line 398
    new-instance v36, Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    const/4 v8, 0x6

    move-object/from16 v0, v36

    invoke-direct {v0, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 404
    .local v36, optionWidth:Lorg/appcelerator/titanium/TiDimension;
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    if-eqz v7, :cond_22

    .line 405
    new-instance v35, Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    const/4 v8, 0x7

    move-object/from16 v0, v35

    invoke-direct {v0, v7, v8}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 411
    .local v35, optionHeight:Lorg/appcelerator/titanium/TiDimension;
    :goto_9
    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v40

    .line 412
    .local v40, toWidth:I
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v39

    .line 414
    .local v39, toHeight:I
    new-instance v20, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v21, p0

    move-object/from16 v22, p2

    invoke-direct/range {v20 .. v26}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;Landroid/view/View;FFFF)V

    .line 416
    .local v20, sizeAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v7, :cond_13

    .line 417
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setDuration(J)V

    .line 420
    :cond_13
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 421
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v7, :cond_14

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_23

    :cond_14
    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 434
    .end local v20           #sizeAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    .end local v35           #optionHeight:Lorg/appcelerator/titanium/TiDimension;
    .end local v36           #optionWidth:Lorg/appcelerator/titanium/TiDimension;
    .end local v39           #toHeight:I
    .end local v40           #toWidth:I
    :cond_15
    const/4 v7, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v7, :cond_16

    .line 437
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 440
    :cond_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v7, :cond_24

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 441
    const/4 v7, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 448
    :goto_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    if-eqz v7, :cond_17

    .line 449
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 452
    :cond_17
    return-object v31

    .line 242
    :cond_18
    invoke-virtual/range {v38 .. v38}, Lorg/appcelerator/titanium/view/TiUIView;->getAnimatedAlpha()F

    move-result v32

    goto/16 :goto_0

    .line 249
    .restart local v32       #currentAnimatedAlpha:F
    :cond_19
    const-string v7, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 250
    const-string v7, "opacity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v34

    .restart local v34       #fromOpacity:F
    goto/16 :goto_1

    .line 253
    .end local v34           #fromOpacity:F
    :cond_1a
    const/high16 v34, 0x3f80

    .restart local v34       #fromOpacity:F
    goto/16 :goto_1

    .line 293
    .end local v32           #currentAnimatedAlpha:F
    .end local v34           #fromOpacity:F
    .restart local v33       #fromBackgroundColor:I
    :cond_1b
    const-string v7, "TiAnimationBuilder"

    const-string v8, "Cannot animate view without a backgroundColor. View doesn\'t have that property. Using #00000000"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v33

    goto/16 :goto_2

    .line 305
    .end local v33           #fromBackgroundColor:I
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 310
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 330
    .restart local v4       #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    .restart local v5       #optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    .restart local v6       #optionRight:Lorg/appcelerator/titanium/TiDimension;
    .restart local v12       #optionTop:Lorg/appcelerator/titanium/TiDimension;
    .restart local v13       #optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    .restart local v14       #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-nez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 332
    new-instance v12, Lorg/appcelerator/titanium/TiDimension;

    .end local v12           #optionTop:Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x3

    invoke-direct {v12, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 333
    .restart local v12       #optionTop:Lorg/appcelerator/titanium/TiDimension;
    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_5

    .line 342
    :cond_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-nez v7, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-nez v7, :cond_b

    .line 344
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    .end local v4           #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x0

    invoke-direct {v4, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 345
    .restart local v4       #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_6

    .line 385
    .restart local v3       #parentView:Landroid/view/View;
    .restart local v10       #horizontal:[I
    .restart local v18       #vertical:[I
    .restart local v19       #animation:Landroid/view/animation/Animation;
    .restart local v37       #parent:Landroid/view/ViewParent;
    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 400
    .end local v3           #parentView:Landroid/view/View;
    .end local v4           #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    .end local v5           #optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    .end local v6           #optionRight:Lorg/appcelerator/titanium/TiDimension;
    .end local v10           #horizontal:[I
    .end local v12           #optionTop:Lorg/appcelerator/titanium/TiDimension;
    .end local v13           #optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    .end local v14           #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    .end local v18           #vertical:[I
    .end local v19           #animation:Landroid/view/animation/Animation;
    .end local v37           #parent:Landroid/view/ViewParent;
    :cond_21
    new-instance v36, Lorg/appcelerator/titanium/TiDimension;

    move/from16 v0, p5

    int-to-double v7, v0

    const/4 v9, 0x6

    move-object/from16 v0, v36

    invoke-direct {v0, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 401
    .restart local v36       #optionWidth:Lorg/appcelerator/titanium/TiDimension;
    const/4 v7, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_8

    .line 407
    :cond_22
    new-instance v35, Lorg/appcelerator/titanium/TiDimension;

    move/from16 v0, p5

    int-to-double v7, v0

    const/4 v9, 0x7

    move-object/from16 v0, v35

    invoke-direct {v0, v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 408
    .restart local v35       #optionHeight:Lorg/appcelerator/titanium/TiDimension;
    const/4 v7, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_9

    .line 429
    .restart local v20       #sizeAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    .restart local v39       #toHeight:I
    .restart local v40       #toWidth:I
    :cond_23
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 443
    .end local v20           #sizeAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    .end local v35           #optionHeight:Lorg/appcelerator/titanium/TiDimension;
    .end local v36           #optionWidth:Lorg/appcelerator/titanium/TiDimension;
    .end local v39           #toHeight:I
    .end local v40           #toWidth:I
    :cond_24
    const/4 v7, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    goto/16 :goto_b
.end method

.method public setCallback(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 176
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    .line 177
    return-void
.end method
