.class public Lcom/layer/sdk/internal/lsdki/lsdkc/a;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;

.field private final c:J

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JJLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a:Ljava/io/OutputStream;

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;

    iput-wide p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->c:J

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a(JJ)V

    return-void
.end method

.method private a(JJ)V
    .locals 9

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->c:J

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;->a(JJJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a(J)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a(J)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/a;->a(J)V

    return-void
.end method
