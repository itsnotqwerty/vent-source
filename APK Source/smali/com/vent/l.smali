.class abstract Lcom/vent/l;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/l$a;,
        Lcom/vent/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vent/a/a;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$x;",
        ">;"
    }
.end annotation


# instance fields
.field final bUM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;"
        }
    .end annotation
.end field

.field public bZp:Z

.field final caZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/am;",
            ">;"
        }
    .end annotation
.end field

.field cba:Landroid/view/View;

.field cbb:Landroid/support/v4/widget/n;

.field cbc:Z

.field cbd:Z


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/l;->bUM:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/vent/l;->caZ:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/l;->setHasStableIds(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CN()Z
    .locals 1

    invoke-virtual {p0}, Lcom/vent/l;->CD()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/l;->CL()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/l;->Cw()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/l;->CI()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public CB()V
    .locals 0

    return-void
.end method

.method CC()V
    .locals 0

    return-void
.end method

.method abstract CD()Z
.end method

.method public CG()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public CH()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/vent/l;->CC()V

    invoke-virtual {p0}, Lcom/vent/l;->CB()V

    invoke-virtual {p0, v0}, Lcom/vent/l;->aZ(Z)V

    invoke-virtual {p0}, Lcom/vent/l;->notifyDataSetChanged()V

    invoke-virtual {p0, v0, v0}, Lcom/vent/l;->g(ZZ)V

    return-void
.end method

.method CI()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method CL()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract Cw()I
.end method

.method abstract aZ(Z)V
.end method

.method final bb(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/l;->CD()Z

    move-result v0

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vent/l;->CN()Z

    move-result v0

    invoke-virtual {p0}, Lcom/vent/l;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/vent/l;->aZ(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/vent/l;->notifyItemRemoved(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/vent/l;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vent/l;->aZ(Z)V

    invoke-direct {p0}, Lcom/vent/l;->CN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/vent/l;->notifyItemInserted(I)V

    :cond_1
    return-void
.end method

.method final ew(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/l;->CL()I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method final ex(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/l;->CL()I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public g(ZZ)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/l;->cba:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/vent/l;->cba:Landroid/view/View;

    iget-boolean v0, p0, Lcom/vent/l;->cbc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vent/l;->bZp:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/l;->CL()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/l;->Cw()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/l;->CI()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/vent/l;->cbb:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/vent/l;->bZp:Z

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iget-object v0, p0, Lcom/vent/l;->cbb:Landroid/support/v4/widget/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->setRefreshing(Z)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final getItemCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/vent/l;->CL()I

    move-result v0

    invoke-virtual {p0}, Lcom/vent/l;->Cw()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vent/l;->CI()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/vent/l;->CN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/vent/l;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :pswitch_1
    const-wide/16 v0, -0x2

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, -0x3

    goto :goto_0

    :pswitch_3
    const-wide/16 v0, -0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/vent/l;->CL()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/vent/l;->Cw()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vent/l;->CI()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract isEmpty()Z
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/vent/l$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00ca

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public t(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
