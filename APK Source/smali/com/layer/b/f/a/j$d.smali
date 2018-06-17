.class final Lcom/layer/b/f/a/j$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/a/j;",
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

    invoke-direct {p0}, Lcom/layer/b/f/a/j$d;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/a/j;

    check-cast p1, Lc/a/a/b/n;

    iget-object v0, p2, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/i;->b(Lc/a/a/b/h;)V

    iget-object v0, p2, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    iget-object v0, p2, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/a/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    check-cast p2, Lcom/layer/b/f/a/j;

    check-cast p1, Lc/a/a/b/n;

    new-instance v0, Lcom/layer/b/f/a/i;

    invoke-direct {v0}, Lcom/layer/b/f/a/i;-><init>()V

    iput-object v0, p2, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    iget-object v0, p2, Lcom/layer/b/f/a/j;->bzx:Lcom/layer/b/f/a/i;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/i;->a(Lc/a/a/b/h;)V

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/j;->bzy:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/j;->bzk:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/j;->bzl:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
