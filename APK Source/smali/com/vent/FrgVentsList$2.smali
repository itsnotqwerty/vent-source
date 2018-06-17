.class final Lcom/vent/FrgVentsList$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgVentsList;->f(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic cfH:Lcom/vent/FrgVentsList;


# direct methods
.method constructor <init>(Lcom/vent/FrgVentsList;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iput-boolean p2, p0, Lcom/vent/FrgVentsList$2;->bTp:Z

    iput-boolean p3, p0, Lcom/vent/FrgVentsList$2;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/vent/FrgVentsList$2;->bTp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-boolean v0, v0, Lcom/vent/s;->bZp:Z

    if-nez v0, :cond_3

    :cond_0
    move v6, v1

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-boolean v0, v0, Lcom/vent/s;->bZp:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/vent/bb;->cje:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->CH()V

    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    invoke-virtual {v0}, Lcom/vent/FrgVentsList;->Dw()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iput-boolean v1, v0, Lcom/vent/s;->cbc:Z

    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iput-boolean v1, v0, Lcom/vent/s;->bZp:Z

    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0, v1}, Lcom/vent/s;->bb(Z)V

    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->CB()V

    :cond_5
    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    invoke-virtual {v0}, Lcom/vent/FrgVentsList;->Dw()V

    if-eqz v6, :cond_7

    iget-boolean v0, p0, Lcom/vent/FrgVentsList$2;->bTq:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    invoke-virtual {v0}, Lcom/vent/FrgVentsList;->getParentFragment()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/vent/FrgVentsList$a;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/vent/FrgVentsList$a;

    invoke-interface {v0}, Lcom/vent/FrgVentsList$a;->Bw()V

    :cond_6
    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    invoke-virtual {v0}, Lcom/vent/FrgVentsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/vent/FrgVentsList$a;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/vent/FrgVentsList$a;

    invoke-interface {v0}, Lcom/vent/FrgVentsList$a;->Bw()V

    :cond_7
    iget-object v0, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v0, v0, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v0, Lcom/vent/s;

    iget-boolean v1, p0, Lcom/vent/FrgVentsList$2;->bTq:Z

    invoke-virtual {v0, v6, v1}, Lcom/vent/s;->g(ZZ)V

    new-instance v0, Lcom/vent/FrgVentsList$2$1;

    iget-object v1, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    iget-object v2, v1, Lcom/vent/FrgVentsList;->cdb:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    invoke-virtual {v1}, Lcom/vent/FrgVentsList;->getActivity()Landroid/support/v4/app/j;

    move-result-object v3

    iget-object v5, p0, Lcom/vent/FrgVentsList$2;->cfH:Lcom/vent/FrgVentsList;

    if-eqz v6, :cond_a

    const/16 v1, 0xa

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/vent/FrgVentsList;->url:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v5, Lcom/vent/FrgVentsList;->url:Ljava/lang/String;

    const-string v8, "?"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "&"

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "per_page="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v6, :cond_8

    iget-object v1, v5, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-nez v1, :cond_c

    :cond_8
    const/4 v1, 0x0

    :goto_4
    iget v7, v5, Lcom/vent/FrgVentsList;->cfF:I

    packed-switch v7, :pswitch_data_0

    :cond_9
    :goto_5
    const-string v5, "GET"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vent/FrgVentsList$2$1;-><init>(Lcom/vent/FrgVentsList$2;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto/16 :goto_1

    :cond_a
    const/16 v1, 0xf

    goto :goto_2

    :cond_b
    const-string v4, "?"

    goto :goto_3

    :cond_c
    iget-object v1, v5, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/s;

    invoke-virtual {v1}, Lcom/vent/s;->CT()Lcom/vent/a/z;

    move-result-object v1

    goto :goto_4

    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "&from%5border%5d=desc"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "&from%5bfield%5d=created_at&from%5bvalue%5d="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_e

    iget-wide v8, v5, Lcom/vent/FrgVentsList;->bWj:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_d

    const-string v1, "9999-01-01T00:00:00.000Z"

    :goto_6
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/util/Date;

    iget-wide v8, v5, Lcom/vent/FrgVentsList;->bWj:J

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_e
    iget-object v1, v1, Lcom/vent/a/z;->cjA:Ljava/util/Date;

    invoke-static {v1}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :pswitch_1
    if-eqz v1, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&from%5bfield%5d%5b%5d=index_score&from%5bvalue%5d%5b%5d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/vent/a/z;->clb:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&from%5bfield%5d%5b%5d=id&from%5bvalue%5d%5b%5d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
