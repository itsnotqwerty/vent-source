.class final Lcom/layer/b/f/a/h$d;
.super Lc/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/d",
        "<",
        "Lcom/layer/b/f/a/h;",
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

    invoke-direct {p0}, Lcom/layer/b/f/a/h$d;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/a/h;

    check-cast p1, Lc/a/a/b/n;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lcom/layer/b/f/a/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/a/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/a/h;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/layer/b/f/a/h;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/n;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lcom/layer/b/f/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/layer/b/f/a/h;->bpX:Lcom/layer/b/f/a/g;

    invoke-virtual {v0, p1}, Lcom/layer/b/f/a/g;->b(Lc/a/a/b/h;)V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/a/h;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/layer/b/f/a/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/layer/b/f/a/h;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_6
    invoke-virtual {p2}, Lcom/layer/b/f/a/h;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/layer/b/f/a/h;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->h(Ljava/nio/ByteBuffer;)V

    :cond_7
    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    check-cast p2, Lcom/layer/b/f/a/h;

    check-cast p1, Lc/a/a/b/n;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lc/a/a/b/n;->fO(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/layer/b/f/a/g;

    invoke-direct {v1}, Lcom/layer/b/f/a/g;-><init>()V

    iput-object v1, p2, Lcom/layer/b/f/a/h;->bpX:Lcom/layer/b/f/a/g;

    iget-object v1, p2, Lcom/layer/b/f/a/h;->bpX:Lcom/layer/b/f/a/g;

    invoke-virtual {v1, p1}, Lcom/layer/b/f/a/g;->a(Lc/a/a/b/h;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/n;->LC()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/layer/b/f/a/h;->b:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/layer/b/f/a/h;->bzk:Ljava/nio/ByteBuffer;

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/n;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/a/h;->bzl:Ljava/nio/ByteBuffer;

    :cond_3
    return-void
.end method
