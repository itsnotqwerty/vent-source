.class final Landroid/support/v7/widget/bv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/bv$a;,
        Landroid/support/v7/widget/bv$b;
    }
.end annotation


# instance fields
.field final akF:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            "Landroid/support/v7/widget/bv$a;",
            ">;"
        }
    .end annotation
.end field

.field final akG:Landroid/support/v4/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/f",
            "<",
            "Landroid/support/v7/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    new-instance v0, Landroid/support/v4/g/f;

    invoke-direct {v0}, Landroid/support/v4/g/f;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bv;->akG:Landroid/support/v4/g/f;

    return-void
.end method


# virtual methods
.method final a(JLandroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akG:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/g/f;->put(JLjava/lang/Object;)V

    return-void
.end method

.method final a(Landroid/support/v7/widget/bv$b;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    iget-object v1, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/g/a;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bv$a;

    iget v3, v1, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p1, v0}, Landroid/support/v7/widget/bv$b;->i(Landroid/support/v7/widget/RecyclerView$x;)V

    :goto_1
    invoke-static {v1}, Landroid/support/v7/widget/bv$a;->a(Landroid/support/v7/widget/bv$a;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget v3, v1, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    if-nez v3, :cond_1

    invoke-interface {p1, v0}, Landroid/support/v7/widget/bv$b;->i(Landroid/support/v7/widget/RecyclerView$x;)V

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    iget-object v4, v1, Landroid/support/v7/widget/bv$a;->akI:Landroid/support/v7/widget/RecyclerView$f$b;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/bv$b;->a(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)V

    goto :goto_1

    :cond_2
    iget v3, v1, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    iget-object v3, v1, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    iget-object v4, v1, Landroid/support/v7/widget/bv$a;->akI:Landroid/support/v7/widget/RecyclerView$f$b;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/bv$b;->b(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)V

    goto :goto_1

    :cond_3
    iget v3, v1, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    iget-object v3, v1, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    iget-object v4, v1, Landroid/support/v7/widget/bv$a;->akI:Landroid/support/v7/widget/RecyclerView$f$b;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/bv$b;->c(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)V

    goto :goto_1

    :cond_4
    iget v3, v1, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget-object v3, v1, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    const/4 v4, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/bv$b;->a(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)V

    goto :goto_1

    :cond_5
    iget v3, v1, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    iget-object v4, v1, Landroid/support/v7/widget/bv$a;->akI:Landroid/support/v7/widget/RecyclerView$f$b;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/bv$b;->b(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)V

    goto :goto_1

    :cond_6
    iget v0, v1, Landroid/support/v7/widget/bv$a;->flags:I

    goto :goto_1

    :cond_7
    return-void
.end method

.method final b(Landroid/support/v7/widget/RecyclerView$x;I)Landroid/support/v7/widget/RecyclerView$f$b;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bv$a;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    iget v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    iget-object v1, v0, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    :goto_1
    iget v3, v0, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/g/a;->removeAt(I)Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/widget/bv$a;->a(Landroid/support/v7/widget/bv$a;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    iget-object v1, v0, Landroid/support/v7/widget/bv$a;->akI:Landroid/support/v7/widget/RecyclerView$f$b;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide flag PRE or POST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bv$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/bv$a;->jd()Landroid/support/v7/widget/bv$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    iget v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    return-void
.end method

.method final c(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bv$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/bv$a;->jd()Landroid/support/v7/widget/bv$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/bv$a;->akI:Landroid/support/v7/widget/RecyclerView$f$b;

    iget v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    return-void
.end method

.method final clear()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akG:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->clear()V

    return-void
.end method

.method final q(Landroid/support/v7/widget/RecyclerView$x;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bv$a;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final r(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bv$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/bv$a;->jd()Landroid/support/v7/widget/bv$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    return-void
.end method

.method final s(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bv$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/bv$a;->flags:I

    goto :goto_0
.end method

.method final t(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/bv;->akG:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/bv;->akG:Landroid/support/v4/g/f;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/bv;->akG:Landroid/support/v4/g/f;

    iget-object v2, v1, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    aget-object v2, v2, v0

    sget-object v3, Landroid/support/v4/g/f;->Ez:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Landroid/support/v4/g/f;->EC:[Ljava/lang/Object;

    sget-object v3, Landroid/support/v4/g/f;->Ez:Ljava/lang/Object;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v4/g/f;->EA:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bv;->akF:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bv$a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v7/widget/bv$a;->a(Landroid/support/v7/widget/bv$a;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
