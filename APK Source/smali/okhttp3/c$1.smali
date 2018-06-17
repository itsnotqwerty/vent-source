.class final Lokhttp3/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cWe:Lokhttp3/c;


# direct methods
.method constructor <init>(Lokhttp3/c;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/c$1;->cWe:Lokhttp3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/y;)Lokhttp3/internal/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$1;->cWe:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->a(Lokhttp3/y;)Lokhttp3/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lokhttp3/w;)Lokhttp3/y;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$1;->cWe:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->a(Lokhttp3/w;)Lokhttp3/y;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lokhttp3/internal/a/c;)V
    .locals 1

    iget-object v0, p0, Lokhttp3/c$1;->cWe:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->a(Lokhttp3/internal/a/c;)V

    return-void
.end method

.method public final a(Lokhttp3/y;Lokhttp3/y;)V
    .locals 8

    new-instance v1, Lokhttp3/c$c;

    invoke-direct {v1, p2}, Lokhttp3/c$c;-><init>(Lokhttp3/y;)V

    iget-object v0, p1, Lokhttp3/y;->cZu:Lokhttp3/z;

    check-cast v0, Lokhttp3/c$b;

    iget-object v2, v0, Lokhttp3/c$b;->cWl:Lokhttp3/internal/a/d$c;

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, v2, Lokhttp3/internal/a/d$c;->cZW:Lokhttp3/internal/a/d;

    iget-object v4, v2, Lokhttp3/internal/a/d$c;->key:Ljava/lang/String;

    iget-wide v6, v2, Lokhttp3/internal/a/d$c;->sequenceNumber:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/a/d;->c(Ljava/lang/String;J)Lokhttp3/internal/a/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lokhttp3/c$c;->b(Lokhttp3/internal/a/d$a;)V

    invoke-virtual {v0}, Lokhttp3/internal/a/d$a;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v0}, Lokhttp3/c;->a(Lokhttp3/internal/a/d$a;)V

    goto :goto_0
.end method

.method public final b(Lokhttp3/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$1;->cWe:Lokhttp3/c;

    invoke-virtual {v0, p1}, Lokhttp3/c;->b(Lokhttp3/w;)V

    return-void
.end method

.method public final trackConditionalCacheHit()V
    .locals 1

    iget-object v0, p0, Lokhttp3/c$1;->cWe:Lokhttp3/c;

    invoke-virtual {v0}, Lokhttp3/c;->trackConditionalCacheHit()V

    return-void
.end method
