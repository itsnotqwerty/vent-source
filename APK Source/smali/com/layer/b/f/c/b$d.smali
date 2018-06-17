.class final Lcom/layer/b/f/c/b$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/c/b;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/b$d;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/c/b;

    check-cast p1, Lc/a/a/b/n;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/c/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/c/b;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/layer/b/f/c/b;->bAP:Lcom/layer/b/f/c/c;

    iget v0, v0, Lcom/layer/b/f/c/c;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/layer/b/f/c/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/layer/b/f/c/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v3, 0xb

    const/4 v0, 0x0

    check-cast p2, Lcom/layer/b/f/c/b;

    check-cast p1, Lc/a/a/b/n;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v2

    invoke-static {v2}, Lcom/layer/b/f/c/c;->du(I)Lcom/layer/b/f/c/c;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/c/b;->bAP:Lcom/layer/b/f/c/c;

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/layer/b/f/c/b;->b:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lc/a/a/b/g;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v2

    invoke-direct {v1, v3, v3, v2}, Lc/a/a/b/g;-><init>(BBI)V

    new-instance v2, Ljava/util/HashMap;

    iget v3, v1, Lc/a/a/b/g;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p2, Lcom/layer/b/f/c/b;->c:Ljava/util/Map;

    :goto_0
    iget v2, v1, Lc/a/a/b/g;->c:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/layer/b/f/c/b;->c:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
