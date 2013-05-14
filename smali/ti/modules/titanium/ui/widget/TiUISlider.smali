.class public Lti/modules/titanium/ui/widget/TiUISlider;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUISlider"


# instance fields
.field private max:I

.field private maxRange:I

.field private min:I

.field private minRange:I

.field private offset:I

.field private pos:F

.field private scaleFactor:I

.field private thumbDrawable:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 46
    const-string v1, "TiUISlider"

    const-string v2, "Creating a seekBar"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iput-boolean v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 51
    iput v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 54
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISlider$1;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUISlider$1;-><init>(Lti/modules/titanium/ui/widget/TiUISlider;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 63
    .local v0, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUISlider;->setNativeView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method private scaledValue()F
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private updateControl()V
    .locals 8

    .prologue
    const v7, 0x7fffffff

    .line 116
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    neg-int v3, v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    .line 117
    const/16 v3, 0x64

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    .line 118
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 119
    .local v1, length:I
    if-lez v1, :cond_0

    div-int v3, v7, v1

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    if-ge v3, v4, :cond_0

    .line 120
    div-int v3, v7, v1

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    .line 121
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    .line 123
    :cond_0
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    mul-int/2addr v1, v3

    .line 124
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 125
    .local v2, seekBar:Landroid/widget/SeekBar;
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v3, v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 127
    .local v0, curPos:I
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 128
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    return-void

    .line 121
    .end local v0           #curPos:I
    .end local v2           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    goto :goto_0
.end method

.method private updateRange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 107
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 108
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "minRange"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 110
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 111
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 112
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "maxRange"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 113
    return-void
.end method

.method private updateThumb(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .parameter "seekBar"
    .parameter "d"

    .prologue
    const/4 v5, 0x0

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    const-string v4, "thumbImage"

    invoke-static {p2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, thumbImage:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 136
    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    .end local v0           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 139
    .restart local v0       #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, url:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 141
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 142
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    .line 143
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .end local v1           #thumb:Landroid/graphics/drawable/Drawable;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 145
    .restart local v1       #thumb:Landroid/graphics/drawable/Drawable;
    .restart local v3       #url:Ljava/lang/String;
    :cond_1
    const-string v4, "TiUISlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to locate thumb image for progress bar: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v1           #thumb:Landroid/graphics/drawable/Drawable;
    .end local v3           #url:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTrackingImages(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .parameter "seekBar"
    .parameter "d"

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 154
    const/4 v8, 0x0

    .line 155
    .local v8, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    const-string v9, "leftTrackImage"

    invoke-static {p2, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, leftImage:Ljava/lang/String;
    const-string v9, "rightTrackImage"

    invoke-static {p2, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, rightImage:Ljava/lang/String;
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 158
    if-nez v8, :cond_0

    .line 159
    new-instance v8, Lorg/appcelerator/titanium/util/TiFileHelper;

    .end local v8           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 161
    .restart local v8       #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v9, v10, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, leftUrl:Ljava/lang/String;
    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v9, v10, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, rightUrl:Ljava/lang/String;
    invoke-virtual {v8, v7, v12, v11}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 165
    .local v5, rightDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v4, v12, v11}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 166
    .local v2, leftDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 167
    const/4 v9, 0x2

    new-array v1, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v12

    new-instance v9, Landroid/graphics/drawable/ClipDrawable;

    const/4 v10, 0x3

    invoke-direct {v9, v2, v10, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v9, v1, v11

    .line 171
    .local v1, lda:[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 172
    .local v0, ld:Landroid/graphics/drawable/LayerDrawable;
    const/high16 v9, 0x102

    invoke-virtual {v0, v12, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 173
    const v9, 0x102000d

    invoke-virtual {v0, v11, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    .end local v0           #ld:Landroid/graphics/drawable/LayerDrawable;
    .end local v1           #lda:[Landroid/graphics/drawable/Drawable;
    .end local v2           #leftDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #leftUrl:Ljava/lang/String;
    .end local v5           #rightDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #rightUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 176
    .restart local v2       #leftDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #leftUrl:Ljava/lang/String;
    .restart local v5       #rightDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v7       #rightUrl:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 177
    const-string v9, "TiUISlider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to locate left image for progress bar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    if-nez v5, :cond_3

    .line 180
    const-string v9, "TiUISlider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to locate right image for progress bar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    const/4 v2, 0x0

    .line 184
    goto :goto_0

    .line 186
    .end local v2           #leftDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #leftUrl:Ljava/lang/String;
    .end local v5           #rightDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #rightUrl:Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    if-nez v6, :cond_5

    .line 187
    invoke-virtual {p1, v10}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 189
    :cond_5
    const-string v9, "TiUISlider"

    const-string v10, "Custom tracking images must both be set before they will be drawn."

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 11
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v10, 0x0

    .line 257
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    mul-float/2addr v8, v9

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 260
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    add-int v1, v8, v9

    .line 261
    .local v1, actualMinRange:I
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    add-int v0, v8, v9

    .line 263
    .local v0, actualMaxRange:I
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    int-to-float v9, v1

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 264
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    mul-int/2addr v8, v1

    invoke-virtual {p1, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 265
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v8, v8

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 271
    :cond_0
    :goto_0
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    move-object v6, v8

    .line 272
    .local v6, thumb:Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 273
    .local v3, offset:Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "x"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v8, "y"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v5}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 276
    .local v5, size:Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "width"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v8, "height"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    if-eqz v6, :cond_1

    .line 279
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 280
    .local v7, thumbBounds:Landroid/graphics/Rect;
    if-eqz v7, :cond_1

    .line 281
    const-string v8, "x"

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v8, "y"

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v8, "width"

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v8, "height"

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .end local v7           #thumbBounds:Landroid/graphics/Rect;
    :cond_1
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 288
    .local v2, data:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()F

    move-result v4

    .line 289
    .local v4, scaledValue:F
    const-string v8, "TiUISlider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Progress "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ScaleFactor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Calculated Position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ScaledValue "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Min "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Max"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MinRange"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MaxRange"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v8, "value"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v8, "thumbOffset"

    invoke-virtual {v2, v8, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v8, "thumbSize"

    invoke-virtual {v2, v8, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "value"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string v8, "change"

    invoke-virtual {p0, v8, v2}, Lti/modules/titanium/ui/widget/TiUISlider;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 299
    return-void

    .line 266
    .end local v2           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v3           #offset:Lorg/appcelerator/kroll/KrollDict;
    .end local v4           #scaledValue:F
    .end local v5           #size:Lorg/appcelerator/kroll/KrollDict;
    .end local v6           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    int-to-float v9, v0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 267
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    mul-int/2addr v8, v0

    invoke-virtual {p1, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 268
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v8, v8

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    goto/16 :goto_0

    .line 271
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 302
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 303
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "start"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lti/modules/titanium/ui/widget/TiUISlider;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z

    .line 305
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 308
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 309
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "stop"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lti/modules/titanium/ui/widget/TiUISlider;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z

    .line 311
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 72
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 74
    .local v0, seekBar:Landroid/widget/SeekBar;
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 77
    :cond_0
    const-string v1, "min"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "min"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 80
    :cond_1
    const-string v1, "max"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "max"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 83
    :cond_2
    const-string v1, "minRange"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    const-string v1, "minRange"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 88
    :goto_0
    const-string v1, "maxRange"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    const-string v1, "maxRange"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 94
    :goto_1
    const-string v1, "thumbImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-direct {p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUISlider;->updateThumb(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V

    .line 98
    :cond_3
    const-string v1, "leftTrackImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "rightTrackImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    invoke-direct {p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUISlider;->updateTrackingImages(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V

    .line 101
    :cond_4
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 102
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 103
    return-void

    .line 86
    :cond_5
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    goto :goto_0

    .line 91
    :cond_6
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    goto :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v5, 0x1

    .line 196
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "TiUISlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 200
    .local v1, seekBar:Landroid/widget/SeekBar;
    const-string v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 202
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 203
    .local v0, curPos:I
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 204
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 254
    .end local v0           #curPos:I
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v2, "min"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 207
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 208
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 209
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 210
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 212
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 213
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 214
    .restart local v0       #curPos:I
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 215
    .end local v0           #curPos:I
    :cond_3
    const-string v2, "minRange"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 217
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 218
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 219
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 221
    :cond_4
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 222
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 223
    .restart local v0       #curPos:I
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 224
    .end local v0           #curPos:I
    :cond_5
    const-string v2, "max"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 225
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 226
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 227
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 228
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 229
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 231
    :cond_6
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 232
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 233
    .restart local v0       #curPos:I
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto/16 :goto_0

    .line 234
    .end local v0           #curPos:I
    :cond_7
    const-string v2, "maxRange"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 235
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 236
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 237
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 238
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 240
    :cond_8
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 241
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 242
    .restart local v0       #curPos:I
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto/16 :goto_0

    .line 243
    .end local v0           #curPos:I
    :cond_9
    const-string v2, "thumbImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 246
    const-string v2, "TiUISlider"

    const-string v3, "Dynamically changing thumbImage is not yet supported. Native control doesn\'t draw"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    :cond_a
    const-string v2, "leftTrackImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "rightTrackImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 250
    :cond_b
    const-string v2, "TiUISlider"

    const-string v3, "Dynamically changing leftTrackImage or rightTrackImage is not yet supported. Native control doesn\'t draw"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method
