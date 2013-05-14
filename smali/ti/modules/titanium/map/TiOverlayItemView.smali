.class public Lti/modules/titanium/map/TiOverlayItemView;
.super Landroid/widget/FrameLayout;
.source "TiOverlayItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TitaniumOverlayItemView"


# instance fields
.field private hitTestList:[Landroid/view/View;

.field private lastIndex:I

.field private layout:Landroid/widget/RelativeLayout;

.field private leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private overlayClickedListener:Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;

.field private rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private snippet:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v3, -0x1

    iput v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->lastIndex:I

    .line 55
    const/16 v3, 0xa

    invoke-virtual {p0, v8, v8, v8, v3}, Lti/modules/titanium/map/TiOverlayItemView;->setPadding(IIII)V

    .line 57
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->layout:Landroid/widget/RelativeLayout;

    .line 59
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0xc8

    invoke-static {v4, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 60
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 61
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v12, v11, v12, v11}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v3, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 66
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setId(I)V

    .line 67
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v4, "leftPane"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lti/modules/titanium/map/TiOverlayItemView;->createBaseParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 69
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v9, :cond_0

    .line 71
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v1, v8, v8, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->layout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lti/modules/titanium/map/TiOverlayItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v2, textLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 78
    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 80
    new-instance v3, Lti/modules/titanium/map/TiOverlayItemView$1;

    invoke-direct {v3, p0, p1}, Lti/modules/titanium/map/TiOverlayItemView$1;-><init>(Lti/modules/titanium/map/TiOverlayItemView;Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    .line 93
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 94
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0xd8

    const/16 v6, 0xd8

    const/16 v7, 0xd8

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    const-string v4, "sans-serif"

    const-string v5, "15sip"

    const-string v6, "bold"

    invoke-static {v3, v4, v5, v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lti/modules/titanium/map/TiOverlayItemView;->createBaseParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 98
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    .line 102
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 103
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0xc0

    const/16 v6, 0xc0

    const/16 v7, 0xc0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    const-string v4, "subtitle"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    const-string v4, "sans-serif"

    const-string v5, "10sip"

    const-string v6, "bold"

    invoke-static {v3, v4, v5, v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lti/modules/titanium/map/TiOverlayItemView;->createBaseParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 107
    const/16 v3, 0xc8

    invoke-virtual {v1, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-direct {p0}, Lti/modules/titanium/map/TiOverlayItemView;->createBaseParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 111
    const/16 v3, 0x64

    invoke-virtual {v1, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 112
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v3, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 116
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setId(I)V

    .line 117
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v4, "rightPane"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setTag(Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0}, Lti/modules/titanium/map/TiOverlayItemView;->createBaseParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 119
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v9, :cond_1

    .line 120
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    :cond_1
    const/16 v3, 0x65

    invoke-virtual {v1, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 124
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->layout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v0, fparams:Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    iget-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v0}, Lti/modules/titanium/map/TiOverlayItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-array v3, v12, [Landroid/view/View;

    iget-object v4, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    aput-object v4, v3, v8

    iget-object v4, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    aput-object v4, v3, v10

    iget-object v4, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    aput-object v4, v3, v11

    iget-object v4, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    aput-object v4, v3, v9

    iput-object v3, p0, Lti/modules/titanium/map/TiOverlayItemView;->hitTestList:[Landroid/view/View;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"
    .parameter "tiContext"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lti/modules/titanium/map/TiOverlayItemView;-><init>(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method private createBaseParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public clearLastIndex()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/map/TiOverlayItemView;->lastIndex:I

    .line 279
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 224
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 226
    .local v7, y:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 228
    .local v1, hitRect:Landroid/graphics/Rect;
    iget-object v8, p0, Lti/modules/titanium/map/TiOverlayItemView;->hitTestList:[Landroid/view/View;

    array-length v0, v8

    .line 229
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 230
    iget-object v8, p0, Lti/modules/titanium/map/TiOverlayItemView;->hitTestList:[Landroid/view/View;

    aget-object v5, v8, v2

    .line 231
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    if-eqz v3, :cond_3

    .line 233
    invoke-virtual {v5, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 236
    const-string v8, "title"

    if-eq v3, v8, :cond_0

    const-string v8, "subtitle"

    if-ne v3, v8, :cond_1

    .line 237
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 238
    .local v4, textLayoutRect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 239
    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 242
    .end local v4           #textLayoutRect:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 243
    iget-object v8, p0, Lti/modules/titanium/map/TiOverlayItemView;->overlayClickedListener:Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;

    if-eqz v8, :cond_2

    .line 244
    iget-object v8, p0, Lti/modules/titanium/map/TiOverlayItemView;->overlayClickedListener:Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;

    iget v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->lastIndex:I

    invoke-interface {v8, v9, v3}, Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;->onClick(ILjava/lang/String;)V

    .line 252
    .end local v0           #count:I
    .end local v1           #hitRect:Landroid/graphics/Rect;
    .end local v2           #i:I
    .end local v3           #tag:Ljava/lang/String;
    .end local v5           #v:Landroid/view/View;
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 229
    .restart local v0       #count:I
    .restart local v1       #hitRect:Landroid/graphics/Rect;
    .restart local v2       #i:I
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v5       #v:Landroid/view/View;
    .restart local v6       #x:I
    .restart local v7       #y:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public fireClickEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "clickedItem"

    .prologue
    .line 257
    iget-object v0, p0, Lti/modules/titanium/map/TiOverlayItemView;->overlayClickedListener:Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;

    if-nez v0, :cond_0

    .line 258
    const-string v0, "TitaniumOverlayItemView"

    const-string v1, "Unable to fire click listener for map overlay, no listener found"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/map/TiOverlayItemView;->overlayClickedListener:Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;

    invoke-interface {v0, p1, p2}, Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;->onClick(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getLastIndex()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lti/modules/titanium/map/TiOverlayItemView;->lastIndex:I

    return v0
.end method

.method public setItem(ILti/modules/titanium/map/TiOverlayItem;)V
    .locals 12
    .parameter "index"
    .parameter "item"

    .prologue
    .line 145
    new-instance v8, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p0}, Lti/modules/titanium/map/TiOverlayItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 146
    .local v8, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    const/4 v0, 0x0

    .line 148
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iput p1, p0, Lti/modules/titanium/map/TiOverlayItemView;->lastIndex:I

    .line 150
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 151
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 153
    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getLeftButton()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, leftButton:Ljava/lang/String;
    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getLeftView()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    .line 155
    .local v4, leftView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-nez v2, :cond_0

    if-eqz v4, :cond_5

    .line 156
    :cond_0
    if-eqz v2, :cond_4

    .line 158
    :try_start_0
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lti/modules/titanium/map/TiOverlayItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v3, leftImage:Landroid/widget/ImageView;
    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v9, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v3           #leftImage:Landroid/widget/ImageView;
    :cond_1
    :goto_0
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setVisibility(I)V

    .line 177
    :goto_1
    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getRightButton()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, rightButton:Ljava/lang/String;
    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getRightView()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v7

    .line 179
    .local v7, rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-nez v5, :cond_2

    if-eqz v7, :cond_7

    .line 180
    :cond_2
    if-eqz v5, :cond_6

    .line 182
    :try_start_1
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lti/modules/titanium/map/TiOverlayItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v6, rightImage:Landroid/widget/ImageView;
    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v9, v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local v6           #rightImage:Landroid/widget/ImageView;
    :cond_3
    :goto_2
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setVisibility(I)V

    .line 202
    :goto_3
    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 203
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_4
    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 211
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    invoke-virtual {p2}, Lti/modules/titanium/map/TiOverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_5
    return-void

    .line 163
    .end local v5           #rightButton:Ljava/lang/String;
    .end local v7           #rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "TitaniumOverlayItemView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error loading left button - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v4, :cond_1

    .line 169
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 174
    :cond_5
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->leftPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 187
    .restart local v5       #rightButton:Ljava/lang/String;
    .restart local v7       #rightView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :catch_1
    move-exception v1

    .line 188
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "TitaniumOverlayItemView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error loading right button - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 192
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    if-eqz v7, :cond_3

    .line 193
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 199
    :cond_7
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->rightPane:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 207
    :cond_8
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->title:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 215
    :cond_9
    iget-object v9, p0, Lti/modules/titanium/map/TiOverlayItemView;->snippet:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public setOnOverlayClickedListener(Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 268
    iput-object p1, p0, Lti/modules/titanium/map/TiOverlayItemView;->overlayClickedListener:Lti/modules/titanium/map/TiOverlayItemView$OnOverlayClicked;

    .line 269
    return-void
.end method
