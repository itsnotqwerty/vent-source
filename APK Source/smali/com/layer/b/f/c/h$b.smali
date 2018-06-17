.class final Lcom/layer/b/f/c/h$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/c/h;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/h$b;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/c/h;

    invoke-static {}, Lcom/layer/b/f/c/h;->k()V

    invoke-static {}, Lcom/layer/b/f/c/h;->yh()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    invoke-static {}, Lcom/layer/b/f/c/h;->yi()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/h;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    invoke-static {}, Lcom/layer/b/f/c/h;->yj()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/h;->b:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/c/h;->ya()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/h;->c:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_0
    invoke-virtual {p2}, Lcom/layer/b/f/c/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/b/f/c/h;->yb()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/c/h;->d:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/c/h;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/b/f/c/h;->xI()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/h;->bpD:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_2
    invoke-virtual {p1}, Lc/a/a/b/h;->c()V

    invoke-virtual {p1}, Lc/a/a/b/h;->a()V

    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v3, 0x8

    check-cast p2, Lcom/layer/b/f/c/h;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v1, :cond_5

    iget-short v1, v0, Lc/a/a/b/d;->cVp:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    :goto_1
    invoke-virtual {p1}, Lc/a/a/b/h;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/h;->a:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/h;->xP()V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/h;->b:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/h;->xV()V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/h;->c:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/h;->xQ()V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/layer/b/f/c/h;->d:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/h;->yX()V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/h;->bpD:I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/layer/b/f/c/h;->e(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-static {}, Lcom/layer/b/f/c/h;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
