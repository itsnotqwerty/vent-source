.class final Lcom/layer/b/f/c/p$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/c/p;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/p$d;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/c/p;

    check-cast p1, Lc/a/a/b/n;

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    iget v0, v0, Lcom/layer/b/f/c/g;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    iget v0, v0, Lcom/layer/b/f/c/f;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    iget v0, p2, Lcom/layer/b/f/c/p;->bpD:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/layer/b/f/c/p;->f:I

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(I)V

    :cond_7
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p2, Lcom/layer/b/f/c/p;->g:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(J)V

    :cond_8
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    check-cast p2, Lcom/layer/b/f/c/p;

    check-cast p1, Lc/a/a/b/n;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/g;->dB(I)Lcom/layer/b/f/c/g;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/f;->dA(I)Lcom/layer/b/f/c/f;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/p;->bpD:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->yg()V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/n;->Lz()I

    move-result v1

    iput v1, p2, Lcom/layer/b/f/c/p;->f:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->xF()V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/n;->LA()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/layer/b/f/c/p;->g:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->yl()V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    :cond_4
    return-void
.end method
