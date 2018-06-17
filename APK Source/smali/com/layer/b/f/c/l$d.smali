.class final Lcom/layer/b/f/c/l$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/c/l;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/b/f/c/l$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    check-cast p2, Lcom/layer/b/f/c/l;

    check-cast p1, Lc/a/a/b/n;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->k()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_a
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_b
    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/b;->b(Lc/a/a/b/h;)V

    :cond_c
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/d;->b(Lc/a/a/b/h;)V

    :cond_d
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/m;->b(Lc/a/a/b/h;)V

    :cond_e
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/m;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/m;->b(Lc/a/a/b/h;)V

    goto :goto_0

    :cond_f
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/n;->b(Lc/a/a/b/h;)V

    :cond_10
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/a;->b(Lc/a/a/b/h;)V

    goto :goto_1

    :cond_11
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/p;->b(Lc/a/a/b/h;)V

    :cond_12
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/p;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/p;->b(Lc/a/a/b/h;)V

    goto :goto_2

    :cond_13
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    :cond_14
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/d;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/d;->b(Lc/a/a/b/h;)V

    goto :goto_4

    :cond_15
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_17
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v7, 0xb

    const/16 v6, 0xc

    const/4 v1, 0x0

    check-cast p2, Lcom/layer/b/f/c/l;

    check-cast p1, Lc/a/a/b/n;

    invoke-virtual {p1, v6}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/layer/b/f/c/b;

    invoke-direct {v0}, Lcom/layer/b/f/c/b;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/b;->a(Lc/a/a/b/h;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/layer/b/f/c/d;

    invoke-direct {v0}, Lcom/layer/b/f/c/d;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/d;->a(Lc/a/a/b/h;)V

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/layer/b/f/c/m;

    invoke-direct {v0}, Lcom/layer/b/f/c/m;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/m;->a(Lc/a/a/b/h;)V

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v6, v0}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v0, Ljava/util/HashSet;

    iget v4, v3, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    move v0, v1

    :goto_0
    iget v4, v3, Lc/a/a/b/l;->b:I

    if-ge v0, v4, :cond_3

    new-instance v4, Lcom/layer/b/f/c/m;

    invoke-direct {v4}, Lcom/layer/b/f/c/m;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/c/m;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/layer/b/f/c/n;

    invoke-direct {v0}, Lcom/layer/b/f/c/n;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/n;->a(Lc/a/a/b/h;)V

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v3, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v6, v0}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v0, Ljava/util/HashSet;

    iget v4, v3, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    move v0, v1

    :goto_1
    iget v4, v3, Lc/a/a/b/l;->b:I

    if-ge v0, v4, :cond_5

    new-instance v4, Lcom/layer/b/f/c/a;

    invoke-direct {v4}, Lcom/layer/b/f/c/a;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/c/a;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/layer/b/f/c/p;

    invoke-direct {v0}, Lcom/layer/b/f/c/p;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/p;->a(Lc/a/a/b/h;)V

    :cond_6
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v3, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v6, v0}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v0, Ljava/util/HashSet;

    iget v4, v3, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    move v0, v1

    :goto_2
    iget v4, v3, Lc/a/a/b/l;->b:I

    if-ge v0, v4, :cond_7

    new-instance v4, Lcom/layer/b/f/c/p;

    invoke-direct {v4}, Lcom/layer/b/f/c/p;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/c/p;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v3, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v0, Ljava/util/HashSet;

    iget v4, v3, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    move v0, v1

    :goto_3
    iget v4, v3, Lc/a/a/b/l;->b:I

    if-ge v0, v4, :cond_8

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v3, Lc/a/a/b/f;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v6, v0}, Lc/a/a/b/f;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    move v0, v1

    :goto_4
    iget v4, v3, Lc/a/a/b/f;->b:I

    if-ge v0, v4, :cond_9

    new-instance v4, Lcom/layer/b/f/c/d;

    invoke-direct {v4}, Lcom/layer/b/f/c/d;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/c/d;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v3, Ljava/util/HashSet;

    iget v4, v0, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    :goto_5
    iget v3, v0, Lc/a/a/b/l;->b:I

    if-ge v1, v3, :cond_a

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    :cond_b
    return-void
.end method
