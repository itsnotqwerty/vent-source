.class final Lcom/vent/FrgProfile$13;
.super Lcom/vent/FrgProfile$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgProfile;->onMenuItemClick(Landroid/view/MenuItem;)Z
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

    iput-object p1, p0, Lcom/vent/FrgProfile$13;->cfr:Lcom/vent/FrgProfile;

    invoke-direct {p0, p1}, Lcom/vent/FrgProfile$b;-><init>(Lcom/vent/FrgProfile;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vent/FrgProfile$13;->cfr:Lcom/vent/FrgProfile;

    iget-object v0, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgProfile$13;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->DL()Lcom/vent/a/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Lcom/vent/a/x;->flags:I

    iget v1, v0, Lcom/vent/a/x;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/vent/a/x;->flags:I

    iget-object v1, p0, Lcom/vent/FrgProfile$13;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v1}, Lcom/vent/FrgProfile;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-super {p0}, Lcom/vent/FrgProfile$b;->run()V

    iget-boolean v0, p0, Lcom/vent/FrgProfile$13;->cog:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile$13;->cfr:Lcom/vent/FrgProfile;

    iget-object v0, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile$13;->cfr:Lcom/vent/FrgProfile;

    iget-object v0, v0, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fk()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/FrgProfile$13;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/ax;->bh(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
