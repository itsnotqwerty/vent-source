.class final Lcom/layer/b/f/a/c$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/a/c;",
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

    invoke-direct {p0}, Lcom/layer/b/f/a/c$d;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/a/c;

    check-cast p1, Lc/a/a/b/n;

    iget-object v0, p2, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->s()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->w()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_9
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_a
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->y()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_b
    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p2, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p2, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->q()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p2, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->s()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p2, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

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

    goto :goto_0

    :cond_13
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p2, Lcom/layer/b/f/a/c;->j:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(J)V

    :cond_14
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->w()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-wide v0, p2, Lcom/layer/b/f/a/c;->k:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(J)V

    :cond_15
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    iget v0, v0, Lcom/layer/b/f/a/f;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_16
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->y()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_17
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v6, 0xb

    check-cast p2, Lcom/layer/b/f/a/c;

    check-cast p1, Lc/a/a/b/n;

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    :cond_4
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    :cond_5
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    :cond_6
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lc/a/a/b/g;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v3

    invoke-direct {v2, v6, v6, v3}, Lc/a/a/b/g;-><init>(BBI)V

    new-instance v3, Ljava/util/HashMap;

    iget v4, v2, Lc/a/a/b/g;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    :goto_0
    iget v3, v2, Lc/a/a/b/g;->c:I

    if-ge v0, v3, :cond_7

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lc/a/a/b/n;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/a/c;->j:J

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xn()V

    :cond_8
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lc/a/a/b/n;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/a/c;->k:J

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xo()V

    :cond_9
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/a/f;->dr(I)Lcom/layer/b/f/a/f;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    :cond_a
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    :cond_b
    return-void
.end method
