.class public abstract Lorg/appcelerator/titanium/view/TiUIView;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final HONEYCOMB_OR_GREATER:Z = false

.field private static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final SCALE_THRESHOLD:F = 6.0f

.field public static final SOFT_KEYBOARD_DEFAULT_ON_FOCUS:I = 0x0

.field public static final SOFT_KEYBOARD_HIDE_ON_FOCUS:I = 0x1

.field public static final SOFT_KEYBOARD_SHOW_ON_FOCUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TiUIView"

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static motionEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected additionalEventData:Lorg/appcelerator/kroll/KrollDict;

.field protected animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field private animatedAlpha:F

.field private animatedRotationDegrees:F

.field private animatedScaleValues:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

.field private borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation
.end field

.field private didScale:Z

.field protected lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

.field protected layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

.field private mSetLayerTypeMethod:Ljava/lang/reflect/Method;

.field protected nativeView:Landroid/view/View;

.field protected parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private touchView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private visibility:I

.field private zIndexChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    .line 1034
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    .line 1037
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    const-string v3, "touchstart"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1038
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    const-string v2, "touchend"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1039
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "touchmove"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1040
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "touchcancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1041
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    .line 104
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedScaleValues:Landroid/util/Pair;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedRotationDegrees:F

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedAlpha:F

    .line 110
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    .line 114
    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    .line 116
    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    .line 118
    iput-boolean v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->zIndexChanged:Z

    .line 121
    iput-boolean v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->didScale:Z

    .line 124
    iput v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    .line 134
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 139
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/view/TiUIView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->didScale:Z

    return v0
.end method

.method static synthetic access$002(Lorg/appcelerator/titanium/view/TiUIView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->didScale:Z

    return p1
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    return-object v0
.end method

.method private applyAccessibilityHidden()V
    .locals 2

    .prologue
    .line 1658
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v0, :cond_1

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1662
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "accessibilityHidden"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityHidden(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyAccessibilityHidden(Ljava/lang/Object;)V
    .locals 2
    .parameter "hiddenPropertyValue"

    .prologue
    .line 1667
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1678
    :goto_0
    return-void

    .line 1671
    :cond_0
    const/4 v0, 0x0

    .line 1673
    .local v0, importanceMode:I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1674
    const/4 v0, 0x2

    .line 1677
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private applyAccessibilityProperties()V
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1650
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyContentDescription()V

    .line 1651
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityHidden()V

    .line 1654
    :cond_0
    return-void
.end method

.method private applyContentDescription()V
    .locals 2

    .prologue
    .line 1584
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->composeContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, contentDescription:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1589
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private applyCustomBackground()V
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 746
    return-void
.end method

.method private applyCustomBackground(Z)V
    .locals 3
    .parameter "reuseCurrentDrawable"

    .prologue
    const/4 v2, 0x0

    .line 750
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v1, :cond_0

    .line 752
    new-instance v1, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 754
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 755
    .local v0, currentDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 756
    if-eqz p1, :cond_2

    .line 757
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    .end local v0           #currentDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    :cond_1
    return-void

    .line 760
    .restart local v0       #currentDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 762
    instance-of v1, v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 763
    check-cast v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .end local v0           #currentDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    goto :goto_0
.end method

.method private disableHWAcceleration()V
    .locals 7

    .prologue
    .line 1488
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v2, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    const-string v2, "TiUIView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling hardware acceleration for instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 1495
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1496
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1506
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 1510
    :try_start_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 1511
    :catch_0
    move-exception v1

    .line 1512
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1497
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1498
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "TiUIView"

    const-string v3, "SecurityException trying to get View.setLayerType to disable hardware acceleration."

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v1, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1

    .line 1500
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 1501
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "TiUIView"

    const-string v3, "NoSuchMethodException trying to get View.setLayerType to disable hardware acceleration."

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v1, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1

    .line 1513
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 1514
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1515
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1516
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private doSetClickable(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1440
    if-nez p1, :cond_0

    .line 1444
    :goto_0
    return-void

    .line 1443
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private doSetClickable(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "clickable"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1414
    if-nez p1, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    if-nez p2, :cond_2

    .line 1418
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1419
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1420
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1421
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0

    .line 1422
    :cond_2
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    .line 1425
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOnClickListener(Landroid/view/View;)V

    .line 1426
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOnLongClickListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private doSetClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 1432
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getTouchView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    .line 1433
    return-void
.end method

.method private getTouchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 1409
    :goto_0
    return-object v0

    .line 1405
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 1409
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 16
    .parameter "d"

    .prologue
    .line 895
    const-string v2, "backgroundImage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, bg:Ljava/lang/String;
    const-string v2, "backgroundSelectedImage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 897
    .local v4, bgSelected:Ljava/lang/String;
    const-string v2, "backgroundFocusedImage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 898
    .local v8, bgFocused:Ljava/lang/String;
    const-string v2, "backgroundDisabledImage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 900
    .local v6, bgDisabled:Ljava/lang/String;
    const-string v2, "backgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 901
    .local v3, bgColor:Ljava/lang/String;
    const-string v2, "backgroundSelectedColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 902
    .local v5, bgSelectedColor:Ljava/lang/String;
    const-string v2, "backgroundFocusedColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 903
    .local v9, bgFocusedColor:Ljava/lang/String;
    const-string v2, "backgroundDisabledColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 905
    .local v7, bgDisabledColor:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 906
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    :cond_0
    if-eqz v4, :cond_1

    .line 909
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 911
    :cond_1
    if-eqz v8, :cond_2

    .line 912
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 914
    :cond_2
    if-eqz v6, :cond_3

    .line 915
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 918
    :cond_3
    const/4 v10, 0x0

    .line 919
    .local v10, gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    const-string v2, "backgroundGradient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v14

    .line 920
    .local v14, gradientProperties:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v14, :cond_4

    .line 922
    :try_start_0
    new-instance v13, Lorg/appcelerator/titanium/view/TiGradientDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-direct {v13, v2, v14}, Lorg/appcelerator/titanium/view/TiGradientDrawable;-><init>(Landroid/view/View;Lorg/appcelerator/kroll/KrollDict;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v10           #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .local v13, gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    :try_start_1
    invoke-virtual {v13}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->getGradientType()Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    move-result-object v2

    sget-object v15, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->RADIAL_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    if-ne v2, v15, :cond_8

    .line 925
    const-string v2, "TiUIView"

    const-string v15, "Android does not support radial gradients."

    invoke-static {v2, v15}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 926
    const/4 v10, 0x0

    .line 934
    .end local v13           #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .restart local v10       #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-nez v9, :cond_5

    if-nez v7, :cond_5

    if-eqz v10, :cond_7

    .line 937
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v2, :cond_6

    .line 938
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 941
    :cond_6
    const-string v2, "backgroundRepeat"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static/range {v1 .. v10}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    .line 953
    .local v11, bgDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v2, v11}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 955
    .end local v11           #bgDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void

    .line 929
    :catch_0
    move-exception v12

    .line 930
    .local v12, e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 929
    .end local v10           #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    .restart local v13       #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    :catch_1
    move-exception v12

    move-object v10, v13

    .end local v13           #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .restart local v10       #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    goto :goto_1

    .end local v10           #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .restart local v13       #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    :cond_8
    move-object v10, v13

    .end local v13           #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .restart local v10       #gradientDrawable:Lorg/appcelerator/titanium/view/TiGradientDrawable;
    goto :goto_0
.end method

.method private handleBorderProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1020
    const-string v1, "borderColor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1021
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setColor(I)V

    .line 1031
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->postInvalidate()V

    .line 1032
    return-void

    .line 1022
    :cond_1
    const-string v1, "borderRadius"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1023
    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    .line 1024
    .local v0, radius:F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    sget-boolean v1, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v1, :cond_2

    .line 1025
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->disableHWAcceleration()V

    .line 1027
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setRadius(F)V

    goto :goto_0

    .line 1028
    .end local v0           #radius:F
    :cond_3
    const-string v1, "borderWidth"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setBorderWidth(F)V

    goto :goto_0
.end method

.method private hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 364
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 371
    const-string v0, "backgroundSelectedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasGradient(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 359
    const-string v0, "backgroundGradient"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasImage(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 346
    const-string v0, "backgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundSelectedImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundDisabledImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRepeat(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 354
    const-string v0, "backgroundRepeat"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V
    .locals 9
    .parameter "d"
    .parameter "bgColor"

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 959
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 961
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v6, :cond_8

    .line 963
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v6, :cond_3

    .line 964
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 965
    .local v0, currentActivity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 966
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 968
    :cond_0
    new-instance v6, Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-direct {v6, v0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    .line 971
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 972
    .local v2, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput v7, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->height:I

    .line 973
    iput v7, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->width:I

    .line 976
    const/4 v4, 0x0

    .line 977
    .local v4, savedParent:Landroid/view/ViewGroup;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 978
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 979
    .local v1, nativeParent:Landroid/view/ViewParent;
    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v4, v1

    .line 980
    check-cast v4, Landroid/view/ViewGroup;

    .line 981
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 984
    .end local v1           #nativeParent:Landroid/view/ViewParent;
    :cond_1
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v6, v7, v2}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    if-eqz v4, :cond_2

    .line 986
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    :cond_2
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    iget v7, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setVisibility(I)V

    .line 991
    .end local v0           #currentActivity:Landroid/app/Activity;
    .end local v2           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v4           #savedParent:Landroid/view/ViewGroup;
    :cond_3
    const-string v6, "borderRadius"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 992
    const-string v6, "borderRadius"

    invoke-static {p1, v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v3

    .line 993
    .local v3, radius:F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_4

    sget-boolean v6, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v6, :cond_4

    .line 994
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->disableHWAcceleration()V

    .line 996
    :cond_4
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v6, v3}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setRadius(F)V

    .line 998
    .end local v3           #radius:F
    :cond_5
    const-string v6, "borderColor"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "borderWidth"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 999
    :cond_6
    const-string v6, "borderColor"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1000
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    const-string v7, "borderColor"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setColor(I)V

    .line 1006
    :cond_7
    :goto_0
    const-string v6, "borderWidth"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1007
    const-string v6, "borderWidth"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    .line 1009
    .local v5, width:Lorg/appcelerator/titanium/TiDimension;
    if-eqz v5, :cond_8

    .line 1010
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setBorderWidth(F)V

    .line 1016
    .end local v5           #width:Lorg/appcelerator/titanium/TiDimension;
    :cond_8
    return-void

    .line 1002
    :cond_9
    if-eqz p2, :cond_7

    .line 1003
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setColor(I)V

    goto :goto_0
.end method

.method private resetPostAnimationValues()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 1577
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedRotationDegrees:F

    .line 1578
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedScaleValues:Landroid/util/Pair;

    .line 1579
    const/4 v0, 0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedAlpha:F

    .line 1580
    return-void
.end method

.method private resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 858
    iput p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    .line 859
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setVisibility(I)V

    .line 862
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 148
    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, nv:Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 154
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #nv:Landroid/view/View;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 161
    .end local v0           #cv:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected allowRegisterForKeyPress()Z
    .locals 1

    .prologue
    .line 1078
    const/4 v0, 0x1

    return v0
.end method

.method protected allowRegisterForTouch()Z
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x1

    return v0
.end method

.method public animate()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 277
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v11, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-ge v11, v12, :cond_2

    .line 285
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    .line 286
    .local v2, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v11

    if-nez v11, :cond_2

    .line 289
    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 290
    iget-object v10, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 291
    iget-object v10, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v10, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    goto :goto_0

    .line 297
    .end local v2           #currentAnimation:Landroid/view/animation/Animation;
    :cond_2
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v11}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getPendingAnimation()Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    move-result-object v1

    .line 298
    .local v1, builder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;
    if-eqz v1, :cond_0

    .line 302
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v11, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->clearAnimation(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    .line 303
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v12, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v11, v12}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 311
    .local v0, as:Landroid/view/animation/AnimationSet;
    const/4 v4, 0x0

    .line 312
    .local v4, invalidateParent:Z
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 314
    .local v7, viewParent:Landroid/view/ViewParent;
    iget v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    if-nez v11, :cond_4

    instance-of v11, v7, Landroid/view/View;

    if-eqz v11, :cond_4

    .line 315
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 316
    .local v8, width:I
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 318
    .local v3, height:I
    if-eqz v8, :cond_3

    if-nez v3, :cond_6

    .line 320
    :cond_3
    const/4 v4, 0x1

    .line 328
    .end local v3           #height:I
    .end local v8           #width:I
    :cond_4
    :goto_1
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 329
    const-string v9, "TiUIView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting animation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_5
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 333
    if-eqz v4, :cond_0

    .line 334
    check-cast v7, Landroid/view/View;

    .end local v7           #viewParent:Landroid/view/ViewParent;
    invoke-virtual {v7}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    .line 322
    .restart local v3       #height:I
    .restart local v7       #viewParent:Landroid/view/ViewParent;
    .restart local v8       #width:I
    :cond_6
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v10, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    .local v6, r:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 324
    .local v5, p:Landroid/graphics/Point;
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-interface {v7, v11, v6, v5}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v11

    if-nez v11, :cond_7

    move v4, v9

    :goto_2
    goto :goto_1

    :cond_7
    move v4, v10

    goto :goto_2
.end method

.method protected applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V
    .locals 3
    .parameter "matrix"

    .prologue
    .line 378
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iput-object p1, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 379
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-nez v1, :cond_0

    .line 380
    new-instance v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 382
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 383
    if-eqz p1, :cond_2

    .line 384
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->createMatrixAnimation(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-result-object v0

    .line 385
    .local v0, matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->interpolate:Z

    .line 386
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->setDuration(J)V

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->setFillAfter(Z)V

    .line 388
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 393
    .end local v0           #matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_1
    :goto_0
    return-void

    .line 390
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public blur()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 815
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$2;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$2;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 821
    :cond_0
    return-void
.end method

.method public clearOpacity(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1389
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1390
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 1393
    :cond_0
    return-void
.end method

.method protected composeContentDescription()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1604
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v6, :cond_0

    .line 1605
    const/4 v6, 0x0

    .line 1644
    :goto_0
    return-object v6

    .line 1608
    :cond_0
    const-string v4, "^.*\\p{Punct}\\s*$"

    .line 1609
    .local v4, punctuationPattern:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1611
    .local v0, buffer:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 1613
    .local v3, properties:Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "accessibilityLabel"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, label:Ljava/lang/String;
    const-string v6, "accessibilityHint"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1615
    .local v1, hint:Ljava/lang/String;
    const-string v6, "accessibilityValue"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1617
    .local v5, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    const-string v6, "^.*\\p{Punct}\\s*$"

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1620
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1626
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    const-string v6, "^.*\\p{Punct}\\s*$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1630
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1635
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1636
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    const-string v6, "^.*\\p{Punct}\\s*$"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1640
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method protected dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .parameter "e"

    .prologue
    .line 1045
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1046
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const-string v1, "y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    const-string v1, "source"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    return-object v0
.end method

.method protected dictFromEvent(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .parameter "dictToCopy"

    .prologue
    const-wide/16 v3, 0x0

    .line 1053
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1054
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    const-string v1, "x"

    const-string v2, "x"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    :goto_0
    const-string v1, "y"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    const-string v1, "y"

    const-string v2, "y"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :goto_1
    const-string v1, "source"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    return-object v0

    .line 1057
    :cond_0
    const-string v1, "x"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1062
    :cond_1
    const-string v1, "y"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "eventName"
    .parameter "data"

    .prologue
    .line 1463
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z

    move-result v0

    return v0
.end method

.method public fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z
    .locals 1
    .parameter "eventName"
    .parameter "data"
    .parameter "bubbles"

    .prologue
    .line 1467
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    if-eqz v0, :cond_1

    .line 1468
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p2, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 1472
    .restart local p2
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    .line 1469
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p2, v0}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public focus()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 806
    :cond_0
    return-void
.end method

.method public forceLayoutNativeView(Z)V
    .locals 0
    .parameter "imformParent"

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V

    .line 398
    return-void
.end method

.method public getAdditionalEventData()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getAnimatedAlpha()F
    .locals 1

    .prologue
    .line 1569
    iget v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedAlpha:F

    return v0
.end method

.method public getAnimatedRotationDegrees()F
    .locals 1

    .prologue
    .line 1552
    iget v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedRotationDegrees:F

    return v0
.end method

.method public getAnimatedScaleValues()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1526
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedScaleValues:Landroid/util/Pair;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 788
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIMM()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 795
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    return-object v0
.end method

.method public getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method

.method public getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    return-object v0
.end method

.method public getOuterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    goto :goto_0
.end method

.method public getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 883
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 885
    const-string v0, "TiUIView"

    const-string v1, "Attempt to hide null native control"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    return-void
.end method

.method public iszIndexChanged()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->zIndexChanged:Z

    return v0
.end method

.method protected layoutNativeView()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isLayoutStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V

    .line 405
    :cond_0
    return-void
.end method

.method protected layoutNativeView(Z)V
    .locals 5
    .parameter "informParent"

    .prologue
    .line 409
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 410
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 411
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 412
    check-cast v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    .line 413
    .local v1, matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->invalidateWithMatrix(Landroid/view/View;)V

    .line 415
    .end local v1           #matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_0
    if-eqz p1, :cond_1

    .line 416
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_1

    .line 417
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 418
    .local v2, uiv:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 420
    .local v3, v:Landroid/view/View;
    instance-of v4, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v4, :cond_1

    .line 421
    check-cast v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resort()V

    .line 426
    .end local v2           #uiv:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 428
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    return-void
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 339
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 342
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 774
    if-eqz p2, :cond_0

    .line 775
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$1;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/view/TiUIView$1;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/View;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 780
    const-string v0, "focus"

    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;->getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    const-string v0, "blur"

    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;->getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "d"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 658
    const/4 v3, 0x0

    .line 659
    .local v3, nativeViewNull:Z
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 660
    const/4 v3, 0x1

    .line 661
    const-string v4, "TiUIView"

    const-string v6, "Nativeview is null"

    const-string v7, "DEBUG_MODE"

    invoke-static {v4, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    const-string v4, "layout"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    const-string v4, "layout"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, layout:Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    instance-of v4, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v4, :cond_1

    .line 666
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v4, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 669
    .end local v1           #layout:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->fillLayout(Ljava/util/HashMap;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 670
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 673
    :cond_2
    const-string v4, "horizontalWrap"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 674
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    instance-of v4, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v4, :cond_3

    .line 675
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v6, "horizontalWrap"

    invoke-static {p1, v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setEnableHorizontalWrap(Z)V

    .line 679
    :cond_3
    const/4 v0, 0x0

    .line 683
    .local v0, bgColor:Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasImage(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasGradient(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 684
    :cond_4
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V

    .line 703
    :cond_5
    :goto_0
    const-string v4, "visible"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 704
    const-string v4, "visible"

    invoke-static {p1, v4, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    :goto_1
    invoke-direct {p0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    .line 706
    :cond_6
    const-string v4, "enabled"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    .line 707
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v6, "enabled"

    invoke-static {p1, v6, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 710
    :cond_7
    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V

    .line 712
    const-string v4, "opacity"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    .line 713
    const-string v4, "opacity"

    const/high16 v6, 0x3f80

    invoke-static {p1, v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 717
    :cond_8
    const-string v4, "transform"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 718
    const-string v4, "transform"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 719
    .local v2, matrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    if-eqz v2, :cond_9

    .line 720
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V

    .line 724
    .end local v2           #matrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :cond_9
    const-string v4, "keepScreenOn"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v3, :cond_a

    .line 725
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v6, "keepScreenOn"

    invoke-static {p1, v6, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 729
    :cond_a
    const-string v4, "accessibilityHint"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "accessibilityLabel"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "accessibilityValue"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "accessibilityHidden"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 731
    :cond_b
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityProperties()V

    .line 733
    :cond_c
    return-void

    .line 686
    :cond_d
    const-string v4, "backgroundColor"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 687
    const-string v4, "backgroundColor"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 692
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 693
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v4, :cond_e

    .line 694
    invoke-direct {p0, v5}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 696
    :cond_e
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 699
    :cond_f
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 704
    :cond_10
    const/4 v4, 0x4

    goto/16 :goto_1
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, changes:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 739
    .local v0, change:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 741
    .end local v0           #change:Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 20
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 442
    const-string v17, "left"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 443
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 444
    if-eqz p3, :cond_1

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 449
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    .line 654
    .end local p3
    :cond_0
    :goto_1
    return-void

    .line 447
    .restart local p3
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_0

    .line 450
    :cond_2
    const-string v17, "top"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 451
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 452
    if-eqz p3, :cond_3

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 457
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 455
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_2

    .line 458
    :cond_4
    const-string v17, "center"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 459
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 462
    :cond_5
    const-string v17, "right"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 463
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 464
    if-eqz p3, :cond_6

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 469
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 467
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_3

    .line 470
    :cond_7
    const-string v17, "bottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 471
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 472
    if-eqz p3, :cond_8

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 477
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 475
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_4

    .line 478
    :cond_9
    const-string v17, "size"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 479
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/util/HashMap;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v7, p3

    .line 481
    check-cast v7, Ljava/util/HashMap;

    .line 482
    .local v7, d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "width"

    const-string v18, "width"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 483
    const-string v17, "height"

    const-string v18, "height"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_1

    .line 484
    .end local v7           #d:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    if-eqz p3, :cond_0

    .line 485
    const-string v17, "TiUIView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported property type ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") for key: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Must be an object/dictionary"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 487
    :cond_b
    const-string v17, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 488
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 489
    if-eqz p3, :cond_f

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    .line 492
    const-string v17, "size"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 504
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 494
    :cond_d
    const-string v17, "fill"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    goto :goto_5

    .line 496
    :cond_e
    const-string v17, "auto"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x7

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    goto :goto_5

    .line 502
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_5

    .line 505
    :cond_10
    const-string v17, "horizontalWrap"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setEnableHorizontalWrap(Z)V

    .line 509
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 510
    :cond_12
    const-string v17, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 511
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 512
    if-eqz p3, :cond_16

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    .line 515
    const-string v17, "size"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 526
    :cond_13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 517
    :cond_14
    const-string v17, "fill"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    goto :goto_6

    .line 519
    :cond_15
    const-string v17, "auto"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x6

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    goto :goto_6

    .line 524
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_6

    .line 527
    :cond_17
    const-string v17, "zIndex"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 528
    if-eqz p3, :cond_18

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 533
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isLayoutStarted()Z

    move-result v17

    if-nez v17, :cond_19

    .line 534
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V

    goto/16 :goto_1

    .line 531
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    goto :goto_7

    .line 536
    :cond_19
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setzIndexChanged(Z)V

    goto/16 :goto_1

    .line 538
    :cond_1a
    const-string v17, "focusable"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    if-eqz p3, :cond_1b

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPress(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 540
    :cond_1b
    const-string v17, "touchEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 541
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Z)V

    goto/16 :goto_1

    .line 542
    :cond_1c
    const-string v17, "visible"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 543
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1d
    const/16 v17, 0x4

    goto :goto_8

    .line 544
    :cond_1e
    const-string v17, "enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 546
    :cond_1f
    const-string v17, "backgroundPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 547
    const-string v17, "TiUIView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not yet implemented."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 548
    :cond_20
    const-string v17, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_21

    const-string v17, "background"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_21

    const-string v17, "border"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_33

    .line 552
    :cond_21
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 556
    .local v6, d:Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasImage(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v11

    .line 557
    .local v11, hasImage:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasRepeat(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v12

    .line 558
    .local v12, hasRepeat:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v9

    .line 559
    .local v9, hasColorState:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v8

    .line 560
    .local v8, hasBorder:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasGradient(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v10

    .line 561
    .local v10, hasGradient:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_25

    const/4 v13, 0x1

    .line 563
    .local v13, nativeViewNull:Z
    :goto_9
    if-nez v11, :cond_22

    if-nez v12, :cond_22

    if-nez v9, :cond_22

    if-nez v8, :cond_22

    if-eqz v10, :cond_26

    :cond_22
    const/16 v16, 0x1

    .line 565
    .local v16, requiresCustomBackground:Z
    :goto_a
    if-nez v16, :cond_29

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 569
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 572
    :cond_23
    const-string v17, "backgroundColor"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_27

    .line 573
    const-string v17, "backgroundColor"

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 574
    .local v5, bgColor:Ljava/lang/Integer;
    if-nez v13, :cond_24

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundColor(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->postInvalidate()V

    .line 630
    .end local v5           #bgColor:Ljava/lang/Integer;
    :cond_24
    :goto_b
    if-nez v13, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_1

    .line 561
    .end local v13           #nativeViewNull:Z
    .end local v16           #requiresCustomBackground:Z
    :cond_25
    const/4 v13, 0x0

    goto :goto_9

    .line 563
    .restart local v13       #nativeViewNull:Z
    :cond_26
    const/16 v16, 0x0

    goto :goto_a

    .line 579
    .restart local v16       #requiresCustomBackground:Z
    :cond_27
    const-string v17, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28

    .line 580
    const/high16 v17, 0x3f80

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 582
    :cond_28
    if-nez v13, :cond_24

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->postInvalidate()V

    goto :goto_b

    .line 588
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_31

    const/4 v14, 0x1

    .line 589
    .local v14, newBackground:Z
    :goto_c
    if-eqz v14, :cond_2a

    .line 590
    new-instance v17, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-direct/range {v17 .. v17}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 593
    :cond_2a
    const/4 v5, 0x0

    .line 595
    .restart local v5       #bgColor:Ljava/lang/Integer;
    if-nez v9, :cond_2c

    if-nez v10, :cond_2c

    .line 596
    const-string v17, "backgroundColor"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_2c

    .line 597
    const-string v17, "backgroundColor"

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 598
    if-nez v14, :cond_2b

    const-string v17, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2b

    const-string v17, "backgroundColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 599
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundColor(I)V

    .line 604
    :cond_2c
    if-nez v11, :cond_2d

    if-nez v12, :cond_2d

    if-nez v9, :cond_2d

    if-eqz v10, :cond_2f

    .line 605
    :cond_2d
    if-nez v14, :cond_2e

    const-string v17, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2e

    const-string v17, "background"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2f

    .line 606
    :cond_2e
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V

    .line 610
    :cond_2f
    if-eqz v8, :cond_30

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    move-object/from16 v17, v0

    if-nez v17, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v17, v0

    if-eqz v17, :cond_32

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v15

    .line 615
    .local v15, parentView:Lorg/appcelerator/titanium/view/TiUIView;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/view/TiUIView;->remove(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 616
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lorg/appcelerator/titanium/view/TiUIView;->initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 623
    .end local v15           #parentView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_30
    :goto_d
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground()V

    .line 625
    const-string v17, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 626
    const/high16 v17, 0x3f80

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    goto/16 :goto_b

    .line 588
    .end local v5           #bgColor:Ljava/lang/Integer;
    .end local v14           #newBackground:Z
    :cond_31
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 618
    .restart local v5       #bgColor:Ljava/lang/Integer;
    .restart local v14       #newBackground:Z
    :cond_32
    const-string v17, "border"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_30

    .line 619
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->handleBorderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 633
    .end local v5           #bgColor:Ljava/lang/Integer;
    .end local v6           #d:Lorg/appcelerator/kroll/KrollDict;
    .end local v8           #hasBorder:Z
    .end local v9           #hasColorState:Z
    .end local v10           #hasGradient:Z
    .end local v11           #hasImage:Z
    .end local v12           #hasRepeat:Z
    .end local v13           #nativeViewNull:Z
    .end local v14           #newBackground:Z
    .end local v16           #requiresCustomBackground:Z
    :cond_33
    const-string v17, "softKeyboardOnFocus"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_34

    .line 634
    const-string v17, "TiUIView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Focus state changed to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not honored until next focus event."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    invoke-static/range {v17 .. v19}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 636
    :cond_34
    const-string v17, "transform"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_35

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 638
    check-cast p3, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .end local p3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V

    goto/16 :goto_1

    .line 640
    .restart local p3
    :cond_35
    const-string v17, "keepScreenOn"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_1

    .line 645
    :cond_36
    const-string v17, "accessibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_37

    const-string v17, "accessibilityHidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_37

    .line 646
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyContentDescription()V

    goto/16 :goto_1

    .line 648
    :cond_37
    const-string v17, "accessibilityHidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_38

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityHidden(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 651
    :cond_38
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 652
    const-string v17, "TiUIView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unhandled property key: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    invoke-static/range {v17 .. v19}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public registerForKeyPress()V
    .locals 1

    .prologue
    .line 1279
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->allowRegisterForKeyPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPress(Landroid/view/View;)V

    .line 1282
    :cond_0
    return-void
.end method

.method protected registerForKeyPress(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1286
    if-nez p1, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "focusable"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1291
    .local v0, focusable:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1292
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPress(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected registerForKeyPress(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "focusable"

    .prologue
    .line 1298
    if-nez p1, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1302
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 1306
    if-eqz p2, :cond_1

    .line 1307
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPressEvents(Landroid/view/View;)V

    goto :goto_0

    .line 1309
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method protected registerForKeyPressEvents(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1320
    if-nez p1, :cond_0

    .line 1345
    :goto_0
    return-void

    .line 1324
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$6;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$6;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public registerForTouch()V
    .locals 1

    .prologue
    .line 1088
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->allowRegisterForTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch(Landroid/view/View;)V

    .line 1091
    :cond_0
    return-void
.end method

.method protected registerForTouch(Landroid/view/View;)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 1258
    if-nez p1, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1262
    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->registerTouchEvents(Landroid/view/View;)V

    .line 1273
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected registerTouchEvents(Landroid/view/View;)V
    .locals 4
    .parameter "touchable"

    .prologue
    .line 1096
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    .line 1098
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/appcelerator/titanium/view/TiUIView$3;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/view/TiUIView$3;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 1141
    .local v1, scaleDetector:Landroid/view/ScaleGestureDetector;
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/appcelerator/titanium/view/TiUIView$4;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/view/TiUIView$4;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1200
    .local v0, detector:Landroid/view/GestureDetector;
    new-instance v2, Lorg/appcelerator/titanium/view/TiUIView$5;

    invoke-direct {v2, p0, v1, v0}, Lorg/appcelerator/titanium/view/TiUIView$5;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/ScaleGestureDetector;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1254
    return-void
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 825
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    const-string v3, "TiUIView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 829
    .local v1, nv:Landroid/view/View;
    if-eqz v1, :cond_5

    .line 830
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 831
    check-cast v2, Landroid/view/ViewGroup;

    .line 832
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 833
    const-string v3, "TiUIView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group has: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_1
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-nez v3, :cond_2

    .line 836
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 839
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 840
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 841
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 842
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 843
    instance-of v3, v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v3, :cond_3

    .line 844
    check-cast v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 846
    :cond_3
    const/4 v0, 0x0

    .line 848
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_4
    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 849
    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    .line 850
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v3, :cond_5

    .line 851
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 854
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, nv:Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 174
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #nv:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 180
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setAdditionalEventData(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "dict"

    .prologue
    .line 183
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    .line 184
    return-void
.end method

.method public setAnimatedAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1560
    iput p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedAlpha:F

    .line 1561
    return-void
.end method

.method public setAnimatedRotationDegrees(F)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 1543
    iput p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedRotationDegrees:F

    .line 1544
    return-void
.end method

.method public setAnimatedScaleValues(Landroid/util/Pair;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1535
    .local p1, newValues:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedScaleValues:Landroid/util/Pair;

    .line 1536
    return-void
.end method

.method protected setLayoutParams(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 0
    .parameter "layoutParams"

    .prologue
    .line 269
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 270
    return-void
.end method

.method protected setNativeView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 253
    sget-object v1, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 255
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 256
    const/4 v0, 0x1

    .line 258
    .local v0, clickable:Z
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 261
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    .line 262
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 264
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityProperties()V

    .line 265
    return-void
.end method

.method protected setOnClickListener(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1453
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$7;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$7;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    return-void
.end method

.method protected setOnLongClickListener(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1477
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$8;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$8;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1484
    return-void
.end method

.method public setOpacity(F)V
    .locals 3
    .parameter "opacity"

    .prologue
    .line 1354
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1355
    :cond_0
    const-string v0, "TiUIView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring invalid value for opacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_1
    :goto_0
    return-void

    .line 1358
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-eqz v0, :cond_3

    .line 1359
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setBorderAlpha(I)V

    .line 1360
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->postInvalidate()V

    .line 1362
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1363
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v0, :cond_4

    .line 1364
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1368
    :goto_1
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 1366
    :cond_4
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    goto :goto_1
.end method

.method protected setOpacity(Landroid/view/View;F)V
    .locals 1
    .parameter "view"
    .parameter "opacity"

    .prologue
    .line 1379
    if-eqz p1, :cond_0

    .line 1380
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setDrawableOpacity(Landroid/graphics/drawable/Drawable;F)V

    .line 1381
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1382
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 1385
    :cond_0
    return-void
.end method

.method public setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 224
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 225
    return-void
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 214
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 215
    return-void
.end method

.method public setzIndexChanged(Z)V
    .locals 0
    .parameter "zIndexChanged"

    .prologue
    .line 437
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->zIndexChanged:Z

    .line 438
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 874
    const-string v0, "TiUIView"

    const-string v1, "Attempt to show null native control"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_0
    return-void
.end method

.method public toImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method
