.class public Landroid/support/constraint/a/a/n;
.super Landroid/support/constraint/a/a/d;


# instance fields
.field protected ib:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/constraint/a/a/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/a/d;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    check-cast v0, Landroid/support/constraint/a/a/n;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/n;->c(Landroid/support/constraint/a/a/d;)V

    :cond_0
    iput-object p0, p1, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    return-void
.end method

.method public final a(Landroid/support/constraint/a/c;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aK()V
    .locals 5

    invoke-super {p0}, Landroid/support/constraint/a/a/d;->aK()V

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/n;->aE()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/n;->aF()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/support/constraint/a/a/d;->b(II)V

    instance-of v3, v0, Landroid/support/constraint/a/a/e;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->aK()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public aQ()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/constraint/a/a/n;->aK()V

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    instance-of v3, v0, Landroid/support/constraint/a/a/n;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/support/constraint/a/a/n;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/n;->aQ()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final aW()Landroid/support/constraint/a/a/e;
    .locals 3

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    const/4 v0, 0x0

    instance-of v2, p0, Landroid/support/constraint/a/a/e;

    if-eqz v2, :cond_2

    check-cast p0, Landroid/support/constraint/a/a/e;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    instance-of v0, v1, Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/support/constraint/a/a/e;

    move-object p0, v0

    move-object v1, v2

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public final aX()V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final b(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/support/constraint/a/a/d;->b(II)V

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/n;->aG()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/n;->aH()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/support/constraint/a/a/d;->b(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroid/support/constraint/a/a/d;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/n;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/support/constraint/a/a/d;->reset()V

    return-void
.end method
