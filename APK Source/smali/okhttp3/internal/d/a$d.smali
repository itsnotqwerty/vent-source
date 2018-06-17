.class final Lokhttp3/internal/d/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ld/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field private final dam:Ld/i;

.field final synthetic dan:Lokhttp3/internal/d/a;


# direct methods
.method constructor <init>(Lokhttp3/internal/d/a;J)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/d/a$d;->dan:Lokhttp3/internal/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/i;

    iget-object v1, p0, Lokhttp3/internal/d/a$d;->dan:Lokhttp3/internal/d/a;

    iget-object v1, v1, Lokhttp3/internal/d/a;->dae:Ld/d;

    invoke-interface {v1}, Ld/d;->MK()Ld/t;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/i;-><init>(Ld/t;)V

    iput-object v0, p0, Lokhttp3/internal/d/a$d;->dam:Ld/i;

    iput-wide p2, p0, Lokhttp3/internal/d/a$d;->bytesRemaining:J

    return-void
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/d/a$d;->dam:Ld/i;

    return-object v0
.end method

.method public final b(Ld/c;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/d/a$d;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p1, Ld/c;->size:J

    invoke-static {v0, v1, p2, p3}, Lokhttp3/internal/c;->g(JJ)V

    iget-wide v0, p0, Lokhttp3/internal/d/a$d;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lokhttp3/internal/d/a$d;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/d/a$d;->dan:Lokhttp3/internal/d/a;

    iget-object v0, v0, Lokhttp3/internal/d/a;->dae:Ld/d;

    invoke-interface {v0, p1, p2, p3}, Ld/d;->b(Ld/c;J)V

    iget-wide v0, p0, Lokhttp3/internal/d/a$d;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/internal/d/a$d;->bytesRemaining:J

    return-void
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/d/a$d;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/d/a$d;->closed:Z

    iget-wide v0, p0, Lokhttp3/internal/d/a$d;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/d/a$d;->dam:Ld/i;

    invoke-static {v0}, Lokhttp3/internal/d/a;->a(Ld/i;)V

    iget-object v0, p0, Lokhttp3/internal/d/a$d;->dan:Lokhttp3/internal/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lokhttp3/internal/d/a;->state:I

    goto :goto_0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/d/a$d;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/d/a$d;->dan:Lokhttp3/internal/d/a;

    iget-object v0, v0, Lokhttp3/internal/d/a;->dae:Ld/d;

    invoke-interface {v0}, Ld/d;->flush()V

    goto :goto_0
.end method
