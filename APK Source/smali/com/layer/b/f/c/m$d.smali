.class final Lcom/layer/b/f/c/m$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/c/m;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/m$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    check-cast p2, Lcom/layer/b/f/c/m;

    check-cast p1, Lc/a/a/b/n;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_a
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_b
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->K()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_c
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_d
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->N()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_e
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->O()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_f
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_10
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_11
    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_12
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    iget v0, v0, Lcom/layer/b/f/c/o;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_13
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->r()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->t()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p2, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_15
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_16
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p2, Lcom/layer/b/f/c/m;->f:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(J)V

    :cond_17
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_18
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p2, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Z)V

    :cond_19
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_1a
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/h;->b(Lc/a/a/b/h;)V

    :cond_1b
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1c
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p2, Lcom/layer/b/f/c/m;->bEN:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_1d
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->K()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p2, Lcom/layer/b/f/c/m;->bEO:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_1e
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-wide v0, p2, Lcom/layer/b/f/c/m;->n:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(J)V

    :cond_1f
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->N()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/p;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/p;->b(Lc/a/a/b/h;)V

    goto :goto_3

    :cond_20
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->O()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_21
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    goto :goto_5

    :cond_22
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v8, 0xc

    const/4 v1, 0x0

    const/16 v7, 0xb

    check-cast p2, Lcom/layer/b/f/c/m;

    check-cast p1, Lc/a/a/b/n;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/o;->dG(I)Lcom/layer/b/f/c/o;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v0, Ljava/util/HashSet;

    iget v4, v3, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    move v0, v1

    :goto_0
    iget v4, v3, Lc/a/a/b/l;->b:I

    if-ge v0, v4, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yg()V

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/n;->LA()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/layer/b/f/c/m;->f:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yl()V

    :cond_5
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v3, Lc/a/a/b/g;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v7, v7, v0}, Lc/a/a/b/g;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v4, v3, Lc/a/a/b/g;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    move v0, v1

    :goto_1
    iget v4, v3, Lc/a/a/b/g;->c:I

    if-ge v0, v4, :cond_6

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lc/a/a/b/n;->q()Z

    move-result v0

    iput-boolean v0, p2, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zc()V

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    :cond_8
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/layer/b/f/c/h;

    invoke-direct {v0}, Lcom/layer/b/f/c/h;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/h;->a(Lc/a/a/b/h;)V

    :cond_9
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v3, Lc/a/a/b/g;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v7, v7, v0}, Lc/a/a/b/g;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v4, v3, Lc/a/a/b/g;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v4, v3, Lc/a/a/b/g;->c:I

    if-ge v0, v4, :cond_a

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/m;->bEN:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zf()V

    :cond_b
    invoke-virtual {v2, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/m;->bEO:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yt()V

    :cond_c
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lc/a/a/b/n;->LA()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/layer/b/f/c/m;->n:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zh()V

    :cond_d
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v3, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v8, v0}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v0, Ljava/util/HashSet;

    iget v4, v3, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    move v0, v1

    :goto_3
    iget v4, v3, Lc/a/a/b/l;->b:I

    if-ge v0, v4, :cond_e

    new-instance v4, Lcom/layer/b/f/c/p;

    invoke-direct {v4}, Lcom/layer/b/f/c/p;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/c/p;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v3, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v0, Ljava/util/HashSet;

    iget v4, v3, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    move v0, v1

    :goto_4
    iget v4, v3, Lc/a/a/b/l;->b:I

    if-ge v0, v4, :cond_f

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lc/a/a/b/g;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v3

    invoke-direct {v0, v7, v7, v3}, Lc/a/a/b/g;-><init>(BBI)V

    new-instance v3, Ljava/util/HashMap;

    iget v4, v0, Lc/a/a/b/g;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    :goto_5
    iget v3, v0, Lc/a/a/b/g;->c:I

    if-ge v1, v3, :cond_10

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    :cond_11
    return-void
.end method
