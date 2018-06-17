.class abstract Lcom/vent/p;
.super Lcom/vent/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/p$a;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/vent/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vent/o;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method final CL()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/o;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/vent/p;->ew(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/vent/p;->cbf:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vent/p;->Cw()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/vent/p;->AZ()V

    :cond_0
    iget-object v2, p0, Lcom/vent/p;->cbg:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    check-cast p1, Lcom/vent/p$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vent/a/x;->EZ()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p1, Lcom/vent/p$a;->bUF:Lcom/vent/CachedImageView;

    sget v6, Lcom/vent/MyApplication;->cgm:I

    sget v7, Lcom/vent/MyApplication;->cgo:I

    invoke-static {v0, v3, v6, v7}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    iget-object v6, p1, Lcom/vent/p$a;->bUF:Lcom/vent/CachedImageView;

    if-eqz v2, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Lcom/vent/CachedImageView;->setAlpha(F)V

    iget-object v3, p1, Lcom/vent/p$a;->bZI:Landroid/widget/TextView;

    if-nez v0, :cond_4

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vent/p$a;->bZI:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/vent/p;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move v4, v5

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/o;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/vent/l$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00cc

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/vent/p$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/p$a;-><init>(Lcom/vent/p;Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
