.class public final Lcom/vent/FrgSearchBoth;
.super Lcom/vent/am;

# interfaces
.implements Landroid/support/v4/widget/n$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/am",
        "<",
        "Lcom/vent/q;",
        "Lcom/vent/a/x;",
        ">;",
        "Landroid/support/v4/widget/n$b;"
    }
.end annotation


# static fields
.field static cfw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/v;",
            ">;"
        }
    .end annotation
.end field

.field static cfx:J


# instance fields
.field bTm:Ljava/lang/String;

.field bTn:Ljava/lang/String;

.field ceH:I

.field private final ceI:Ljava/lang/Runnable;

.field q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/am;-><init>()V

    new-instance v0, Lcom/vent/FrgSearchBoth$2;

    invoke-direct {v0, p0}, Lcom/vent/FrgSearchBoth$2;-><init>(Lcom/vent/FrgSearchBoth;)V

    iput-object v0, p0, Lcom/vent/FrgSearchBoth;->ceI:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final DT()V
    .locals 1

    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vent/FrgSearchBoth;->dY(Ljava/lang/String;)V

    return-void
.end method

.method public final Du()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-object v0, v0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-wide v0, v0, Lcom/vent/q;->bZY:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/FrgSearchBoth;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4, v4}, Lcom/vent/FrgSearchBoth;->c(ZZZ)V

    :cond_1
    return-void
.end method

.method protected final Dx()I
    .locals 1

    const v0, 0x7f0f0184

    return v0
.end method

.method final c(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/FrgSearchBoth$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/vent/FrgSearchBoth$3;-><init>(Lcom/vent/FrgSearchBoth;ZZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dX(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->q:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/vent/FrgSearchBoth;->q:Ljava/lang/String;

    iget v0, p0, Lcom/vent/FrgSearchBoth;->ceH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/FrgSearchBoth;->ceH:I

    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth;->ceI:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final dY(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vent/FrgSearchBoth;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vent/ActSearchResults;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final f(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vent/FrgSearchBoth;->c(ZZZ)V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/am;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "q"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgSearchBoth;->q:Ljava/lang/String;

    const-string v0, "q2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    const-string v0, "url_requested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/vent/am;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vent/a/x;->EN()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/q;

    invoke-virtual {v1, v0}, Lcom/vent/q;->b(Lcom/vent/a/x;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/am;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    if-nez v0, :cond_0

    new-instance v1, Lcom/vent/FrgSearchBoth$1;

    invoke-virtual {p0}, Lcom/vent/FrgSearchBoth;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-direct {v1, p0, v0, p0}, Lcom/vent/FrgSearchBoth$1;-><init>(Lcom/vent/FrgSearchBoth;Lcom/vent/a;Lcom/vent/am;)V

    iput-object v1, p0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vent/q;->cbd:Z

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/vent/FrgSearchBoth;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/am;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "q"

    iget-object v1, p0, Lcom/vent/FrgSearchBoth;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q2"

    iget-object v1, p0, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url_requested"

    iget-object v1, p0, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
