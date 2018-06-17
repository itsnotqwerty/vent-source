.class public final Lcom/vent/aj;
.super Lcom/vent/am;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/aj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/am",
        "<",
        "Lcom/vent/r;",
        "Lcom/vent/a/x;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field bVS:Landroid/support/design/widget/AppBarLayout;

.field cen:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/am;-><init>()V

    return-void
.end method


# virtual methods
.method public final By()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/vent/am;->By()V

    iget-object v0, p0, Lcom/vent/aj;->bVS:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/aj;->bVS:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1, v1, v1}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public final Du()V
    .locals 4

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v0, v0, Lcom/vent/r;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-wide v0, v0, Lcom/vent/r;->bZY:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vent/aj;->f(ZZ)V

    :cond_1
    return-void
.end method

.method final bd(Z)V
    .locals 7

    iget-object v0, p0, Lcom/vent/aj;->cen:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/aj;->cen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "anonymous"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "invite"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/vent/aj$3;

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    const-string v3, "api/v1/invites"

    const-string v4, "POST"

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/vent/aj$3;-><init>(Lcom/vent/aj;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final f(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/aj;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/aj$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vent/aj$2;-><init>(Lcom/vent/aj;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/am;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v2, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/r;

    iget-object v1, v1, Lcom/vent/r;->cbg:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/r;

    iget-object v1, v1, Lcom/vent/r;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :cond_1
    const-string v1, "update"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Lcom/vent/a/x;->EO()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/y;

    iget-object v1, v0, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/r;

    iget-object v1, v1, Lcom/vent/r;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    invoke-virtual {v1}, Lcom/vent/a/x;->EO()Lcom/vent/a/c;

    move-result-object v1

    check-cast v1, Lcom/vent/a/y;

    iget-object v1, v1, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    iput-object v1, v0, Lcom/vent/a/y;->ckQ:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/r;

    iget-object v1, v1, Lcom/vent/r;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v1, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/r;

    invoke-virtual {v1, v2}, Lcom/vent/r;->ex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vent/r;->notifyItemChanged(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/aj;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/vent/aj$a;

    invoke-direct {v0}, Lcom/vent/aj$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vent/aj$a;->setTargetFragment(Landroid/support/v4/app/i;I)V

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/vent/aj$a;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090184
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/am;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    new-instance v1, Lcom/vent/aj$1;

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-direct {v1, p0, v0, p0}, Lcom/vent/aj$1;-><init>(Lcom/vent/aj;Lcom/vent/a;Lcom/vent/am;)V

    iput-object v1, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0b0069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_0

    const v0, 0x7f060079

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f09003b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/vent/aj;->bVS:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    const v1, 0x7f09029d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/n;

    iput-object v1, v0, Lcom/vent/r;->cbb:Landroid/support/v4/widget/n;

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v0, v0, Lcom/vent/r;->cbb:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    const v1, 0x1020004

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/r;->cba:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v0, v0, Lcom/vent/r;->cba:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-object v0, v0, Lcom/vent/r;->cba:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/aj;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/vent/aj;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/vent/aj;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/vent/aj;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/vent/aj;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/vent/views/a;

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vent/views/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    const v0, 0x7f090184

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/aj;->cen:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/aj;->cen:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/aj;->bVS:Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/vent/aj;->cen:Landroid/view/View;

    invoke-super {p0}, Lcom/vent/am;->onDestroyView()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/am;->onResume()V

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BM()V

    invoke-virtual {p0}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActMain;

    invoke-virtual {v0}, Lcom/vent/ActMain;->BW()V

    return-void
.end method
