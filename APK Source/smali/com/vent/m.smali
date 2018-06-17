.class abstract Lcom/vent/m;
.super Lcom/vent/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vent/a/b;",
        ">",
        "Lcom/vent/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public bZY:J

.field public cbf:Z

.field cbg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vent/l;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method public CB()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vent/m;->bZY:J

    return-void
.end method

.method public CC()V
    .locals 1

    invoke-super {p0}, Lcom/vent/l;->CC()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    return-void
.end method

.method final CD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vent/m;->cbf:Z

    return v0
.end method

.method public CG()Landroid/os/Bundle;
    .locals 4

    invoke-super {p0}, Lcom/vent/l;->CG()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    iget-object v2, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "needmore"

    iget-boolean v2, p0, Lcom/vent/m;->cbf:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "age"

    iget-wide v2, p0, Lcom/vent/m;->bZY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final CP()Lcom/vent/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/b;

    goto :goto_0
.end method

.method Cw()I
    .locals 1

    iget-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final aZ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vent/m;->cbf:Z

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/vent/m;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/vent/l;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vent/m;->ew(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/b;

    iget-object v0, v0, Lcom/vent/a/b;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public t(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/l;->t(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/m;->cbg:Ljava/util/ArrayList;

    const-string v0, "needmore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/m;->cbf:Z

    const-string v0, "age"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/m;->bZY:J

    invoke-virtual {p0, v2, v2}, Lcom/vent/m;->g(ZZ)V

    :cond_0
    return-void
.end method
