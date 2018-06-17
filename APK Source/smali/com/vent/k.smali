.class abstract Lcom/vent/k;
.super Lcom/vent/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/p;",
        ">;"
    }
.end annotation


# instance fields
.field caT:I

.field caU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field caV:I

.field caW:I


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/vent/m;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/k;->caV:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/vent/k;->caW:I

    return-void
.end method


# virtual methods
.method protected abstract AZ()V
.end method

.method public final CC()V
    .locals 1

    invoke-super {p0}, Lcom/vent/m;->CC()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    return-void
.end method

.method public final CG()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/vent/m;->CG()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected"

    iget-object v2, p0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method final CL()I
    .locals 1

    iget v0, p0, Lcom/vent/k;->caT:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/vent/k;->caT:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/vent/k;->caT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/k;->AZ()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/vent/k;->ew(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/vent/k;->cbf:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vent/k;->Cw()I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/vent/k;->AZ()V

    :cond_1
    iget-object v1, p0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    check-cast p1, Lcom/vent/k$a;

    iget-object v1, p1, Lcom/vent/k$a;->bVB:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/vent/a/p;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/vent/k$a;->CM()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/p;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/m;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/vent/l$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00c9

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/vent/k$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00c8

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/k$a;-><init>(Lcom/vent/k;Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/vent/m;->t(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v1}, Lcom/vent/k;->g(ZZ)V

    :cond_0
    return-void
.end method
