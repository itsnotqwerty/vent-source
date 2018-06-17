.class final Lcom/vent/au$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/au;->c(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic cet:Z

.field final synthetic cfD:Lcom/vent/au;


# direct methods
.method constructor <init>(Lcom/vent/au;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iput-boolean p2, p0, Lcom/vent/au$2;->cet:Z

    iput-boolean p3, p0, Lcom/vent/au$2;->bTp:Z

    iput-boolean p4, p0, Lcom/vent/au$2;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/vent/au$2;->cet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vent/au$2;->bTp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-boolean v0, v0, Lcom/vent/o;->bZp:Z

    if-nez v0, :cond_2

    :cond_0
    move v7, v1

    :goto_0
    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-boolean v0, v0, Lcom/vent/o;->bZp:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0}, Lcom/vent/o;->CH()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iput-boolean v1, v0, Lcom/vent/o;->cbc:Z

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    invoke-virtual {v0}, Lcom/vent/au;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    iget-object v2, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    instance-of v0, v3, Lcom/vent/ay;

    if-eqz v0, :cond_4

    move-object v0, v3

    check-cast v0, Lcom/vent/ay;

    iget-object v4, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    invoke-interface {v0, v4, v7}, Lcom/vent/ay;->a(Lcom/vent/aq;Z)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/vent/au;->bTm:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->bTm:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0}, Lcom/vent/o;->CH()V

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/o;->bZY:J

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iput-boolean v1, v0, Lcom/vent/o;->bZp:Z

    if-eqz v7, :cond_6

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0, v1}, Lcom/vent/o;->bb(Z)V

    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    invoke-virtual {v0}, Lcom/vent/o;->CB()V

    :cond_6
    iget-object v0, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v0, v0, Lcom/vent/au;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/o;

    iget-boolean v1, p0, Lcom/vent/au$2;->bTq:Z

    invoke-virtual {v0, v7, v1}, Lcom/vent/o;->g(ZZ)V

    new-instance v0, Lcom/vent/au$2$1;

    iget-object v1, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v2, v1, Lcom/vent/au;->cdb:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v4, v1, Lcom/vent/au;->bTm:Ljava/lang/String;

    const-string v5, "GET"

    iget-object v1, p0, Lcom/vent/au$2;->cfD:Lcom/vent/au;

    iget-object v6, v1, Lcom/vent/au;->ccJ:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/vent/au$2$1;-><init>(Lcom/vent/au$2;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_1
.end method
