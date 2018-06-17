.class abstract Lcom/vent/j;
.super Lcom/vent/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/vent/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vent/m;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected abstract AZ()V
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 12

    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/j;->AZ()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/vent/j;->ew(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/vent/j;->cbf:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vent/j;->Cw()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/vent/j;->AZ()V

    :cond_0
    iget-object v2, p0, Lcom/vent/j;->cbg:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    move-object v6, v1

    :goto_1
    check-cast p1, Lcom/vent/j$a;

    iget-object v2, p1, Lcom/vent/j$a;->bWi:Lcom/vent/CachedImageView;

    if-nez v6, :cond_3

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vent/j$a;->bVB:Landroid/widget/TextView;

    if-nez v6, :cond_4

    move-object v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v6, :cond_5

    :goto_4
    iget-object v0, p1, Lcom/vent/j$a;->caQ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/vent/j$a;->CK()V

    if-eqz v6, :cond_7

    iget-object v0, v6, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-array v10, v8, [Z

    iget-object v0, p0, Lcom/vent/j;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/vent/j;->caZ:Ljava/lang/ref/WeakReference;

    iget-object v2, v6, Lcom/vent/a/l;->ckm:Ljava/lang/String;

    sget v3, Lcom/vent/d/e;->cng:I

    mul-int/lit8 v3, v3, 0x3

    iget-object v4, p1, Lcom/vent/j$a;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v5, v6, Lcom/vent/a/l;->ckn:Ljava/util/Map;

    iget-object v6, v6, Lcom/vent/a/l;->cjE:Ljava/util/HashMap;

    move v9, v7

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, v10}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;I[Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "@{"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "@["

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-ltz v1, :cond_6

    :cond_1
    iget-object v0, p1, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/vent/j;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/l;

    move-object v6, v0

    goto :goto_1

    :cond_3
    sget v0, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v6, v0}, Lcom/vent/a/l;->eK(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/vent/a/l;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/vent/j$a;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0279

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v6, Lcom/vent/a/l;->ckj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget v2, v6, Lcom/vent/a/l;->ckk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_6
    iget-object v1, p1, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/m;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/vent/j$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00c6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/j$a;-><init>(Lcom/vent/j;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
