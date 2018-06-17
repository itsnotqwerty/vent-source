.class final Lcom/layer/b/f/c/n$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/c/n;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/n$b;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/c/n;

    invoke-static {}, Lcom/layer/b/f/c/n;->g()V

    invoke-static {}, Lcom/layer/b/f/c/n;->xR()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    iget-object v0, p2, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/layer/b/f/c/n;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/b/f/c/n;->xf()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/g;

    iget-object v1, p2, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v3, v3, v1}, Lc/a/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/g;)V

    iget-object v0, p2, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/h;->d()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_1
    iget-object v0, p2, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/layer/b/f/c/n;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/layer/b/f/c/n;->xg()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/l;

    iget-object v1, p2, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lc/a/a/b/l;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/l;)V

    iget-object v0, p2, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lc/a/a/b/h;->f()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/c/n;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/b/f/c/n;->xS()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/c/n;->c:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_4
    invoke-virtual {p1}, Lc/a/a/b/h;->c()V

    invoke-virtual {p1}, Lc/a/a/b/h;->a()V

    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v1, 0x0

    check-cast p2, Lcom/layer/b/f/c/n;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v2, :cond_5

    iget-short v2, v0, Lc/a/a/b/d;->cVp:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    :goto_1
    invoke-virtual {p1}, Lc/a/a/b/h;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lc/a/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v3, v2, Lc/a/a/b/g;->c:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/h;->l()V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xe

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/h;->Lv()Lc/a/a/b/l;

    move-result-object v2

    new-instance v0, Ljava/util/HashSet;

    iget v3, v2, Lc/a/a/b/l;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    move v0, v1

    :goto_3
    iget v3, v2, Lc/a/a/b/l;->b:I

    if-ge v0, v3, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lc/a/a/b/h;->Lw()V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lc/a/a/b/d;->bKG:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/c/n;->c:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/n;->xQ()V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-static {}, Lcom/layer/b/f/c/n;->g()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
