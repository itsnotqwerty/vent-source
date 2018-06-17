.class final Lcom/vent/aj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/aj;->f(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic ceo:Lcom/vent/aj;


# direct methods
.method constructor <init>(Lcom/vent/aj;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iput-boolean p2, p0, Lcom/vent/aj$2;->bTp:Z

    iput-boolean p3, p0, Lcom/vent/aj$2;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/vent/aj$2;->bTp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-boolean v0, v0, Lcom/vent/r;->bZp:Z

    if-nez v0, :cond_3

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-boolean v0, v0, Lcom/vent/r;->bZp:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/vent/bb;->cje:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0}, Lcom/vent/r;->CH()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iput-boolean v2, v0, Lcom/vent/r;->cbc:Z

    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iput-boolean v2, v0, Lcom/vent/r;->bZp:Z

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0, v2}, Lcom/vent/r;->bb(Z)V

    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    invoke-virtual {v0}, Lcom/vent/r;->CB()V

    :cond_5
    iget-object v0, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    iget-object v0, v0, Lcom/vent/aj;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/r;

    iget-boolean v2, p0, Lcom/vent/aj$2;->bTq:Z

    invoke-virtual {v0, v1, v2}, Lcom/vent/r;->g(ZZ)V

    new-instance v0, Lcom/vent/aj$2$1;

    iget-object v1, p0, Lcom/vent/aj$2;->ceo:Lcom/vent/aj;

    invoke-virtual {v1}, Lcom/vent/aj;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    const-string v3, "api/v1/users/suggested.json"

    const-string v4, "GET"

    const-string v5, "suggested_users"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/aj$2$1;-><init>(Lcom/vent/aj$2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_1
.end method
