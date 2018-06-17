.class abstract Lcom/vent/q;
.super Lcom/vent/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/q$a;,
        Lcom/vent/q$b;
    }
.end annotation


# instance fields
.field cbx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vent/o;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method public final CC()V
    .locals 1

    invoke-super {p0}, Lcom/vent/o;->CC()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    return-void
.end method

.method public final CG()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/vent/o;->CG()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "searchsuggestions"

    iget-object v2, p0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final CL()I
    .locals 1

    invoke-virtual {p0}, Lcom/vent/q;->CS()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/vent/o;->Cw()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final CS()I
    .locals 1

    iget-object v0, p0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final Cw()I
    .locals 2

    invoke-virtual {p0}, Lcom/vent/q;->CS()I

    move-result v0

    invoke-super {p0}, Lcom/vent/o;->Cw()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method final b(Lcom/vent/a/x;)V
    .locals 3

    iget-object v0, p0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vent/q;->CL()I

    move-result v1

    invoke-virtual {p0}, Lcom/vent/q;->CS()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vent/q;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0}, Lcom/vent/q;->CL()I

    move-result v0

    if-ge p1, v0, :cond_0

    const-wide/16 v0, -0x3

    :goto_0
    return-wide v0

    :cond_0
    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/vent/q;->CS()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/v;

    iget-object v0, v0, Lcom/vent/a/v;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    invoke-super {p0}, Lcom/vent/o;->Cw()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iget-object v0, v0, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/vent/q;->CL()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/vent/q;->CS()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    invoke-super {p0}, Lcom/vent/o;->Cw()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/o;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/q;->CL()I

    move-result v1

    invoke-virtual {p0}, Lcom/vent/q;->CS()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v1, p2, v1

    iget-boolean v2, p0, Lcom/vent/q;->cbf:Z

    if-eqz v2, :cond_0

    invoke-super {p0}, Lcom/vent/o;->Cw()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/vent/q;->AZ()V

    :cond_0
    check-cast p1, Lcom/vent/q$b;

    iget-object v2, p0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :goto_1
    sget v1, Lcom/vent/MyApplication;->cgk:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/vent/q;->a(Lcom/vent/o$b;Lcom/vent/a/x;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    goto :goto_1

    :pswitch_1
    check-cast p1, Lcom/vent/q$a;

    invoke-virtual {p0}, Lcom/vent/q;->CL()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p1, Lcom/vent/q$a;->cby:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/vent/a/v;->value:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vent/q;->CS()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    invoke-super {p0}, Lcom/vent/o;->Cw()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p1, Lcom/vent/q$a;->bVX:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/vent/q$a;->bVY:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/v;

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
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

    const v2, 0x7f0b00cf

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/vent/q$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d5

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/q$b;-><init>(Lcom/vent/q;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/vent/q$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/q$a;-><init>(Lcom/vent/q;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/o;->t(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "searchsuggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method
