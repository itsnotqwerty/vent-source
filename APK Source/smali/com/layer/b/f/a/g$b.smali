.class final Lcom/layer/b/f/a/g$b;
.super Lc/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/c/c",
        "<",
        "Lcom/layer/b/f/a/g;",
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

    invoke-direct {p0}, Lcom/layer/b/f/a/g$b;-><init>()V

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

    check-cast p2, Lcom/layer/b/f/a/g;

    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->g()V

    invoke-static {}, Lcom/layer/b/f/a/g;->xR()Lc/a/a/b/m;

    invoke-virtual {p1}, Lc/a/a/b/h;->Ls()V

    invoke-static {}, Lcom/layer/b/f/a/g;->xf()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/a/g;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    iget-object v0, p2, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/b/f/a/g;->xg()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    new-instance v0, Lc/a/a/b/f;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lc/a/a/b/f;-><init>(BI)V

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/f;)V

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
    invoke-virtual {p1}, Lc/a/a/b/h;->e()V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_1
    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/b/f/a/g;->xS()Lc/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(Lc/a/a/b/d;)V

    iget v0, p2, Lcom/layer/b/f/a/g;->c:I

    invoke-virtual {p1, v0}, Lc/a/a/b/h;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/h;->b()V

    :cond_2
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

    const/16 v4, 0x8

    check-cast p2, Lcom/layer/b/f/a/g;

    invoke-virtual {p1}, Lc/a/a/b/h;->xd()Lc/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/h;->xf()Lc/a/a/b/d;

    move-result-object v0

    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-eqz v1, :cond_4

    iget-short v1, v0, Lc/a/a/b/d;->cVp:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    :goto_1
    invoke-virtual {p1}, Lc/a/a/b/h;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/a/g;->a:I

    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->xP()V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/h;->Lu()Lc/a/a/b/f;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lc/a/a/b/f;->b:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lc/a/a/b/f;->b:I

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/layer/b/f/a/d;

    invoke-direct {v2}, Lcom/layer/b/f/a/d;-><init>()V

    invoke-virtual {v2, p1}, Lcom/layer/b/f/a/d;->a(Lc/a/a/b/h;)V

    iget-object v3, p2, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lc/a/a/b/h;->n()V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lc/a/a/b/d;->bKG:B

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/h;->Lz()I

    move-result v0

    iput v0, p2, Lcom/layer/b/f/a/g;->c:I

    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->xQ()V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lc/a/a/b/d;->bKG:B

    invoke-static {p1, v0}, Lc/a/a/b/k;->a(Lc/a/a/b/h;B)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lc/a/a/b/h;->h()V

    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'sequence\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p2}, Lcom/layer/b/f/a/g;->g()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
