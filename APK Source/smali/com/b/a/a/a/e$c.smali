.class final Lcom/b/a/a/a/e$c;
.super Lcom/b/a/a/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final bIV:Lcom/b/a/a/a/g;

.field final synthetic bIW:Lcom/b/a/a/a/e;

.field private e:J

.field private f:Z


# direct methods
.method constructor <init>(Lcom/b/a/a/a/e;Lcom/b/a/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/b/a/a/a/e$c;->bIW:Lcom/b/a/a/a/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/a/e$a;-><init>(Lcom/b/a/a/a/e;B)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/a/a/e$c;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/a/e$c;->f:Z

    iput-object p2, p0, Lcom/b/a/a/a/e$c;->bIV:Lcom/b/a/a/a/g;

    return-void
.end method


# virtual methods
.method public final b(Lb/c;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lcom/b/a/a/a/e$c;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lcom/b/a/a/a/e$c;->f:Z

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return-wide v0

    :cond_3
    iget-wide v2, p0, Lcom/b/a/a/a/e$c;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/b/a/a/a/e$c;->e:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    :cond_4
    iget-wide v2, p0, Lcom/b/a/a/a/e$c;->e:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/b/a/a/a/e$c;->bIW:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v2}, Lb/e;->Lf()Ljava/lang/String;

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/b/a/a/a/e$c;->bIW:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v2}, Lb/e;->Lc()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/a/a/a/e$c;->e:J

    iget-object v2, p0, Lcom/b/a/a/a/e$c;->bIW:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v2}, Lb/e;->Lf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/b/a/a/a/e$c;->e:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/b/a/a/a/e$c;->e:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-wide v2, p0, Lcom/b/a/a/a/e$c;->e:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/b/a/a/a/e$c;->f:Z

    new-instance v2, Lcom/b/a/t$a;

    invoke-direct {v2}, Lcom/b/a/t$a;-><init>()V

    iget-object v3, p0, Lcom/b/a/a/a/e$c;->bIW:Lcom/b/a/a/a/e;

    invoke-virtual {v3, v2}, Lcom/b/a/a/a/e;->a(Lcom/b/a/t$a;)V

    iget-object v3, p0, Lcom/b/a/a/a/e$c;->bIV:Lcom/b/a/a/a/g;

    invoke-virtual {v2}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/b/a/a/a/g;->a(Lcom/b/a/t;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/b/a/a/a/e$c;->a(Z)V

    :cond_8
    iget-boolean v2, p0, Lcom/b/a/a/a/e$c;->f:Z

    if-eqz v2, :cond_2

    :cond_9
    iget-object v2, p0, Lcom/b/a/a/a/e$c;->bIW:Lcom/b/a/a/a/e;

    iget-object v2, v2, Lcom/b/a/a/a/e;->bIP:Lb/e;

    iget-wide v4, p0, Lcom/b/a/a/a/e$c;->e:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lb/e;->b(Lb/c;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/b/a/a/a/e$c;->b()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-wide v0, p0, Lcom/b/a/a/a/e$c;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/a/a/e$c;->e:J

    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/a/e$c;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/a/a/e$c;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lcom/b/a/a/i;->a(Lb/s;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/a/e$c;->b()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/a/e$c;->b:Z

    goto :goto_0
.end method
