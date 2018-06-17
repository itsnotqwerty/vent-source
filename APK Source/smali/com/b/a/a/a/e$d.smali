.class final Lcom/b/a/a/a/e$d;
.super Ljava/lang/Object;

# interfaces
.implements Lb/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final bIT:Lb/i;

.field final synthetic bIU:Lcom/b/a/a/a/e;

.field private c:Z

.field private d:J


# direct methods
.method private constructor <init>(Lcom/b/a/a/a/e;J)V
    .locals 2

    iput-object p1, p0, Lcom/b/a/a/a/e$d;->bIU:Lcom/b/a/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/i;

    iget-object v1, p0, Lcom/b/a/a/a/e$d;->bIU:Lcom/b/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    invoke-interface {v1}, Lb/d;->zA()Lb/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/i;-><init>(Lb/t;)V

    iput-object v0, p0, Lcom/b/a/a/a/e$d;->bIT:Lb/i;

    iput-wide p2, p0, Lcom/b/a/a/a/e$d;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/a/e;JB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/a/a/e$d;-><init>(Lcom/b/a/a/a/e;J)V

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

    iget-boolean v0, p0, Lcom/b/a/a/a/e$d;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p1, Lb/c;->b:J

    invoke-static {v0, v1, p2, p3}, Lcom/b/a/a/i;->d(JJ)V

    iget-wide v0, p0, Lcom/b/a/a/a/e$d;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/b/a/a/a/e$d;->d:J

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
    iget-object v0, p0, Lcom/b/a/a/a/e$d;->bIU:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    invoke-interface {v0, p1, p2, p3}, Lb/d;->a(Lb/c;J)V

    iget-wide v0, p0, Lcom/b/a/a/a/e$d;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/b/a/a/a/e$d;->d:J

    return-void
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/a/e$d;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/a/e$d;->c:Z

    iget-wide v0, p0, Lcom/b/a/a/a/e$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/e$d;->bIT:Lb/i;

    invoke-static {v0}, Lcom/b/a/a/a/e;->a(Lb/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/e$d;->bIU:Lcom/b/a/a/a/e;

    const/4 v1, 0x3

    iput v1, v0, Lcom/b/a/a/a/e;->f:I

    goto :goto_0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/b/a/a/a/e$d;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/e$d;->bIU:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V

    goto :goto_0
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/e$d;->bIT:Lb/i;

    return-object v0
.end method
