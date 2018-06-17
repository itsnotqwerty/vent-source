.class final Lcom/layer/b/f/a/l$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/a/l;",
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

    invoke-direct {p0}, Lcom/layer/b/f/a/l$d;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/a/l;

    check-cast p1, Lc/a/a/b/n;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->xi()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->xE()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_a
    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/a;->b(Lc/a/a/b/h;)V

    :cond_b
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/c;->b(Lc/a/a/b/h;)V

    :cond_c
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_d
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/g;->b(Lc/a/a/b/h;)V

    :cond_f
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->xi()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p2, Lcom/layer/b/f/a/l;->f:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_10
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/c;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/c;->b(Lc/a/a/b/h;)V

    goto :goto_2

    :cond_11
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/h;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/h;->b(Lc/a/a/b/h;)V

    goto :goto_3

    :cond_12
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/i;->b(Lc/a/a/b/h;)V

    :cond_13
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/j;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/j;->b(Lc/a/a/b/h;)V

    goto :goto_4

    :cond_14
    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->xE()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p2, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/i;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/i;->b(Lc/a/a/b/h;)V

    goto :goto_5

    :cond_15
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

    check-cast p2, Lcom/layer/b/f/a/l;

    check-cast p1, Lc/a/a/b/n;

    invoke-virtual {p1, v7}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/layer/b/f/a/a;

    invoke-direct {v0}, Lcom/layer/b/f/a/a;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzO:Lcom/layer/b/f/a/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/a;->a(Lc/a/a/b/h;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/layer/b/f/a/c;

    invoke-direct {v0}, Lcom/layer/b/f/a/c;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzP:Lcom/layer/b/f/a/c;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/c;->a(Lc/a/a/b/h;)V

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Lc/a/a/b/f;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lc/a/a/b/f;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    move v0, v1

    :goto_0
    iget v4, v3, Lc/a/a/b/f;->b:I

    if-ge v0, v4, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/a/l;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Lc/a/a/b/f;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lc/a/a/b/f;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    move v0, v1

    :goto_1
    iget v4, v3, Lc/a/a/b/f;->b:I

    if-ge v0, v4, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/a/l;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/layer/b/f/a/g;

    invoke-direct {v0}, Lcom/layer/b/f/a/g;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzQ:Lcom/layer/b/f/a/g;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/g;->a(Lc/a/a/b/h;)V

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/a/l;->f:I

    invoke-virtual {p2}, Lcom/layer/b/f/a/l;->xF()V

    :cond_5
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v3, Lc/a/a/b/f;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v6, v0}, Lc/a/a/b/f;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v4, v3, Lc/a/a/b/f;->b:I

    if-ge v0, v4, :cond_6

    new-instance v4, Lcom/layer/b/f/a/c;

    invoke-direct {v4}, Lcom/layer/b/f/a/c;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/a/c;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/a/l;->bzR:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v3, Lc/a/a/b/f;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v6, v0}, Lc/a/a/b/f;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    move v0, v1

    :goto_3
    iget v4, v3, Lc/a/a/b/f;->b:I

    if-ge v0, v4, :cond_7

    new-instance v4, Lcom/layer/b/f/a/h;

    invoke-direct {v4}, Lcom/layer/b/f/a/h;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/a/h;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/a/l;->bzS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/layer/b/f/a/i;

    invoke-direct {v0}, Lcom/layer/b/f/a/i;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    iget-object v0, p2, Lcom/layer/b/f/a/l;->bzT:Lcom/layer/b/f/a/i;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/i;->a(Lc/a/a/b/h;)V

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

    iput-object v0, p2, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    move v0, v1

    :goto_4
    iget v4, v3, Lc/a/a/b/f;->b:I

    if-ge v0, v4, :cond_9

    new-instance v4, Lcom/layer/b/f/a/j;

    invoke-direct {v4}, Lcom/layer/b/f/a/j;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/a/j;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/a/l;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lc/a/a/b/f;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v2

    invoke-direct {v0, v6, v2}, Lc/a/a/b/f;-><init>(BI)V

    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lc/a/a/b/f;->b:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    :goto_5
    iget v2, v0, Lc/a/a/b/f;->b:I

    if-ge v1, v2, :cond_a

    new-instance v2, Lcom/layer/b/f/a/i;

    invoke-direct {v2}, Lcom/layer/b/f/a/i;-><init>()V

    invoke-virtual {v2, p1}, Lcom/layer/b/f/a/i;->a(Lc/a/a/b/h;)V

    iget-object v3, p2, Lcom/layer/b/f/a/l;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method
