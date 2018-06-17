.class final Lcom/layer/b/f/c/l$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/c/l;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/l$b;-><init>()V

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

    const/16 v2, 0xc

    check-cast p2, Lcom/layer/b/f/c/l;

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->m()V

    invoke-static {}, Lcom/layer/b/f/c/l;->xZ()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/c/l;->ya()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/b;->b(Lc/a/a/b/h;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_0
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/b/f/c/l;->yb()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/d;->b(Lc/a/a/b/h;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_1
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/b/f/c/l;->xI()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/m;->b(Lc/a/a/b/h;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_2
    iget-object v0, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/b/f/c/l;->xJ()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/m;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/m;->b(Lc/a/a/b/h;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_4
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/layer/b/f/c/l;->xK()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/n;->b(Lc/a/a/b/h;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_5
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/layer/b/f/c/l;->xL()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/a;->b(Lc/a/a/b/h;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_7
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->xi()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/layer/b/f/c/l;->xM()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/p;->b(Lc/a/a/b/h;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_8
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/layer/b/f/c/l;->xN()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/p;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/p;->b(Lc/a/a/b/h;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_a
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/layer/b/f/c/l;->xO()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_c
    iget-object v0, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/layer/b/f/c/l;->yc()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/f;

    iget-object v1, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lc/a/a/b/f;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/f;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/d;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/d;->b(Lc/a/a/b/h;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lc/a/a/b/h;->e()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_e
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/layer/b/f/c/l;->yd()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_10
    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->xE()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/layer/b/f/c/l;->yY()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_11
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

    const/16 v6, 0xe

    const/16 v5, 0xc

    const/4 v1, 0x0

    check-cast p2, Lcom/layer/b/f/c/l;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v2, :cond_12

    iget-short v2, v0, Lc/a/a/b/d;->cVp:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    :goto_1
    invoke-virtual {p1}, Lc/a/a/b/h;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v5, :cond_0

    new-instance v0, Lcom/layer/b/f/c/b;

    invoke-direct {v0}, Lcom/layer/b/f/c/b;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEj:Lcom/layer/b/f/c/b;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/b;->a(Lc/a/a/b/h;)V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v5, :cond_1

    new-instance v0, Lcom/layer/b/f/c/d;

    invoke-direct {v0}, Lcom/layer/b/f/c/d;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEk:Lcom/layer/b/f/c/d;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/d;->a(Lc/a/a/b/h;)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v5, :cond_2

    new-instance v0, Lcom/layer/b/f/c/m;

    invoke-direct {v0}, Lcom/layer/b/f/c/m;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEl:Lcom/layer/b/f/c/m;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/m;->a(Lc/a/a/b/h;)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    move v0, v1

    :goto_2
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/layer/b/f/c/m;

    invoke-direct {v3}, Lcom/layer/b/f/c/m;-><init>()V

    invoke-virtual {v3, p1}, Lcom/layer/b/f/c/m;->a(Lc/a/a/b/h;)V

    iget-object v4, p2, Lcom/layer/b/f/c/l;->d:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v5, :cond_5

    new-instance v0, Lcom/layer/b/f/c/n;

    invoke-direct {v0}, Lcom/layer/b/f/c/n;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEm:Lcom/layer/b/f/c/n;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/n;->a(Lc/a/a/b/h;)V

    goto/16 :goto_1

    :cond_5
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_5
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_7

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    move v0, v1

    :goto_3
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/layer/b/f/c/a;

    invoke-direct {v3}, Lcom/layer/b/f/c/a;-><init>()V

    invoke-virtual {v3, p1}, Lcom/layer/b/f/c/a;->a(Lc/a/a/b/h;)V

    iget-object v4, p2, Lcom/layer/b/f/c/l;->bEn:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_6
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v5, :cond_8

    new-instance v0, Lcom/layer/b/f/c/p;

    invoke-direct {v0}, Lcom/layer/b/f/c/p;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    iget-object v0, p2, Lcom/layer/b/f/c/l;->bEo:Lcom/layer/b/f/c/p;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/c/p;->a(Lc/a/a/b/h;)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_a

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    move v0, v1

    :goto_4
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/layer/b/f/c/p;

    invoke-direct {v3}, Lcom/layer/b/f/c/p;-><init>()V

    invoke-virtual {v3, p1}, Lcom/layer/b/f/c/p;->a(Lc/a/a/b/h;)V

    iget-object v4, p2, Lcom/layer/b/f/c/l;->bwV:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_c

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    move v0, v1

    :goto_5
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_b

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/l;->bEp:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto/16 :goto_1

    :cond_c
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    invoke-virtual {p1}, Lc/a/a/b/h;->Lu()Lc/a/a/b/f;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    move v0, v1

    :goto_6
    iget v3, v2, Lc/a/a/b/f;->b:I

    if-ge v0, v3, :cond_d

    new-instance v3, Lcom/layer/b/f/c/d;

    invoke-direct {v3}, Lcom/layer/b/f/c/d;-><init>()V

    invoke-virtual {v3, p1}, Lcom/layer/b/f/c/d;->a(Lc/a/a/b/h;)V

    iget-object v4, p2, Lcom/layer/b/f/c/l;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, Lc/a/a/b/h;->n()V

    goto/16 :goto_1

    :cond_e
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_a
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-ne v2, v6, :cond_10

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    move v0, v1

    :goto_7
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_f

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/l;->bEq:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto/16 :goto_1

    :cond_10
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_b
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_11

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/l;->bEr:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_11
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/l;->m()V

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
    .end packed-switch
.end method
