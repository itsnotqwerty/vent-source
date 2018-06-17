.class public abstract Lcom/vent/av;
.super Lcom/vent/aq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vent/l",
        "<TT;>;T:",
        "Lcom/vent/a/b;",
        ">",
        "Lcom/vent/aq",
        "<TA;TT;>;"
    }
.end annotation


# instance fields
.field ccJ:Ljava/lang/String;

.field cdb:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/aq;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/av;->ccJ:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vent/av;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final Dx()I
    .locals 3

    invoke-virtual {p0}, Lcom/vent/av;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "noitemstext"

    const v2, 0x7f0f00d3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final em()V
    .locals 2

    invoke-super {p0}, Lcom/vent/aq;->em()V

    invoke-virtual {p0}, Lcom/vent/av;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vent/e;

    invoke-virtual {v0}, Lcom/vent/e;->em()V

    :cond_0
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    const v0, 0x7f0b0070

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/vent/aq;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method
