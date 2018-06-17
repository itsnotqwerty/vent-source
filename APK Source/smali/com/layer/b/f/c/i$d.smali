.class final Lcom/layer/b/f/c/i$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/c/i;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/i$d;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/c/i;

    check-cast p1, Lc/a/a/b/n;

    iget-object v0, p2, Lcom/layer/b/f/c/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/layer/b/f/c/i;->bxq:Lcom/layer/b/f/c/j;

    iget v0, v0, Lcom/layer/b/f/c/j;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/c/i;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/layer/b/f/c/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/layer/b/f/c/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    check-cast p2, Lcom/layer/b/f/c/i;

    check-cast p1, Lc/a/a/b/n;

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/i;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/j;->dC(I)Lcom/layer/b/f/c/j;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/i;->bxq:Lcom/layer/b/f/c/j;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/layer/b/f/c/i;->c:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/i;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method
