.class final Lcom/layer/b/f/c/m$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/c/m;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/b/f/c/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v3, 0xb

    check-cast p2, Lcom/layer/b/f/c/m;

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zj()V

    invoke-static {}, Lcom/layer/b/f/c/m;->zk()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/c/m;->yF()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_0
    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/b/f/c/m;->yG()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    iget v0, v0, Lcom/layer/b/f/c/o;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_1
    iget-object v0, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/layer/b/f/c/m;->yH()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/b/f/c/m;->yI()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_4
    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xm()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/layer/b/f/c/m;->yJ()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->xp()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/layer/b/f/c/m;->yK()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/c/m;->f:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_6
    iget-object v0, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yo()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/layer/b/f/c/m;->yL()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/g;

    iget-object v1, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lc/a/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/g;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lc/a/a/b/h;->d()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_8
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zb()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/layer/b/f/c/m;->yM()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-boolean v0, p2, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Z)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_9
    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->ys()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/layer/b/f/c/m;->yN()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_a
    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yu()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/layer/b/f/c/m;->yO()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/h;->b(Lc/a/a/b/h;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_b
    iget-object v0, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->ze()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/layer/b/f/c/m;->yP()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/g;

    iget-object v1, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lc/a/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/g;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Lc/a/a/b/h;->d()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_d
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/layer/b/f/c/m;->yQ()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/m;->bEN:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_e
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/layer/b/f/c/m;->yR()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/m;->bEO:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_f
    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zg()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/layer/b/f/c/m;->yS()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/c/m;->n:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_10
    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->N()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/layer/b/f/c/m;->yT()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/p;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/p;->b(Lc/a/a/b/h;)V

    goto :goto_3

    :cond_11
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_12
    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->O()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/layer/b/f/c/m;->yU()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_14
    iget-object v0, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zi()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/layer/b/f/c/m;->yV()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/g;

    iget-object v1, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lc/a/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/g;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    goto :goto_5

    :cond_15
    invoke-virtual {p1}, Lc/a/a/b/h;->d()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_16
    iget-object v0, p2, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->Q()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/layer/b/f/c/m;->yW()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_17
    invoke-virtual {p1}, Lc/a/a/b/h;->c()V

    invoke-virtual {p1}, Lc/a/a/b/h;->a()V

    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v9, 0xe

    const/16 v8, 0xd

    const/16 v7, 0xb

    const/16 v6, 0x8

    const/4 v1, 0x0

    check-cast p2, Lcom/layer/b/f/c/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v2, :cond_18

    iget-short v2, v0, Lc/a/a/b/d;->cVp:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    :goto_1
    invoke-virtual {p1}, Lc/a/a/b/h;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v7, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEI:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/o;->dG(I)Lcom/layer/b/f/c/o;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v9, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    move v0, v1

    :goto_2
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yg()V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v7, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/c/m;->f:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yl()V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_6
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v8, :cond_8

    invoke-virtual {p1}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lc/a/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    move v0, v1

    :goto_3
    iget v3, v2, Lc/a/a/b/g;->c:I

    if-ge v0, v3, :cond_7

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lc/a/a/b/h;->l()V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-virtual {p1}, Lc/a/a/b/h;->q()Z

    move-result v0

    iput-boolean v0, p2, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zc()V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v7, :cond_a

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEL:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    new-instance v0, Lcom/layer/b/f/c/h;

    invoke-direct {v0}, Lcom/layer/b/f/c/h;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget-object v0, p2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/h;->a(Lc/a/a/b/h;)V

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v8, :cond_d

    invoke-virtual {p1}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lc/a/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    move v0, v1

    :goto_4
    iget v3, v2, Lc/a/a/b/g;->c:I

    if-ge v0, v3, :cond_c

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/m;->k:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Lc/a/a/b/h;->l()V

    goto/16 :goto_1

    :cond_d
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_b
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_e

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/m;->bEN:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zf()V

    goto/16 :goto_1

    :cond_e
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_c
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_f

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/m;->bEO:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->yt()V

    goto/16 :goto_1

    :cond_f
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_d
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_10

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/c/m;->n:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zh()V

    goto/16 :goto_1

    :cond_10
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_e
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v9, :cond_12

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    move v0, v1

    :goto_5
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_11

    new-instance v3, Lcom/layer/b/f/c/p;

    invoke-direct {v3}, Lcom/layer/b/f/c/p;-><init>()V

    invoke-virtual {v3, p1}, Lcom/layer/b/f/c/p;->a(Lc/a/a/b/h;)V

    iget-object v4, p2, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto/16 :goto_1

    :cond_12
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_f
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v9, :cond_14

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    move v0, v1

    :goto_6
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_13

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/m;->bEQ:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto/16 :goto_1

    :cond_14
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_10
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v8, :cond_16

    invoke-virtual {p1}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lc/a/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    move v0, v1

    :goto_7
    iget v3, v2, Lc/a/a/b/g;->c:I

    if-ge v0, v3, :cond_15

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/m;->byH:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    invoke-virtual {p1}, Lc/a/a/b/h;->l()V

    goto/16 :goto_1

    :cond_16
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_11
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v7, :cond_17

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/m;->bER:Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/m;->zj()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
