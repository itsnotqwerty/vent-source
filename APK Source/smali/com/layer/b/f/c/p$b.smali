.class final Lcom/layer/b/f/c/p$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/c/p;",
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

    invoke-direct {p0}, Lcom/layer/b/f/c/p$b;-><init>()V

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

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->t()V

    invoke-static {}, Lcom/layer/b/f/c/p;->zm()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/b/f/c/p;->xN()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    iget v0, v0, Lcom/layer/b/f/c/g;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_0
    iget-object v0, p2, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/b/f/c/p;->xO()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    iget v0, v0, Lcom/layer/b/f/c/f;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_1
    iget-object v0, p2, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/b/f/c/p;->yc()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_2
    iget-object v0, p2, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->xj()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/layer/b/f/c/p;->yd()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->h(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_3
    invoke-static {}, Lcom/layer/b/f/c/p;->yY()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/p;->bpD:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/b/f/c/p;->zn()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/c/p;->f:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_4
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/layer/b/f/c/p;->xr()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-wide v0, p2, Lcom/layer/b/f/c/p;->g:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/b/h;->a(J)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_5
    iget-object v0, p2, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/layer/b/f/c/p;->xs()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget-object v0, p2, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_6
    invoke-virtual {p1}, Lc/a/a/b/h;->c()V

    invoke-virtual {p1}, Lc/a/a/b/h;->a()V

    return-void
.end method

.method public final synthetic b(Lc/a/a/b/h;Lc/a/a/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v4, 0xb

    const/16 v3, 0x8

    check-cast p2, Lcom/layer/b/f/c/p;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v1, :cond_8

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

    invoke-static {v0}, Lcom/layer/b/f/c/g;->dB(I)Lcom/layer/b/f/c/g;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

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

    invoke-static {v0}, Lcom/layer/b/f/c/f;->dA(I)Lcom/layer/b/f/c/f;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/p;->bzk:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/h;->LD()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/p;->bzl:Ljava/nio/ByteBuffer;

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

    iput v0, p2, Lcom/layer/b/f/c/p;->bpD:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->yg()V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/c/p;->f:I

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->xF()V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lc/a/a/b/h;->LA()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/layer/b/f/c/p;->g:J

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->yl()V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v4, :cond_7

    invoke-virtual {p1}, Lc/a/a/b/h;->LC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/layer/b/f/c/p;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->xk()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'target_seq\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p2}, Lcom/layer/b/f/c/p;->t()V

    return-void

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
    .end packed-switch
.end method
