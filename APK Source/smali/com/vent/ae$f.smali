.class final Lcom/vent/ae$f;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/vent/ae;->Dg()V

    const/4 v0, 0x0

    sput-object v0, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/vent/ae;->Dh()V

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/vent/ae;->cdk:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/vent/ae;->bc(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/vent/ae;->eB(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    sget v0, Lcom/vent/ae;->cdy:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ae;->cdy:I

    goto :goto_2

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vent/ae$c;

    sget v3, Lcom/vent/ae;->cdj:I

    iget v4, v0, Lcom/vent/ae$c;->cdH:I

    sub-int/2addr v3, v4

    sput v3, Lcom/vent/ae;->cdj:I

    iput v2, v0, Lcom/vent/ae$c;->cdH:I

    iget-boolean v3, v0, Lcom/vent/ae$c;->cdK:Z

    if-eqz v3, :cond_3

    sget v1, Lcom/vent/ae;->cdz:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/vent/ae;->cdz:I

    :goto_3
    iget-boolean v1, v0, Lcom/vent/ae$c;->cdD:Z

    if-nez v1, :cond_2

    sget v1, Lcom/vent/ae;->cdm:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/vent/ae;->cdm:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-static {v2, v1}, Lcom/vent/ae;->a(ZLjava/lang/String;)V

    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/vent/ae;->cdi:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v3, v0, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lcom/vent/ae$c;->cdD:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    invoke-static {v0}, Lcom/vent/ae;->c(Lcom/vent/ae$c;)Z

    :cond_4
    :goto_4
    iget-object v3, v0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    iget-object v4, v0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x400

    iput v3, v0, Lcom/vent/ae$c;->cdH:I

    sget v3, Lcom/vent/ae;->cdj:I

    iget v4, v0, Lcom/vent/ae$c;->cdH:I

    add-int/2addr v3, v4

    sput v3, Lcom/vent/ae;->cdj:I

    :cond_5
    iput-boolean v1, v0, Lcom/vent/ae$c;->cdJ:Z

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lcom/vent/ae;->a(Lcom/vent/ae$c;)V

    iget-object v3, v0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v4, Ljava/io/File;

    iget-object v3, v0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-nez v3, :cond_d

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    sget v3, Lcom/vent/ae;->cdy:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vent/ae;->cdy:I

    :cond_7
    move v3, v1

    :goto_5
    if-nez v3, :cond_8

    sget v5, Lcom/vent/ae;->cdu:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/vent/ae;->cdu:I

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {v0}, Lcom/vent/ae;->b(Lcom/vent/ae$c;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    move v3, v1

    :goto_6
    if-eqz v3, :cond_a

    iget-boolean v3, v0, Lcom/vent/ae$c;->cdD:Z

    if-nez v3, :cond_a

    invoke-static {v0}, Lcom/vent/ae;->c(Lcom/vent/ae$c;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    sget v3, Lcom/vent/ae;->cdy:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vent/ae;->cdy:I

    :cond_a
    invoke-static {v0}, Lcom/vent/ae;->d(Lcom/vent/ae$c;)V

    :cond_b
    sget v3, Lcom/vent/ae;->cdl:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/vent/ae;->cdl:I

    rem-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_4

    invoke-static {}, Lcom/vent/ae;->Df()V

    goto :goto_4

    :cond_c
    move v3, v2

    goto :goto_6

    :cond_d
    move v3, v2

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
