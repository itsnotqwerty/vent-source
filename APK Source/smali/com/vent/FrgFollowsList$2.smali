.class final Lcom/vent/FrgFollowsList$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgFollowsList;->c(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic ces:Lcom/vent/FrgFollowsList;

.field final synthetic cet:Z


# direct methods
.method constructor <init>(Lcom/vent/FrgFollowsList;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iput-boolean p2, p0, Lcom/vent/FrgFollowsList$2;->cet:Z

    iput-boolean p3, p0, Lcom/vent/FrgFollowsList$2;->bTp:Z

    iput-boolean p4, p0, Lcom/vent/FrgFollowsList$2;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/vent/FrgFollowsList$2;->cet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vent/FrgFollowsList$2;->bTp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-boolean v0, v0, Lcom/vent/h;->bZp:Z

    if-nez v0, :cond_3

    :cond_0
    move v8, v1

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-boolean v0, v0, Lcom/vent/h;->bZp:Z

    if-eqz v0, :cond_1

    if-eqz v8, :cond_2

    :cond_1
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CH()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    invoke-virtual {v0}, Lcom/vent/FrgFollowsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    if-eqz v8, :cond_5

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v2, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v2, v2, Lcom/vent/FrgFollowsList;->q:Ljava/lang/String;

    iput-object v2, v0, Lcom/vent/FrgFollowsList;->bTn:Ljava/lang/String;

    :cond_5
    iget-object v2, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    instance-of v0, v3, Lcom/vent/ay;

    if-eqz v0, :cond_6

    move-object v0, v3

    check-cast v0, Lcom/vent/ay;

    iget-object v4, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    invoke-interface {v0, v4, v8}, Lcom/vent/ay;->a(Lcom/vent/aq;Z)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/vent/FrgFollowsList;->bTm:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->bTm:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CH()V

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/h;->bZY:J

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iput-boolean v1, v0, Lcom/vent/h;->cbc:Z

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iput-boolean v1, v0, Lcom/vent/h;->bZp:Z

    if-eqz v8, :cond_8

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0, v1}, Lcom/vent/h;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    invoke-virtual {v0}, Lcom/vent/h;->CB()V

    :cond_8
    iget-object v0, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v0, v0, Lcom/vent/FrgFollowsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/h;

    iget-boolean v1, p0, Lcom/vent/FrgFollowsList$2;->bTq:Z

    invoke-virtual {v0, v8, v1}, Lcom/vent/h;->g(ZZ)V

    new-instance v0, Lcom/vent/FrgFollowsList$2$1;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v2, v1, Lcom/vent/FrgFollowsList;->cdb:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v4, v1, Lcom/vent/FrgFollowsList;->bTm:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v5, v1, Lcom/vent/FrgFollowsList;->ccI:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v6, v1, Lcom/vent/FrgFollowsList;->ccL:Ljava/lang/String;

    iget-object v1, p0, Lcom/vent/FrgFollowsList$2;->ces:Lcom/vent/FrgFollowsList;

    iget-object v7, v1, Lcom/vent/FrgFollowsList;->ccJ:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/vent/FrgFollowsList$2$1;-><init>(Lcom/vent/FrgFollowsList$2;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto/16 :goto_1
.end method
