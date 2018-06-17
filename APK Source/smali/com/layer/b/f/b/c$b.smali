.class final Lcom/layer/b/f/b/c$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/b/c;",
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

    invoke-direct {p0}, Lcom/layer/b/f/b/c$b;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/b/c;

    invoke-virtual {p2}, Lcom/layer/b/f/b/c;->d()V

    invoke-static {}, Lcom/layer/b/f/b/c;->ye()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    iget-object v0, p2, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/layer/b/f/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/b/c;->xY()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/b/a;->b(Lc/a/a/b/h;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_0
    iget-object v0, p2, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/layer/b/f/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/b/f/b/c;->xU()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/g;

    const/16 v1, 0xb

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/g;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/g;)V

    iget-object v0, p2, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc/a/a/b/h;->d()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_2
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

    check-cast p2, Lcom/layer/b/f/b/c;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v1, :cond_3

    iget-short v1, v0, Lc/a/a/b/d;->cVp:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    :goto_1
    invoke-virtual {p1}, Lc/a/a/b/h;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/layer/b/f/b/a;

    invoke-direct {v0}, Lcom/layer/b/f/b/a;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    iget-object v0, p2, Lcom/layer/b/f/b/c;->bAz:Lcom/layer/b/f/b/a;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/b/a;->a(Lc/a/a/b/h;)V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/h;->Lt()Lc/a/a/b/g;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lc/a/a/b/g;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lc/a/a/b/g;->c:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v4

    iget-object v3, p2, Lcom/layer/b/f/b/c;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lc/a/a/b/h;->l()V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-virtual {p2}, Lcom/layer/b/f/b/c;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
