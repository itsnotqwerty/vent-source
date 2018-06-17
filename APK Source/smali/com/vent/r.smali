.class abstract Lcom/vent/r;
.super Lcom/vent/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/r$a;
    }
.end annotation


# instance fields
.field private final cbA:Z

.field final cbB:Z


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/vent/o;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    iput-boolean v0, p0, Lcom/vent/r;->cbA:Z

    iput-boolean v0, p0, Lcom/vent/r;->cbB:Z

    return-void
.end method


# virtual methods
.method public final CG()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method final CL()I
    .locals 1

    iget-boolean v0, p0, Lcom/vent/r;->cbA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 13

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/o;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vent/r;->cbg:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/vent/a/x;->c(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vent/a/y;

    move-object v11, p1

    check-cast v11, Lcom/vent/r$a;

    sget v0, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {p0, v11, v10, v0}, Lcom/vent/r;->a(Lcom/vent/o$b;Lcom/vent/a/x;I)V

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/vent/a/y;->Fa()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/vent/r;->bXh:Ljava/util/HashMap;

    iget-object v2, v10, Lcom/vent/a/y;->ckO:Lcom/vent/a/m;

    invoke-static {v0, v2}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v0

    :goto_3
    iget-object v2, p0, Lcom/vent/r;->bXg:Ljava/util/HashMap;

    invoke-static {v2, v0}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v3

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lcom/vent/a/h;->bm(Z)I

    move-result v4

    :goto_4
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget-object v5, v11, Lcom/vent/r$a;->cbC:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v11, Lcom/vent/r$a;->cbC:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/vent/a/g;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v11, Lcom/vent/r$a;->cbC:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, v11, Lcom/vent/r$a;->cbC:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/vent/a/h;->bo(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    if-eqz v1, :cond_5

    iget-object v0, v10, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    new-array v12, v0, [Z

    iget-object v0, p0, Lcom/vent/r;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/vent/r;->caZ:Ljava/lang/ref/WeakReference;

    iget-object v2, v10, Lcom/vent/a/y;->ckm:Ljava/lang/String;

    sget v3, Lcom/vent/d/e;->cng:I

    mul-int/lit8 v3, v3, 0x3

    iget-object v5, v10, Lcom/vent/a/y;->ckn:Ljava/util/Map;

    iget-object v6, v10, Lcom/vent/a/y;->cjE:Ljava/util/HashMap;

    iget-boolean v7, p0, Lcom/vent/r;->cbB:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, v12}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;I[Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/vent/r$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v11, Lcom/vent/r$a;->bio:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget-object v1, v11, Lcom/vent/r$a;->bXH:Landroid/widget/TextView;

    if-nez v10, :cond_6

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vent/r;->cbg:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/vent/r;->ew(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_3
    const v4, -0x7f7f80

    goto :goto_4

    :cond_4
    iget-object v0, v11, Lcom/vent/r$a;->cbC:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_5
    iget-object v0, v11, Lcom/vent/r$a;->bio:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_6
    iget-object v0, v10, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    goto :goto_7

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

    const v2, 0x7f0b00c2

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/vent/r$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/r$a;-><init>(Lcom/vent/r;Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/vent/r;->g(ZZ)V

    :cond_0
    return-void
.end method
