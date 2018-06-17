.class public abstract Lcom/vent/ak;
.super Lcom/vent/aq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/aq",
        "<",
        "Lcom/vent/i;",
        "Lcom/vent/a/k;",
        ">;"
    }
.end annotation


# static fields
.field static final cex:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vent/i$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cdb:Ljava/lang/CharSequence;

.field cev:I

.field cew:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/vent/ak;->cex:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/aq;-><init>()V

    return-void
.end method

.method public static flushCache()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/vent/ak;->cex:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/vent/ak;->cex:Landroid/util/SparseArray;

    sget-object v2, Lcom/vent/ak;->cex:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/i$a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vent/i$a;->bZY:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vent/ak;->cex:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method public final Du()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->CH()V

    invoke-virtual {p0}, Lcom/vent/ak;->Dw()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-wide v0, v0, Lcom/vent/i$a;->bZY:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/vent/ak;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4, v4}, Lcom/vent/aq;->c(ZZZ)V

    goto :goto_0
.end method

.method final Dv()Z
    .locals 1

    iget v0, p0, Lcom/vent/ak;->cev:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final Dw()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ak;->Dv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vent/ak;->cex:Landroid/util/SparseArray;

    iget v2, p0, Lcom/vent/ak;->cev:I

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final Dx()I
    .locals 1

    const v0, 0x7f0f00ca

    return v0
.end method

.method Dy()V
    .locals 0

    return-void
.end method

.method public final c(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ak;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ak$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/vent/ak$2;-><init>(Lcom/vent/ak;ZZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/aq;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-ne p2, v3, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "group"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-static {v0}, Lcom/vent/a/k;->b(Lcom/vent/a/c;)Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-nez v1, :cond_3

    move v4, v3

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    if-ltz v2, :cond_0

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vent/ak;->Dw()V

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0, v4}, Lcom/vent/i;->notifyItemChanged(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1, v2}, Lcom/vent/i;->ex(I)I

    move-result v1

    move v4, v1

    goto :goto_2

    :sswitch_0
    const-string v1, "update"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v5

    goto :goto_3

    :sswitch_1
    const-string v1, "new"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_3

    :sswitch_2
    const-string v1, "delete"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    goto :goto_3

    :sswitch_3
    const-string v1, "404"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    goto :goto_3

    :pswitch_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1, v5}, Lcom/vent/i;->ex(I)I

    move-result v2

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vent/ak;->Dw()V

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0, v2}, Lcom/vent/i;->notifyItemInserted(I)V

    iget-object v0, p0, Lcom/vent/ak;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ak;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->bA(I)V

    goto/16 :goto_0

    :pswitch_4
    if-ltz v2, :cond_4

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, v0, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vent/ak;->Dw()V

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0, v4}, Lcom/vent/i;->notifyItemRemoved(I)V

    :cond_4
    const-string v0, "404"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ak;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    const v1, 0x7f0f0138

    invoke-static {v0, v1, v5}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2
        -0x31ffc737 -> :sswitch_0
        0xc938 -> :sswitch_3
        0x1a9a0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/aq;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    new-instance v1, Lcom/vent/ak$1;

    invoke-virtual {p0}, Lcom/vent/ak;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-direct {v1, p0, v0, p0}, Lcom/vent/ak$1;-><init>(Lcom/vent/ak;Lcom/vent/a;Lcom/vent/am;)V

    iput-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    new-instance v1, Lcom/vent/i$a;

    invoke-direct {v1}, Lcom/vent/i$a;-><init>()V

    iput-object v1, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ak;->Dv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/ak;->cex:Landroid/util/SparseArray;

    iget v1, p0, Lcom/vent/ak;->cev:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/i$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    iput-object v0, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v0, p0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
