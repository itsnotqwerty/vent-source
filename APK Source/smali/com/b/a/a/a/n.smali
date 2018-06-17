.class public final Lcom/b/a/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb/r;


# instance fields
.field private a:Z

.field private final b:I

.field public final bJz:Lb/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/b/a/a/a/n;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/n;->bJz:Lb/c;

    iput p1, p0, Lcom/b/a/a/a/n;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lb/c;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/a/n;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p1, Lb/c;->b:J

    invoke-static {v0, v1, p2, p3}, Lcom/b/a/a/i;->d(JJ)V

    iget v0, p0, Lcom/b/a/a/a/n;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/b/a/a/a/n;->bJz:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    iget v2, p0, Lcom/b/a/a/a/n;->b:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exceeded content-length limit of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/a/a/a/n;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/n;->bJz:Lb/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/c;->a(Lb/c;J)V

    return-void
.end method

.method public final a(Lb/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lb/c;

    invoke-direct {v1}, Lb/c;-><init>()V

    iget-object v0, p0, Lcom/b/a/a/a/n;->bJz:Lb/c;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/b/a/a/a/n;->bJz:Lb/c;

    iget-wide v4, v4, Lb/c;->b:J

    invoke-virtual/range {v0 .. v5}, Lb/c;->a(Lb/c;JJ)Lb/c;

    iget-wide v2, v1, Lb/c;->b:J

    invoke-interface {p1, v1, v2, v3}, Lb/r;->a(Lb/c;J)V

    return-void
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/a/n;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/a/n;->a:Z

    iget-object v0, p0, Lcom/b/a/a/a/n;->bJz:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    iget v2, p0, Lcom/b/a/a/a/n;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content-length promised "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/a/a/a/n;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/a/n;->bJz:Lb/c;

    iget-wide v2, v2, Lb/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zA()Lb/t;
    .locals 1

    sget-object v0, Lb/t;->cUH:Lb/t;

    return-object v0
.end method
