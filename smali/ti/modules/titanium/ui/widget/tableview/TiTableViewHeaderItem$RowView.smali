.class Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;
.super Landroid/widget/RelativeLayout;
.source "TiTableViewHeaderItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RowView"
.end annotation


# instance fields
.field private item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 38
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;

    .line 39
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->setGravity(I)V

    .line 42
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 44
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 45
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 46
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 50
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v3, v3, v3, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->setPadding(IIII)V

    .line 53
    const/high16 v1, 0x4190

    invoke-static {v1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawDIPSize(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->setMinimumHeight(I)V

    .line 54
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->setVerticalFadingEdgeEnabled(Z)V

    .line 55
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    const-string v2, ""

    const-string v3, "10dp"

    const-string v4, "normal"

    invoke-static {v1, v2, v3, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 57
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->setTextViewDIPPadding(Landroid/widget/TextView;II)V

    .line 59
    return-void
.end method


# virtual methods
.method public getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    return-object v0
.end method

.method public setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 63
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 64
    iget-object v0, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->headerText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    iget-object v1, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->headerText:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->footerText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem$RowView;->textView:Landroid/widget/TextView;

    iget-object v1, p1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->footerText:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method
