.class final Lcom/layer/b/f/c/d$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/c/d;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/d$b;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/c/d;

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yA()V

    invoke-static {}, Lcom/layer/b/f/c/d;->yB()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/c/d;->yC()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    iget v0, v0, Lcom/layer/b/f/c/e;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/b/f/c/d;->yD()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-boolean v0, p2, Lcom/layer/b/f/c/d;->b:Z

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Z)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_1
    iget-object v0, p2, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/b/f/c/d;->yE()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xE()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/layer/b/f/c/d;->yF()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xG()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/b/f/c/d;->yG()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/c/d;->e:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yk()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/layer/b/f/c/d;->yH()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/d;->f:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/layer/b/f/c/d;->yI()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/d;->g:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/layer/b/f/c/d;->yJ()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-byte v0, p2, Lcom/layer/b/f/c/d;->bzH:B

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->g(B)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_7
    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xm()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/layer/b/f/c/d;->yK()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/f;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lc/a/a/b/f;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/f;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/a;->b(Lc/a/a/b/h;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lc/a/a/b/h;->e()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_9
    iget-object v0, p2, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xp()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/layer/b/f/c/d;->yL()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_a
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yo()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/layer/b/f/c/d;->yM()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/d;->bCG:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_b
    iget-object v0, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yp()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/layer/b/f/c/d;->yN()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/g;

    iget-object v1, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lc/a/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/g;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
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

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lc/a/a/b/h;->d()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_d
    iget-object v0, p2, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yr()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/layer/b/f/c/d;->yO()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_e
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->ys()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/layer/b/f/c/d;->yP()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/c/d;->n:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_f
    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yu()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/layer/b/f/c/d;->yQ()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_10
    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yv()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/layer/b/f/c/d;->yR()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/g;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v3, v1, v2}, Lc/a/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/g;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/k;

    iget v0, v0, Lcom/layer/b/f/c/k;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    goto :goto_2

    :cond_11
    invoke-virtual {p1}, Lc/a/a/b/h;->d()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_12
    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yw()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/layer/b/f/c/d;->yS()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_14
    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yx()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/layer/b/f/c/d;->yT()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_15
    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->K()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/layer/b/f/c/d;->yU()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_16
    iget-object v0, p2, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yy()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/layer/b/f/c/d;->yV()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_17
    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->N()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/layer/b/f/c/d;->yW()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/c/d;->bCM:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_18
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

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v1, 0x0

    const/16 v7, 0x8

    const/16 v6, 0xb

    check-cast p2, Lcom/layer/b/f/c/d;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v2, :cond_19

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

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/e;->dz(I)Lcom/layer/b/f/c/e;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/h;->q()Z

    move-result v0

    iput-boolean v0, p2, Lcom/layer/b/f/c/d;->b:Z

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xQ()V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v7, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yg()V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v8, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/c/d;->e:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xF()V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v7, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/d;->f:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yl()V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v7, :cond_6

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/d;->g:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->ym()V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    invoke-virtual {p1}, Lc/a/a/b/h;->Lx()B

    move-result v0

    iput-byte v0, p2, Lcom/layer/b/f/c/d;->bzH:B

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yn()V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_9

    invoke-virtual {p1}, Lc/a/a/b/h;->Lu()Lc/a/a/b/f;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    move v0, v1

    :goto_2
    iget v3, v2, Lc/a/a/b/f;->b:I

    if-ge v0, v3, :cond_8

    new-instance v3, Lcom/layer/b/f/c/a;

    invoke-direct {v3}, Lcom/layer/b/f/c/a;-><init>()V

    invoke-virtual {v3, p1}, Lcom/layer/b/f/c/a;->a(Lc/a/a/b/h;)V

    iget-object v4, p2, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lc/a/a/b/h;->n()V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_a

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v7, :cond_b

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/d;->bCG:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->xn()V

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_b
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v9, :cond_d

    invoke-virtual {p1}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lc/a/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    move v0, v1

    :goto_3
    iget v3, v2, Lc/a/a/b/g;->c:I

    if-ge v0, v3, :cond_c

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Lc/a/a/b/h;->l()V

    goto/16 :goto_1

    :cond_d
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_c
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_e

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_e
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_d
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v8, :cond_f

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/c/d;->n:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yt()V

    goto/16 :goto_1

    :cond_f
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_e
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_10

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_f
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v9, :cond_12

    invoke-virtual {p1}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lc/a/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    move v0, v1

    :goto_4
    iget v3, v2, Lc/a/a/b/g;->c:I

    if-ge v0, v3, :cond_11

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v4

    invoke-static {v4}, Lcom/layer/b/f/c/k;->dD(I)Lcom/layer/b/f/c/k;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    invoke-virtual {p1}, Lc/a/a/b/h;->l()V

    goto/16 :goto_1

    :cond_12
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_10
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xe

    if-ne v2, v3, :cond_14

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    move v0, v1

    :goto_5
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_13

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/d;->bCJ:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto/16 :goto_1

    :cond_14
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_11
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_15

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCK:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_15
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_12
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_16

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->bCL:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_16
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_13
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_17

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/d;->brV:Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_14
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v8, :cond_18

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/c/d;->bCM:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yz()V

    goto/16 :goto_1

    :cond_18
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :cond_19
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/d;->yA()V

    return-void

    nop

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
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
