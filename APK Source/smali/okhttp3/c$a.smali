.class final Lokhttp3/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic cWe:Lokhttp3/c;

.field private final cWf:Lokhttp3/internal/a/d$a;

.field private cWg:Ld/r;

.field private cWh:Ld/r;

.field done:Z


# direct methods
.method constructor <init>(Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/c$a;->cWe:Lokhttp3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/c$a;->cWf:Lokhttp3/internal/a/d$a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lokhttp3/internal/a/d$a;->fP(I)Ld/r;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$a;->cWg:Ld/r;

    new-instance v0, Lokhttp3/c$a$1;

    iget-object v1, p0, Lokhttp3/c$a;->cWg:Ld/r;

    invoke-direct {v0, p0, v1, p1, p2}, Lokhttp3/c$a$1;-><init>(Lokhttp3/c$a;Ld/r;Lokhttp3/c;Lokhttp3/internal/a/d$a;)V

    iput-object v0, p0, Lokhttp3/c$a;->cWh:Ld/r;

    return-void
.end method


# virtual methods
.method public final LW()Ld/r;
    .locals 1

    iget-object v0, p0, Lokhttp3/c$a;->cWh:Ld/r;

    return-object v0
.end method

.method public final abort()V
    .locals 3

    iget-object v1, p0, Lokhttp3/c$a;->cWe:Lokhttp3/c;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/c$a;->done:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/c$a;->done:Z

    iget-object v0, p0, Lokhttp3/c$a;->cWe:Lokhttp3/c;

    iget v2, v0, Lokhttp3/c;->writeAbortCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/c;->writeAbortCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokhttp3/c$a;->cWg:Ld/r;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_1
    iget-object v0, p0, Lokhttp3/c$a;->cWf:Lokhttp3/internal/a/d$a;

    invoke-virtual {v0}, Lokhttp3/internal/a/d$a;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
