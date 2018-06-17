.class public abstract Lcom/vent/aq;
.super Lcom/vent/am;

# interfaces
.implements Lcom/vent/ay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vent/l",
        "<TT;>;T:",
        "Lcom/vent/a/a;",
        ">",
        "Lcom/vent/am",
        "<TA;TT;>;",
        "Lcom/vent/ay",
        "<",
        "Lcom/vent/aq",
        "<TA;TT;>;>;"
    }
.end annotation


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

    new-instance v0, Lcom/vent/aq$1;

    invoke-direct {v0, p0}, Lcom/vent/aq$1;-><init>(Lcom/vent/aq;)V

    iput-object v0, p0, Lcom/vent/aq;->ceI:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Lcom/vent/aq;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/vent/aq;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/ay;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vent/ay;

    invoke-interface {v0, p0, p2}, Lcom/vent/ay;->a(Lcom/vent/aq;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract c(ZZZ)V
.end method

.method public final dX(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/vent/aq;->q:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/vent/aq;->q:Ljava/lang/String;

    iget v0, p0, Lcom/vent/aq;->ceH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vent/aq;->ceH:I

    iget-object v0, p0, Lcom/vent/aq;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vent/aq;->ceI:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final f(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vent/aq;->c(ZZZ)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/am;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "q"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/aq;->q:Ljava/lang/String;

    const-string v0, "q2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/aq;->bTn:Ljava/lang/String;

    const-string v0, "url_requested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/aq;->bTm:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/am;->onCreate(Landroid/os/Bundle;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/aq;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/aq;->bTn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/aq;->bTm:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/am;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "q"

    iget-object v1, p0, Lcom/vent/aq;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q2"

    iget-object v1, p0, Lcom/vent/aq;->bTn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url_requested"

    iget-object v1, p0, Lcom/vent/aq;->bTm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
