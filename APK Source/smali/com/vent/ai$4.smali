.class final Lcom/vent/ai$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ai;->BZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cem:Lcom/vent/ai;


# direct methods
.method constructor <init>(Lcom/vent/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->cbb:Landroid/support/v4/widget/n;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    invoke-virtual {v0}, Lcom/vent/ai;->Bc()Lcom/vent/ba;

    move-result-object v2

    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->cbb:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-object v3, v0, Lcom/vent/f;->cbb:Landroid/support/v4/widget/n;

    if-eqz v2, :cond_4

    iget v0, v2, Lcom/vent/ba;->state:I

    if-lt v0, v4, :cond_2

    iget-boolean v0, v2, Lcom/vent/ba;->chc:Z

    if-nez v0, :cond_2

    iget-boolean v0, v2, Lcom/vent/ba;->chf:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-boolean v0, v0, Lcom/vent/f;->bZH:Z

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v4/widget/n;->setRefreshing(Z)V

    :cond_3
    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->cba:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-object v3, v0, Lcom/vent/f;->cba:Landroid/view/View;

    if-eqz v2, :cond_5

    iget v0, v2, Lcom/vent/ba;->state:I

    if-ne v0, v4, :cond_5

    iget-boolean v0, v2, Lcom/vent/ba;->chc:Z

    if-nez v0, :cond_5

    iget-boolean v0, v2, Lcom/vent/ba;->chf:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/vent/bb;->EI()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vent/ai$4;->cem:Lcom/vent/ai;

    iget-object v0, v0, Lcom/vent/ai;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/f;

    iget-boolean v0, v0, Lcom/vent/f;->bZH:Z

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    goto :goto_2
.end method
