.class final Ld/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ld/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dbW:Ld/r;

.field final synthetic dbX:Ld/a;


# direct methods
.method constructor <init>(Ld/a;Ld/r;)V
    .locals 0

    iput-object p1, p0, Ld/a$1;->dbX:Ld/a;

    iput-object p2, p0, Ld/a$1;->dbW:Ld/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Ld/a$1;->dbX:Ld/a;

    return-object v0
.end method

.method public final b(Ld/c;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Ld/c;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    move-wide v4, p2

    :goto_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    iget-object v6, p1, Ld/c;->dbZ:Ld/o;

    move-wide v0, v2

    :goto_1
    const-wide/32 v8, 0x10000

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    iget v7, v6, Ld/o;->limit:I

    iget v8, v6, Ld/o;->pos:I

    sub-int/2addr v7, v8

    int-to-long v8, v7

    add-long/2addr v0, v8

    cmp-long v7, v0, v4

    if-ltz v7, :cond_1

    move-wide v0, v4

    :cond_0
    iget-object v6, p0, Ld/a$1;->dbX:Ld/a;

    invoke-virtual {v6}, Ld/a;->enter()V

    :try_start_0
    iget-object v6, p0, Ld/a$1;->dbW:Ld/r;

    invoke-interface {v6, p1, v0, v1}, Ld/r;->b(Ld/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v0

    iget-object v0, p0, Ld/a$1;->dbX:Ld/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/a;->exit(Z)V

    goto :goto_0

    :cond_1
    iget-object v6, v6, Ld/o;->dcl:Ld/o;

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Ld/a$1;->dbX:Ld/a;

    invoke-virtual {v1, v0}, Ld/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ld/a$1;->dbX:Ld/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ld/a;->exit(Z)V

    throw v0

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/a$1;->dbX:Ld/a;

    invoke-virtual {v0}, Ld/a;->enter()V

    :try_start_0
    iget-object v0, p0, Ld/a$1;->dbW:Ld/r;

    invoke-interface {v0}, Ld/r;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ld/a$1;->dbX:Ld/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/a;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Ld/a$1;->dbX:Ld/a;

    invoke-virtual {v1, v0}, Ld/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ld/a$1;->dbX:Ld/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ld/a;->exit(Z)V

    throw v0
.end method

.method public final flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/a$1;->dbX:Ld/a;

    invoke-virtual {v0}, Ld/a;->enter()V

    :try_start_0
    iget-object v0, p0, Ld/a$1;->dbW:Ld/r;

    invoke-interface {v0}, Ld/r;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ld/a$1;->dbX:Ld/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/a;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Ld/a$1;->dbX:Ld/a;

    invoke-virtual {v1, v0}, Ld/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ld/a$1;->dbX:Ld/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ld/a;->exit(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/a$1;->dbW:Ld/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
