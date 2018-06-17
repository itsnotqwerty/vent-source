.class final Lb/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cUv:Lb/r;

.field final synthetic cUw:Lb/a;


# direct methods
.method constructor <init>(Lb/a;Lb/r;)V
    .locals 0

    iput-object p1, p0, Lb/a$1;->cUw:Lb/a;

    iput-object p2, p0, Lb/a$1;->cUv:Lb/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lb/a$1;->cUw:Lb/a;

    invoke-virtual {v0}, Lb/a;->c()V

    :try_start_0
    iget-object v0, p0, Lb/a$1;->cUv:Lb/r;

    invoke-interface {v0, p1, p2, p3}, Lb/r;->a(Lb/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a$1;->cUw:Lb/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lb/a$1;->cUw:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a$1;->cUw:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/a;->a(Z)V

    throw v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a$1;->cUw:Lb/a;

    invoke-virtual {v0}, Lb/a;->c()V

    :try_start_0
    iget-object v0, p0, Lb/a$1;->cUv:Lb/r;

    invoke-interface {v0}, Lb/r;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a$1;->cUw:Lb/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lb/a$1;->cUw:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a$1;->cUw:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/a;->a(Z)V

    throw v0
.end method

.method public final flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a$1;->cUw:Lb/a;

    invoke-virtual {v0}, Lb/a;->c()V

    :try_start_0
    iget-object v0, p0, Lb/a$1;->cUv:Lb/r;

    invoke-interface {v0}, Lb/r;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a$1;->cUw:Lb/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lb/a$1;->cUw:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a$1;->cUw:Lb/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a$1;->cUv:Lb/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lb/a$1;->cUw:Lb/a;

    return-object v0
.end method
