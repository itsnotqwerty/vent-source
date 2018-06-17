.class public final Lcom/vent/as;
.super Lcom/vent/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/am",
        "<",
        "Lcom/vent/n;",
        "Lcom/vent/a/s;",
        ">;"
    }
.end annotation


# static fields
.field public static ceK:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/am;-><init>()V

    return-void
.end method

.method public static aI(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActMain;->bWN:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vent/bb;->setUnreadCount(I)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    invoke-static {p0}, Lcom/vent/d/c;->bH(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final Du()V
    .locals 4

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    invoke-virtual {v0}, Lcom/vent/n;->CH()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vent/as;->ceK:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-object v0, v0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-wide v0, v0, Lcom/vent/n;->bZY:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vent/as;->f(ZZ)V

    goto :goto_0
.end method

.method public final em()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/n;

    iget-boolean v0, v0, Lcom/vent/n;->bZp:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/vent/as;->h(ZZ)V

    :cond_0
    return-void
.end method

.method public final f(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/as;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/as$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/vent/as$3;-><init>(Lcom/vent/as;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    const v0, 0x7f0b006d

    return v0
.end method

.method final h(ZZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/vent/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/as;->aI(Landroid/content/Context;)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/ActMain;

    const/4 v1, 0x3

    sget v2, Lcom/vent/bb;->ciF:I

    invoke-virtual {v0, v1, v2}, Lcom/vent/ActMain;->aG(II)V

    :cond_0
    new-instance v0, Lcom/vent/as$2;

    invoke-virtual {p0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    const-string v3, "api/v1/my/notifications/mark_all"

    const-string v4, "PUT"

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vent/as$2;-><init>(Lcom/vent/as;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/am;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    new-instance v1, Lcom/vent/as$1;

    invoke-virtual {p0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-direct {v1, p0, v0, p0}, Lcom/vent/as$1;-><init>(Lcom/vent/as;Lcom/vent/a;Lcom/vent/am;)V

    iput-object v1, p0, Lcom/vent/as;->ceE:Lcom/vent/l;

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/am;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    const v0, 0x7f060079

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vent/as;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f00c5

    new-array v4, v7, [I

    const/4 v5, 0x0

    const v6, 0x7f080093

    aput v6, v4, v5

    invoke-static {v2, v3, v4, v7}, Lcom/vent/d/e;->a(Landroid/content/Context;I[IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/am;->onResume()V

    invoke-virtual {p0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BM()V

    invoke-virtual {p0}, Lcom/vent/as;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BW()V

    return-void
.end method
