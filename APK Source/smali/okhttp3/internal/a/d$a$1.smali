.class final Lokhttp3/internal/a/d$a$1;
.super Lokhttp3/internal/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/a/d$a;->fP(I)Ld/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cZY:Lokhttp3/internal/a/d$a;


# direct methods
.method constructor <init>(Lokhttp3/internal/a/d$a;Ld/r;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/a/d$a$1;->cZY:Lokhttp3/internal/a/d$a;

    invoke-direct {p0, p2}, Lokhttp3/internal/a/e;-><init>(Ld/r;)V

    return-void
.end method


# virtual methods
.method protected final MM()V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/a/d$a$1;->cZY:Lokhttp3/internal/a/d$a;

    iget-object v1, v0, Lokhttp3/internal/a/d$a;->cZW:Lokhttp3/internal/a/d;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/a/d$a$1;->cZY:Lokhttp3/internal/a/d$a;

    invoke-virtual {v0}, Lokhttp3/internal/a/d$a;->detach()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
