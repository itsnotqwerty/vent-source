.class final Lcom/layer/sdk/internal/lsdkc/d$b;
.super Lcom/b/a/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final bqw:Ljava/io/File;

.field private final bqx:Lcom/b/a/w;

.field private final bqy:Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;

.field private final c:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/ab;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->bqw:Ljava/io/File;

    invoke-static {p2}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->bqx:Lcom/b/a/w;

    iput-wide p3, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->c:J

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->bqy:Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->bqw:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Lb/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Lb/d;->KV()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->bqw:Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->c:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    move-wide v2, v4

    :cond_0
    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->c:J

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->c:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->bqw:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->c:J

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->bqy:Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;

    invoke-direct/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/a;-><init>(Ljava/io/OutputStream;JJLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V

    const v2, 0x8000

    new-array v2, v2, [B

    invoke-static {v7, v0, v2}, Lcom/layer/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_0
.end method

.method public final wt()Lcom/b/a/w;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/d$b;->bqx:Lcom/b/a/w;

    return-object v0
.end method
