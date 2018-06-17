.class final Lokhttp3/internal/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cZW:Lokhttp3/internal/a/d;


# direct methods
.method constructor <init>(Lokhttp3/internal/a/d;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    iget-boolean v3, v3, Lokhttp3/internal/a/d;->initialized:Z

    if-nez v3, :cond_0

    :goto_0
    iget-object v1, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    iget-boolean v1, v1, Lokhttp3/internal/a/d;->closed:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->rebuildJournal()V

    iget-object v0, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    const/4 v1, 0x0

    iput v1, v0, Lokhttp3/internal/a/d;->redundantOpCount:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_3
    :try_start_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/a/d;->mostRecentTrimFailed:Z

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v0, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/a/d;->mostRecentRebuildFailed:Z

    iget-object v0, p0, Lokhttp3/internal/a/d$1;->cZW:Lokhttp3/internal/a/d;

    invoke-static {}, Ld/l;->Nr()Ld/r;

    move-result-object v1

    invoke-static {v1}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/a/d;->cZV:Ld/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
