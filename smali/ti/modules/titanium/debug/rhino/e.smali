.class public final Lti/modules/titanium/debug/rhino/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lti/modules/titanium/debug/rhino/g;

.field private b:Z

.field private c:Lti/modules/titanium/debug/rhino/b;

.field private d:Lti/modules/titanium/debug/rhino/b;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/StringBuilder;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/e;->g:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lti/modules/titanium/debug/rhino/e;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lti/modules/titanium/debug/rhino/g;->a:Lti/modules/titanium/debug/rhino/g;

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/e;->a:Lti/modules/titanium/debug/rhino/g;

    iput-boolean v1, p0, Lti/modules/titanium/debug/rhino/e;->b:Z

    const v0, 0x7fffffff

    iput v0, p0, Lti/modules/titanium/debug/rhino/e;->e:I

    iput v1, p0, Lti/modules/titanium/debug/rhino/e;->h:I

    return-void
.end method


# virtual methods
.method public final a()Lti/modules/titanium/debug/rhino/b;
    .locals 1

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/e;->d:Lti/modules/titanium/debug/rhino/b;

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget v3, p0, Lti/modules/titanium/debug/rhino/e;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lti/modules/titanium/debug/rhino/e;->h:I

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/e;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lti/modules/titanium/debug/rhino/e;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_6

    sget-object v0, Lti/modules/titanium/debug/rhino/f;->a:[I

    iget-object v4, p0, Lti/modules/titanium/debug/rhino/e;->a:Lti/modules/titanium/debug/rhino/g;

    invoke-virtual {v4}, Lti/modules/titanium/debug/rhino/g;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_2
    iget-boolean v0, p0, Lti/modules/titanium/debug/rhino/e;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lti/modules/titanium/debug/rhino/e;->b()V

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/e;->c:Lti/modules/titanium/debug/rhino/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lti/modules/titanium/debug/rhino/e;->c:Lti/modules/titanium/debug/rhino/b;

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/e;->d:Lti/modules/titanium/debug/rhino/b;

    move v0, v1

    :goto_3
    return v0

    :cond_2
    iget-object v3, p0, Lti/modules/titanium/debug/rhino/e;->g:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lti/modules/titanium/debug/rhino/e;->h:I

    iget v3, p0, Lti/modules/titanium/debug/rhino/e;->e:I

    if-lt v0, v3, :cond_0

    iput-boolean v1, p0, Lti/modules/titanium/debug/rhino/e;->b:Z

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v3, p0, Lti/modules/titanium/debug/rhino/e;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lti/modules/titanium/debug/rhino/e;->e:I

    iget v0, p0, Lti/modules/titanium/debug/rhino/e;->e:I

    if-lez v0, :cond_1

    sget-object v0, Lti/modules/titanium/debug/rhino/g;->b:Lti/modules/titanium/debug/rhino/g;

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/e;->a:Lti/modules/titanium/debug/rhino/g;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :pswitch_1
    iput-object v3, p0, Lti/modules/titanium/debug/rhino/e;->f:Ljava/lang/String;

    sget-object v0, Lti/modules/titanium/debug/rhino/g;->c:Lti/modules/titanium/debug/rhino/g;

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/e;->a:Lti/modules/titanium/debug/rhino/g;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/debug/rhino/e;->f:Ljava/lang/String;

    invoke-static {v0, v3}, Lti/modules/titanium/debug/rhino/b;->a(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/debug/rhino/b;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/e;->c:Lti/modules/titanium/debug/rhino/b;

    sget-object v0, Lti/modules/titanium/debug/rhino/g;->d:Lti/modules/titanium/debug/rhino/g;

    iput-object v0, p0, Lti/modules/titanium/debug/rhino/e;->a:Lti/modules/titanium/debug/rhino/g;

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x7c

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    new-instance v0, Lti/modules/titanium/debug/rhino/c;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lti/modules/titanium/debug/rhino/c;-><init>([Ljava/lang/String;)V

    :goto_4
    iget-object v3, p0, Lti/modules/titanium/debug/rhino/e;->c:Lti/modules/titanium/debug/rhino/b;

    invoke-virtual {v3}, Lti/modules/titanium/debug/rhino/b;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Lti/modules/titanium/debug/rhino/c;

    invoke-direct {v0, v3}, Lti/modules/titanium/debug/rhino/c;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
