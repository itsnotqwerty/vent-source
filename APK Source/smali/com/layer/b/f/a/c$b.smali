.class final Lcom/layer/b/f/a/c$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/a/c;",
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

    invoke-direct {p0}, Lcom/layer/b/f/a/c$b;-><init>()V

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

    const/16 v2, 0xb

    check-cast p2, Lcom/layer/b/f/a/c;

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->z()V

    invoke-static {}, Lcom/layer/b/f/a/c;->xq()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/a/c;->xr()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_0
    iget-object v0, p2, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/b/f/a/c;->xs()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_1
    iget-object v0, p2, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/b/f/a/c;->xt()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_2
    iget-object v0, p2, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/layer/b/f/a/c;->xu()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_3
    iget-object v0, p2, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xj()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/b/f/a/c;->xv()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_4
    iget-object v0, p2, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xk()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/layer/b/f/a/c;->xw()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_5
    iget-object v0, p2, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/layer/b/f/a/c;->xx()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_6
    iget-object v0, p2, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/layer/b/f/a/c;->xy()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_7
    iget-object v0, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xl()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/layer/b/f/a/c;->xz()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/g;

    iget-object v1, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lc/a/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/g;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

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

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lc/a/a/b/h;->d()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_9
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xm()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/layer/b/f/a/c;->xA()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/a/c;->j:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_a
    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->w()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/layer/b/f/a/c;->xB()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/a/c;->k:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_b
    iget-object v0, p2, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xp()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/layer/b/f/a/c;->xC()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    iget v0, v0, Lcom/layer/b/f/a/f;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_c
    iget-object v0, p2, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->y()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/layer/b/f/a/c;->xD()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_d
    invoke-virtual {p1}, Lc/a/a/b/h;->c()V

    invoke-virtual {p1}, Lc/a/a/b/h;->a()V

    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v6, 0xa

    const/16 v5, 0xb

    check-cast p2, Lcom/layer/b/f/a/c;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v1, :cond_e

    iget-short v1, v0, Lc/a/a/b/d;->cVp:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    :goto_1
    invoke-virtual {p1}, Lc/a/a/b/h;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_6

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_7
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_7

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lc/a/a/b/g;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lc/a/a/b/g;->c:I

    if-ge v0, v2, :cond_8

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lc/a/a/b/h;->l()V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v6, :cond_a

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/layer/b/f/a/c;->j:J

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xn()V

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v6, :cond_b

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/layer/b/f/a/c;->k:J

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->xo()V

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_b
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/a/f;->dr(I)Lcom/layer/b/f/a/f;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->byh:Lcom/layer/b/f/a/f;

    goto/16 :goto_1

    :cond_c
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_c
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v5, :cond_d

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/c;->byi:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_d
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-virtual {p2}, Lcom/layer/b/f/a/c;->z()V

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
    .end packed-switch
.end method
