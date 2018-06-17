.class final Lokhttp3/c$a$1;
.super Ld/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/c$a;-><init>(Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cWi:Lokhttp3/c;

.field final synthetic cWj:Lokhttp3/internal/a/d$a;

.field final synthetic cWk:Lokhttp3/c$a;


# direct methods
.method constructor <init>(Lokhttp3/c$a;Ld/r;Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/c$a$1;->cWk:Lokhttp3/c$a;

    iput-object p3, p0, Lokhttp3/c$a$1;->cWi:Lokhttp3/c;

    iput-object p4, p0, Lokhttp3/c$a$1;->cWj:Lokhttp3/internal/a/d$a;

    invoke-direct {p0, p2}, Ld/g;-><init>(Ld/r;)V

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

    iget-object v0, p0, Lokhttp3/c$a$1;->cWk:Lokhttp3/c$a;

    iget-object v1, v0, Lokhttp3/c$a;->cWe:Lokhttp3/c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/c$a$1;->cWk:Lokhttp3/c$a;

    iget-boolean v0, v0, Lokhttp3/c$a;->done:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lokhttp3/c$a$1;->cWk:Lokhttp3/c$a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokhttp3/c$a;->done:Z

    iget-object v0, p0, Lokhttp3/c$a$1;->cWk:Lokhttp3/c$a;

    iget-object v0, v0, Lokhttp3/c$a;->cWe:Lokhttp3/c;

    iget v2, v0, Lokhttp3/c;->writeSuccessCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/c;->writeSuccessCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ld/g;->close()V

    iget-object v0, p0, Lokhttp3/c$a$1;->cWj:Lokhttp3/internal/a/d$a;

    invoke-virtual {v0}, Lokhttp3/internal/a/d$a;->commit()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
