.class final Lcom/layer/b/f/c/d$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/c/d;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/d$d;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/c/d;

    check-cast p1, Lc/a/a/b/n;

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    iget v0, v0, Lcom/layer/b/f/c/e;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->t()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_a
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_b
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_c
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_d
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_e
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_f
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_10
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->K()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_11
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_12
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->N()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_13
    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p2, Lcom/layer/b/f/c/d;->b:Z

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Z)V

    :cond_14
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p2, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p2, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_16
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p2, Lcom/layer/b/f/c/d;->e:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(J)V

    :cond_17
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p2, Lcom/layer/b/f/c/d;->f:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_18
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->r()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p2, Lcom/layer/b/f/c/d;->g:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_19
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->t()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-byte v0, p2, Lcom/layer/b/f/c/d;->bzH:B

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->g(B)V

    :cond_1a
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/a;->b(Lc/a/a/b/h;)V

    goto :goto_0

    :cond_1b
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p2, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p2, Lcom/layer/b/f/c/d;->bCG:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_1d
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

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

    goto :goto_1

    :cond_1e
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p2, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_1f
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-wide v0, p2, Lcom/layer/b/f/c/d;->n:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(J)V

    :cond_20
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
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

    check-cast v0, Lcom/layer/b/f/c/k;

    iget v0, v0, Lcom/layer/b/f/c/k;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    goto :goto_2

    :cond_22
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_23
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_24
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->K()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_25
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p2, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_26
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->N()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-wide v0, p2, Lcom/layer/b/f/c/d;->bCM:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(J)V

    :cond_27
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v9, 0xc

    const/16 v8, 0x8

    const/16 v7, 0xb

    const/4 v1, 0x0

    check-cast p2, Lcom/layer/b/f/c/d;

    check-cast p1, Lc/a/a/b/n;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/e;->dz(I)Lcom/layer/b/f/c/e;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/n;->q()Z

    move-result v0

    iput-boolean v0, p2, Lcom/layer/b/f/c/d;->b:Z

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xQ()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yg()V

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/n;->LA()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/layer/b/f/c/d;->e:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xF()V

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/d;->f:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yl()V

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/d;->g:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->ym()V

    :cond_5
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lc/a/a/b/n;->Lx()B

    move-result v0

    iput-byte v0, p2, Lcom/layer/b/f/c/d;->bzH:B

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yn()V

    :cond_6
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v3, Lc/a/a/b/f;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v9, v0}, Lc/a/a/b/f;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    move v0, v1

    :goto_0
    iget v4, v3, Lc/a/a/b/f;->b:I

    if-ge v0, v4, :cond_7

    new-instance v4, Lcom/layer/b/f/c/a;

    invoke-direct {v4}, Lcom/layer/b/f/c/a;-><init>()V

    invoke-virtual {v4, p1}, Lcom/layer/b/f/c/a;->a(Lc/a/a/b/h;)V

    iget-object v5, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    :cond_8
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/d;->bCG:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xn()V

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

    iput-object v0, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    move v0, v1

    :goto_1
    iget v4, v3, Lc/a/a/b/g;->c:I

    if-ge v0, v4, :cond_a

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    :cond_b
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lc/a/a/b/n;->LA()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/layer/b/f/c/d;->n:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yt()V

    :cond_c
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    :cond_d
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v3, Lc/a/a/b/g;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-direct {v3, v7, v8, v0}, Lc/a/a/b/g;-><init>(BBI)V

    new-instance v0, Ljava/util/HashMap;

    iget v4, v3, Lc/a/a/b/g;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v4, v3, Lc/a/a/b/g;->c:I

    if-ge v0, v4, :cond_e

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v5

    invoke-static {v5}, Lcom/layer/b/f/c/k;->dD(I)Lcom/layer/b/f/c/k;

    move-result-object v5

    iget-object v6, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lc/a/a/b/l;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lc/a/a/b/l;-><init>(BI)V

    new-instance v3, Ljava/util/HashSet;

    iget v4, v0, Lc/a/a/b/l;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    :goto_3
    iget v3, v0, Lc/a/a/b/l;->b:I

    if-ge v1, v3, :cond_f

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    :cond_10
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    :cond_11
    const/16 v0, 0x12

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    :cond_12
    const/16 v0, 0x13

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lc/a/a/b/n;->LA()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/layer/b/f/c/d;->bCM:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yz()V

    :cond_13
    return-void
.end method
