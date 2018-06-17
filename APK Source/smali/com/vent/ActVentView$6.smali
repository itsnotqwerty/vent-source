.class final Lcom/vent/ActVentView$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVentView;->a(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTq:Z

.field final synthetic bZB:Lcom/vent/ActVentView;

.field final synthetic bZC:Z

.field final synthetic bZD:I


# direct methods
.method constructor <init>(Lcom/vent/ActVentView;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iput-boolean p2, p0, Lcom/vent/ActVentView$6;->bTq:Z

    iput-boolean p3, p0, Lcom/vent/ActVentView$6;->bZC:Z

    iput p4, p0, Lcom/vent/ActVentView$6;->bZD:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-boolean v0, v0, Lcom/vent/g;->bZp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/g;->bZY:J

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vent/g;->bZH:Z

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0}, Lcom/vent/g;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-boolean v1, p0, Lcom/vent/ActVentView$6;->bTq:Z

    invoke-virtual {v0, v1}, Lcom/vent/g;->ba(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iput-boolean v4, v0, Lcom/vent/g;->bZp:Z

    iget-boolean v0, p0, Lcom/vent/ActVentView$6;->bZC:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v1}, Lcom/vent/g;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Lcom/vent/g;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vent/g;->bZY:J

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iput-boolean v4, v0, Lcom/vent/g;->bZH:Z

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v4}, Lcom/vent/g;->notifyItemInserted(I)V

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-boolean v1, p0, Lcom/vent/ActVentView$6;->bTq:Z

    invoke-virtual {v0, v1}, Lcom/vent/g;->ba(Z)V

    iget-boolean v0, p0, Lcom/vent/ActVentView$6;->bZC:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/vents/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/comments.json?per_page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vent/ActVentView$6;->bZD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from%5border%5d=desc&from%5bfield%5d=created_at&from%5bvalue%5d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_7

    const-string v0, "9999-01-01T00:00:00.000Z"

    :goto_3
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vent/ActVentView$6$1;

    iget-object v2, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    const-string v3, "GET"

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/vent/ActVentView$6$1;-><init>(Lcom/vent/ActVentView$6;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-boolean v0, v0, Lcom/vent/g;->bZH:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_5
    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v4}, Lcom/vent/g;->notifyItemRemoved(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/ActVentView$6;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/d;

    goto :goto_2

    :cond_7
    iget-object v0, v0, Lcom/vent/a/d;->cjA:Ljava/util/Date;

    invoke-static {v0}, Lcom/vent/d/c;->k(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
