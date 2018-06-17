.class abstract Lcom/b/a/a/a/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected b:Z

.field protected final bIR:Lb/i;

.field final synthetic bIS:Lcom/b/a/a/a/e;


# direct methods
.method private constructor <init>(Lcom/b/a/a/a/e;)V
    .locals 2

    iput-object p1, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/i;

    iget-object v1, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v1}, Lb/e;->zA()Lb/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/i;-><init>(Lb/t;)V

    iput-object v0, p0, Lcom/b/a/a/a/e$a;->bIR:Lb/i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/a/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/a/e$a;-><init>(Lcom/b/a/a/a/e;)V

    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget v0, v0, Lcom/b/a/a/a/e;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget v2, v2, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIR:Lb/i;

    invoke-static {v0}, Lcom/b/a/a/a/e;->a(Lb/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iput v2, v0, Lcom/b/a/a/a/e;->f:I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget v0, v0, Lcom/b/a/a/a/e;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iput v2, v0, Lcom/b/a/a/a/e;->g:I

    sget-object v0, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v1, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/e;->bIf:Lcom/b/a/o;

    iget-object v2, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/b;->a(Lcom/b/a/o;Lcom/b/a/m;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget v0, v0, Lcom/b/a/a/a/e;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    const/4 v1, 0x6

    iput v1, v0, Lcom/b/a/a/a/e;->f:I

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    iget-object v0, v0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    iget-object v0, v0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIS:Lcom/b/a/a/a/e;

    const/4 v1, 0x6

    iput v1, v0, Lcom/b/a/a/a/e;->f:I

    return-void
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/e$a;->bIR:Lb/i;

    return-object v0
.end method
