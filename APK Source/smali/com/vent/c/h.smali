.class public final Lcom/vent/c/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/c/h$a;
    }
.end annotation


# direct methods
.method static a(Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_4

    move v2, v1

    :goto_0
    if-eqz v5, :cond_0

    sget-object v6, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    move-object v2, v1

    :goto_2
    :pswitch_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_2
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_3
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_0

    :sswitch_0
    const-string v0, "noto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "roboto-regular"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_2
    const-string v5, "roboto-italic"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v0

    goto :goto_1

    :sswitch_3
    const-string v0, "roboto-medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "roboto-light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "klinicslab-book"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "klinicslab-light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;

    move v0, v1

    goto :goto_2

    :pswitch_2
    sget-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    move v0, v1

    goto :goto_2

    :pswitch_3
    sget-object v2, Lcom/vent/d/e;->cmY:Landroid/graphics/Typeface;

    move v0, v1

    goto :goto_2

    :pswitch_4
    sget-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    move v0, v1

    goto :goto_2

    :pswitch_5
    sget-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    move v0, v1

    goto :goto_2

    :pswitch_6
    sget-object v2, Lcom/vent/d/e;->cmV:Landroid/graphics/Typeface;

    move v0, v1

    goto :goto_2

    :pswitch_7
    sget-object v2, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    move v0, v1

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/vent/d/e;->cne:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_6
    :goto_3
    packed-switch v3, :pswitch_data_2

    move v0, v1

    goto/16 :goto_2

    :pswitch_8
    const-string v5, "roboto-italic"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v1

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58963544 -> :sswitch_5
        -0x48618648 -> :sswitch_2
        -0x42603103 -> :sswitch_3
        -0xf72eec -> :sswitch_1
        0x33affc -> :sswitch_0
        0x1ed7e48e -> :sswitch_4
        0x46599fa3 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x48618648
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
