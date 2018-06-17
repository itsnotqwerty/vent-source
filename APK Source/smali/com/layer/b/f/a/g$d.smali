.class final Lcom/layer/b/f/a/g$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/a/g;",
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

    invoke-direct {p0}, Lcom/layer/b/f/a/g$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    check-cast p2, Lcom/layer/b/f/a/g;

    check-cast p1, Lc/a/a/b/n;

    iget v0, p2, Lcom/layer/b/f/a/g;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/d;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/d;->b(Lc/a/a/b/h;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/layer/b/f/a/g;->c:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_2
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v1, 0x0

    check-cast p2, Lcom/layer/b/f/a/g;

    check-cast p1, Lc/a/a/b/n;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/a/g;->a:I

    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->xP()V

    new-instance v2, Lc/a/a/b/f;

    const/16 v0, 0xc

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lc/a/a/b/f;-><init>(BI)V

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    move v0, v1

    :goto_0
    iget v3, v2, Lc/a/a/b/f;->b:I

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/layer/b/f/a/d;

    invoke-direct {v3}, Lcom/layer/b/f/a/d;-><init>()V

    invoke-virtual {v3, p1}, Lcom/layer/b/f/a/d;->a(Lc/a/a/b/h;)V

    iget-object v4, p2, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/a/g;->c:I

    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->xQ()V

    :cond_1
    return-void
.end method
