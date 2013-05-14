.class Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "TiGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/TiGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GradientShaderFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;


# direct methods
.method private constructor <init>(Lorg/appcelerator/titanium/view/TiGradientDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/appcelerator/titanium/view/TiGradientDrawable;Lorg/appcelerator/titanium/view/TiGradientDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;-><init>(Lorg/appcelerator/titanium/view/TiGradientDrawable;)V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->startPoint:Lorg/appcelerator/titanium/TiPoint;
    invoke-static {v0}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$200(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Lorg/appcelerator/titanium/TiPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiPoint;->getX()Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->view:Landroid/view/View;
    invoke-static {v5}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$100(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    int-to-float v1, v0

    .line 131
    .local v1, x0:F
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->startPoint:Lorg/appcelerator/titanium/TiPoint;
    invoke-static {v0}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$200(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Lorg/appcelerator/titanium/TiPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiPoint;->getY()Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->view:Landroid/view/View;
    invoke-static {v5}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$100(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    int-to-float v2, v0

    .line 132
    .local v2, y0:F
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->endPoint:Lorg/appcelerator/titanium/TiPoint;
    invoke-static {v0}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$300(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Lorg/appcelerator/titanium/TiPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiPoint;->getX()Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->view:Landroid/view/View;
    invoke-static {v5}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$100(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    int-to-float v3, v0

    .line 133
    .local v3, x1:F
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->endPoint:Lorg/appcelerator/titanium/TiPoint;
    invoke-static {v0}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$300(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Lorg/appcelerator/titanium/TiPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiPoint;->getY()Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->view:Landroid/view/View;
    invoke-static {v5}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$100(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    int-to-float v4, v0

    .line 135
    .local v4, y1:F
    sget-object v0, Lorg/appcelerator/titanium/view/TiGradientDrawable$1;->$SwitchMap$org$appcelerator$titanium$view$TiGradientDrawable$GradientType:[I

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->gradientType:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;
    invoke-static {v5}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$400(Lorg/appcelerator/titanium/view/TiGradientDrawable;)Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/AssertionError;

    const-string v5, "No valid gradient type set."

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 137
    :pswitch_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->colors:[I
    invoke-static {v5}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$500(Lorg/appcelerator/titanium/view/TiGradientDrawable;)[I

    move-result-object v5

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientShaderFactory;->this$0:Lorg/appcelerator/titanium/view/TiGradientDrawable;

    #getter for: Lorg/appcelerator/titanium/view/TiGradientDrawable;->offsets:[F
    invoke-static {v6}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->access$600(Lorg/appcelerator/titanium/view/TiGradientDrawable;)[F

    move-result-object v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 140
    :goto_0
    return-object v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
