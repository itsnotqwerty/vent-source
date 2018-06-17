.class public final Lcom/vent/FrgInterests;
.super Lcom/vent/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/am",
        "<",
        "Lcom/vent/k;",
        "Lcom/vent/a/p;",
        ">;"
    }
.end annotation


# instance fields
.field public ceB:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vent/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/am;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vent/FrgInterests;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private DA()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->Cw()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v4, v0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/p;

    iget-object v0, v0, Lcom/vent/a/p;->cjy:Lcom/vent/a/m;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    invoke-virtual {v0}, Lcom/vent/k;->notifyDataSetChanged()V

    return-void
.end method

.method private u(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "interest_ids"

    invoke-static {p1, v0}, Lcom/vent/d/d;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    const-string v1, "minInterest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vent/k;->caV:I

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    const-string v1, "maxInterest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vent/k;->caW:I

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    const-string v1, "hdrString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vent/k;->caT:I

    invoke-direct {p0}, Lcom/vent/FrgInterests;->DA()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final Du()V
    .locals 4

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget-wide v0, v0, Lcom/vent/k;->bZY:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/FrgInterests;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vent/FrgInterests;->f(ZZ)V

    :cond_1
    return-void
.end method

.method protected final Dx()I
    .locals 1

    const v0, 0x7f0f00cb

    return v0
.end method

.method public final a(Ljava/util/HashSet;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/vent/a/m;",
            ">;III)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "interest_ids"

    invoke-static {v0, v1, p1}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Set;)V

    const-string v1, "hdrString"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minInterest"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maxInterest"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/vent/FrgInterests;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/vent/FrgInterests;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgInterests;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/FrgInterests$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vent/FrgInterests$2;-><init>(Lcom/vent/FrgInterests;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/am;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    new-instance v1, Lcom/vent/FrgInterests$1;

    invoke-virtual {p0}, Lcom/vent/FrgInterests;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-direct {v1, p0, v0, p0}, Lcom/vent/FrgInterests$1;-><init>(Lcom/vent/FrgInterests;Lcom/vent/a;Lcom/vent/am;)V

    iput-object v1, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/vent/FrgInterests;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vent/FrgInterests;->u(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "interest_ids"

    invoke-static {p1, v0}, Lcom/vent/d/d;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    const-string v1, "minInterest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vent/k;->caV:I

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    const-string v1, "maxInterest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vent/k;->caW:I

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    :cond_2
    invoke-direct {p0}, Lcom/vent/FrgInterests;->DA()V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/am;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "interest_ids"

    iget-object v1, p0, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    invoke-static {p1, v0, v1}, Lcom/vent/d/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    const-string v1, "minInterest"

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget v0, v0, Lcom/vent/k;->caV:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maxInterest"

    iget-object v0, p0, Lcom/vent/FrgInterests;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/k;

    iget v0, v0, Lcom/vent/k;->caW:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
