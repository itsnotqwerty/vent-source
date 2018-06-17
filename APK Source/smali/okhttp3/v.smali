.class public final Lokhttp3/v;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/v$a;
    }
.end annotation


# instance fields
.field final cZk:Lokhttp3/internal/c/j;

.field private cZl:Lokhttp3/n;

.field final cZm:Lokhttp3/w;

.field final cgQ:Lokhttp3/t;

.field private executed:Z

.field final forWebSocket:Z


# direct methods
.method private constructor <init>(Lokhttp3/t;Lokhttp3/w;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iput-object p2, p0, Lokhttp3/v;->cZm:Lokhttp3/w;

    iput-boolean p3, p0, Lokhttp3/v;->forWebSocket:Z

    new-instance v0, Lokhttp3/internal/c/j;

    invoke-direct {v0, p1, p3}, Lokhttp3/internal/c/j;-><init>(Lokhttp3/t;Z)V

    iput-object v0, p0, Lokhttp3/v;->cZk:Lokhttp3/internal/c/j;

    return-void
.end method

.method public static a(Lokhttp3/t;Lokhttp3/w;Z)Lokhttp3/v;
    .locals 2

    new-instance v0, Lokhttp3/v;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/v;-><init>(Lokhttp3/t;Lokhttp3/w;Z)V

    iget-object v1, p0, Lokhttp3/t;->cYZ:Lokhttp3/n$a;

    invoke-interface {v1}, Lokhttp3/n$a;->Mz()Lokhttp3/n;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/v;->cZl:Lokhttp3/n;

    return-object v0
.end method


# virtual methods
.method final ME()Lokhttp3/y;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->interceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lokhttp3/v;->cZk:Lokhttp3/internal/c/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/c/a;

    iget-object v3, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v3, v3, Lokhttp3/t;->cZa:Lokhttp3/k;

    invoke-direct {v0, v3}, Lokhttp3/internal/c/a;-><init>(Lokhttp3/k;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lokhttp3/internal/a/a;

    iget-object v0, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v4, v0, Lokhttp3/t;->cZb:Lokhttp3/c;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lokhttp3/t;->cZb:Lokhttp3/c;

    iget-object v0, v0, Lokhttp3/c;->cWc:Lokhttp3/internal/a/f;

    :goto_0
    invoke-direct {v3, v0}, Lokhttp3/internal/a/a;-><init>(Lokhttp3/internal/a/f;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/b/a;

    iget-object v3, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    invoke-direct {v0, v3}, Lokhttp3/internal/b/a;-><init>(Lokhttp3/t;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lokhttp3/v;->forWebSocket:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->networkInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lokhttp3/internal/c/b;

    iget-boolean v3, p0, Lokhttp3/v;->forWebSocket:Z

    invoke-direct {v0, v3}, Lokhttp3/internal/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/c/g;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/v;->cZm:Lokhttp3/w;

    iget-object v8, p0, Lokhttp3/v;->cZl:Lokhttp3/n;

    iget-object v3, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget v9, v3, Lokhttp3/t;->connectTimeout:I

    iget-object v3, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget v10, v3, Lokhttp3/t;->readTimeout:I

    iget-object v3, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget v11, v3, Lokhttp3/t;->writeTimeout:I

    move-object v3, v2

    move-object v4, v2

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lokhttp3/internal/c/g;-><init>(Ljava/util/List;Lokhttp3/internal/b/g;Lokhttp3/internal/c/c;Lokhttp3/internal/b/c;ILokhttp3/w;Lokhttp3/e;Lokhttp3/n;III)V

    iget-object v1, p0, Lokhttp3/v;->cZm:Lokhttp3/w;

    invoke-interface {v0, v1}, Lokhttp3/r$a;->c(Lokhttp3/w;)Lokhttp3/y;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v0, Lokhttp3/t;->cWc:Lokhttp3/internal/a/f;

    goto :goto_0
.end method

.method public final Ma()Lokhttp3/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/v;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/v;->executed:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/internal/g/f;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/v;->cZk:Lokhttp3/internal/c/j;

    iput-object v0, v1, Lokhttp3/internal/c/j;->callStackTrace:Ljava/lang/Object;

    invoke-static {}, Lokhttp3/n;->Mf()V

    :try_start_2
    iget-object v0, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->cYY:Lokhttp3/l;

    invoke-virtual {v0, p0}, Lokhttp3/l;->a(Lokhttp3/v;)V

    invoke-virtual {p0}, Lokhttp3/v;->ME()Lokhttp3/y;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lokhttp3/n;->My()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v1, v1, Lokhttp3/t;->cYY:Lokhttp3/l;

    invoke-virtual {v1, p0}, Lokhttp3/l;->b(Lokhttp3/v;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v1, v1, Lokhttp3/t;->cYY:Lokhttp3/l;

    invoke-virtual {v1, p0}, Lokhttp3/l;->b(Lokhttp3/v;)V

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v1, p0, Lokhttp3/v;->cZm:Lokhttp3/w;

    iget-boolean v2, p0, Lokhttp3/v;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lokhttp3/v;->a(Lokhttp3/t;Lokhttp3/w;Z)Lokhttp3/v;

    move-result-object v0

    return-object v0
.end method
