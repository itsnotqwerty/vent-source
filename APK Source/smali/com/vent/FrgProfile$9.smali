.class final Lcom/vent/FrgProfile$9;
.super Lcom/vent/FrgProfile$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgProfile;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfr:Lcom/vent/FrgProfile;


# direct methods
.method constructor <init>(Lcom/vent/FrgProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgProfile$9;->cfr:Lcom/vent/FrgProfile;

    invoke-direct {p0, p1}, Lcom/vent/FrgProfile$b;-><init>(Lcom/vent/FrgProfile;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-super {p0}, Lcom/vent/FrgProfile$b;->run()V

    iget-boolean v0, p0, Lcom/vent/FrgProfile$9;->cog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile$9;->cfr:Lcom/vent/FrgProfile;

    iget-object v0, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile$9;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile$9;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/ax;->bf(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
