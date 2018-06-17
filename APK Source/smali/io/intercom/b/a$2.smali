.class final Lio/intercom/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/b/a;->source(Lio/intercom/b/s;)Lio/intercom/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cTR:Lio/intercom/b/a;

.field final synthetic cTS:Lio/intercom/b/s;


# direct methods
.method constructor <init>(Lio/intercom/b/a;Lio/intercom/b/s;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    iput-object p2, p0, Lio/intercom/b/a$2;->cTS:Lio/intercom/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/b/a$2;->cTS:Lio/intercom/b/s;

    invoke-interface {v0}, Lio/intercom/b/s;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/intercom/b/a;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    invoke-virtual {v1, v0}, Lio/intercom/b/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/intercom/b/a;->exit(Z)V

    throw v0
.end method

.method public final read(Lio/intercom/b/c;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    invoke-virtual {v0}, Lio/intercom/b/a;->enter()V

    :try_start_0
    iget-object v0, p0, Lio/intercom/b/a$2;->cTS:Lio/intercom/b/s;

    invoke-interface {v0, p1, p2, p3}, Lio/intercom/b/s;->read(Lio/intercom/b/c;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    iget-object v2, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/intercom/b/a;->exit(Z)V

    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    invoke-virtual {v1, v0}, Lio/intercom/b/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/intercom/b/a;->exit(Z)V

    throw v0
.end method

.method public final timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/a$2;->cTR:Lio/intercom/b/a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/b/a$2;->cTS:Lio/intercom/b/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
