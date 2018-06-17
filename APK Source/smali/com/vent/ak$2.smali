.class final Lcom/vent/ak$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ak;->c(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic cet:Z

.field final synthetic cey:Lcom/vent/ak;


# direct methods
.method constructor <init>(Lcom/vent/ak;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iput-boolean p2, p0, Lcom/vent/ak$2;->cet:Z

    iput-boolean p3, p0, Lcom/vent/ak$2;->bTp:Z

    iput-boolean p4, p0, Lcom/vent/ak$2;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/vent/ak$2;->cet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vent/ak$2;->bTp:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-boolean v0, v0, Lcom/vent/i;->bZp:Z

    if-nez v0, :cond_4

    :cond_0
    move v7, v2

    :goto_0
    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-boolean v0, v0, Lcom/vent/i;->bZp:Z

    if-eqz v0, :cond_1

    if-eqz v7, :cond_3

    :cond_1
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/vent/bb;->cje:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->CH()V

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    invoke-virtual {v0}, Lcom/vent/ak;->Dw()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v7, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iput-boolean v2, v0, Lcom/vent/i;->cbc:Z

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iput-boolean v2, v0, Lcom/vent/i;->bZp:Z

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-boolean v0, v0, Lcom/vent/i$a;->caL:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iput-boolean v1, v0, Lcom/vent/i$a;->caL:Z

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-object v1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->CL()I

    move-result v3

    iget-object v1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->Cw()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/vent/i;->notifyItemRemoved(I)V

    :cond_6
    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0, v2}, Lcom/vent/i;->bb(Z)V

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    invoke-virtual {v0}, Lcom/vent/i;->CB()V

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, v1, Lcom/vent/ak;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/vent/ak;->bTn:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    invoke-virtual {v0}, Lcom/vent/ak;->Dw()V

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v0, v0, Lcom/vent/ak;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/i;

    iget-boolean v1, p0, Lcom/vent/ak$2;->bTq:Z

    invoke-virtual {v0, v7, v1}, Lcom/vent/i;->g(ZZ)V

    iget-object v0, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v2, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    invoke-virtual {v1, v2, v7}, Lcom/vent/ak;->a(Lcom/vent/aq;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/ak;->bTm:Ljava/lang/String;

    new-instance v0, Lcom/vent/ak$2$1;

    iget-object v1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v2, v1, Lcom/vent/ak;->cdb:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    invoke-virtual {v1}, Lcom/vent/ak;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    iget-object v1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-object v4, v1, Lcom/vent/ak;->bTm:Ljava/lang/String;

    const-string v5, "GET"

    iget-object v1, p0, Lcom/vent/ak$2;->cey:Lcom/vent/ak;

    iget-boolean v6, v1, Lcom/vent/ak;->cew:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/vent/ak$2$1;-><init>(Lcom/vent/ak$2;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto/16 :goto_1
.end method
