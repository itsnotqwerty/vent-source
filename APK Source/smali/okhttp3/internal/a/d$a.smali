.class public final Lokhttp3/internal/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic cZW:Lokhttp3/internal/a/d;

.field final cZX:Lokhttp3/internal/a/d$b;

.field private done:Z

.field final written:[Z


# direct methods
.method constructor <init>(Lokhttp3/internal/a/d;Lokhttp3/internal/a/d$b;)V
    .locals 1

    iput-object p1, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-boolean v0, p2, Lokhttp3/internal/a/d$b;->readable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/a/d$a;->written:[Z

    return-void

    :cond_0
    iget v0, p1, Lokhttp3/internal/a/d;->valueCount:I

    new-array v0, v0, [Z

    goto :goto_0
.end method


# virtual methods
.method public final abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d$a;->done:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-object v0, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$a;Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/d$a;->done:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d$a;->done:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-object v0, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$a;Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/d$a;->done:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method final detach()V
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-object v0, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    iget v1, v1, Lokhttp3/internal/a/d;->valueCount:I

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    iget-object v1, v1, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    iget-object v2, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-object v2, v2, Lokhttp3/internal/a/d$b;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/f/a;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final fP(I)Ld/r;
    .locals 3

    iget-object v1, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d$a;->done:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-object v0, v0, Lokhttp3/internal/a/d$b;->cZZ:Lokhttp3/internal/a/d$a;

    if-eq v0, p0, :cond_1

    invoke-static {}, Ld/l;->Nr()Ld/r;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-boolean v0, v0, Lokhttp3/internal/a/d$b;->readable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/a/d$a;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/a/d$a;->cZX:Lokhttp3/internal/a/d$b;

    iget-object v0, v0, Lokhttp3/internal/a/d$b;->dirtyFiles:[Ljava/io/File;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    iget-object v2, v2, Lokhttp3/internal/a/d;->cZU:Lokhttp3/internal/f/a;

    invoke-interface {v2, v0}, Lokhttp3/internal/f/a;->q(Ljava/io/File;)Ld/r;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v0, Lokhttp3/internal/a/d$a$1;

    invoke-direct {v0, p0, v2}, Lokhttp3/internal/a/d$a$1;-><init>(Lokhttp3/internal/a/d$a;Ld/r;)V

    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ld/l;->Nr()Ld/r;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
