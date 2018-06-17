.class final Lcom/vent/FrgSearchBoth$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgSearchBoth;->c(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic cet:Z

.field final synthetic cfy:Lcom/vent/FrgSearchBoth;


# direct methods
.method constructor <init>(Lcom/vent/FrgSearchBoth;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iput-boolean p2, p0, Lcom/vent/FrgSearchBoth$3;->cet:Z

    iput-boolean p3, p0, Lcom/vent/FrgSearchBoth$3;->bTp:Z

    iput-boolean p4, p0, Lcom/vent/FrgSearchBoth$3;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/vent/FrgSearchBoth$3;->cet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vent/FrgSearchBoth$3;->bTp:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-boolean v0, v0, Lcom/vent/q;->bZp:Z

    if-nez v0, :cond_5

    :cond_0
    move v1, v3

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-boolean v0, v0, Lcom/vent/q;->bZp:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->CH()V

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0, v3}, Lcom/vent/q;->bb(Z)V

    :cond_2
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iput-boolean v3, v0, Lcom/vent/q;->cbc:Z

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iput-boolean v3, v0, Lcom/vent/q;->bZp:Z

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iget-boolean v3, p0, Lcom/vent/FrgSearchBoth$3;->bTq:Z

    invoke-virtual {v0, v1, v3}, Lcom/vent/q;->g(ZZ)V

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v1, v1, Lcom/vent/FrgSearchBoth;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    const-string v1, "api/v1/search_suggestions.json?per_page=4"

    iput-object v1, v0, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v3, v1, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&q%5bvalue_start%5d="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v3, v3, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/vent/FrgSearchBoth;->cfw:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/vent/FrgSearchBoth;->cfx:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v0, v4

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iput-boolean v2, v0, Lcom/vent/q;->bZp:Z

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    sget-object v1, Lcom/vent/FrgSearchBoth;->cfw:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    iput-boolean v2, v0, Lcom/vent/q;->cbf:Z

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    sget-wide v4, Lcom/vent/FrgSearchBoth;->cfx:J

    iput-wide v4, v0, Lcom/vent/q;->bZY:J

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0, v2, v2}, Lcom/vent/q;->g(ZZ)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v1, v2

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/vent/FrgSearchBoth$3$1;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    invoke-virtual {v1}, Lcom/vent/FrgSearchBoth;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v2, v2, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/FrgSearchBoth$3$1;-><init>(Lcom/vent/FrgSearchBoth$3;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/FrgSearchBoth;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/q;

    invoke-virtual {v0}, Lcom/vent/q;->CP()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iget-object v2, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/users/search.json?q="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v3, v3, Lcom/vent/FrgSearchBoth;->bTn:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&per_page="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_9

    const/16 v1, 0xf

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v3, v2, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&from%5border%5d=asc&from%5bfield%5d=username&from%5bvalue%5d="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    :cond_8
    new-instance v0, Lcom/vent/FrgSearchBoth$3$2;

    iget-object v1, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    invoke-virtual {v1}, Lcom/vent/FrgSearchBoth;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/FrgSearchBoth$3;->cfy:Lcom/vent/FrgSearchBoth;

    iget-object v2, v2, Lcom/vent/FrgSearchBoth;->bTm:Ljava/lang/String;

    const-string v3, "GET"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vent/FrgSearchBoth$3$2;-><init>(Lcom/vent/FrgSearchBoth$3;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x19

    goto :goto_2
.end method
