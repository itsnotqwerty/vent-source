.class final Lokhttp3/internal/e/g$c;
.super Lokhttp3/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic dbi:Lokhttp3/internal/e/g;

.field final dbm:Z

.field final dbn:I

.field final dbo:I


# direct methods
.method constructor <init>(Lokhttp3/internal/e/g;ZII)V
    .locals 4

    iput-object p1, p0, Lokhttp3/internal/e/g$c;->dbi:Lokhttp3/internal/e/g;

    const-string v0, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lokhttp3/internal/e/g$c;->dbm:Z

    iput p3, p0, Lokhttp3/internal/e/g$c;->dbn:I

    iput p4, p0, Lokhttp3/internal/e/g$c;->dbo:I

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 6

    iget-object v1, p0, Lokhttp3/internal/e/g$c;->dbi:Lokhttp3/internal/e/g;

    iget-boolean v0, p0, Lokhttp3/internal/e/g$c;->dbm:Z

    iget v2, p0, Lokhttp3/internal/e/g$c;->dbn:I

    iget v3, p0, Lokhttp3/internal/e/g$c;->dbo:I

    if-nez v0, :cond_0

    monitor-enter v1

    :try_start_0
    iget-boolean v4, v1, Lokhttp3/internal/e/g;->dbc:Z

    const/4 v5, 0x1

    iput-boolean v5, v1, Lokhttp3/internal/e/g;->dbc:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lokhttp3/internal/e/g;->MU()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    iget-object v4, v1, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v4, v0, v2, v3}, Lokhttp3/internal/e/j;->ping(ZII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lokhttp3/internal/e/g;->MU()V

    goto :goto_0
.end method
