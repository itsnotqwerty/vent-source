.class final Lokhttp3/internal/e/g$d$1;
.super Lokhttp3/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/e/g$d;->b(ZILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dbq:Lokhttp3/internal/e/i;

.field final synthetic dbr:Lokhttp3/internal/e/g$d;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/e/g$d;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/e/i;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/e/g$d$1;->dbr:Lokhttp3/internal/e/g$d;

    iput-object p4, p0, Lokhttp3/internal/e/g$d$1;->dbq:Lokhttp3/internal/e/i;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g$d$1;->dbr:Lokhttp3/internal/e/g$d;

    iget-object v0, v0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->daZ:Lokhttp3/internal/e/g$b;

    iget-object v1, p0, Lokhttp3/internal/e/g$d$1;->dbq:Lokhttp3/internal/e/i;

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/g$b;->a(Lokhttp3/internal/e/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Http2Connection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lokhttp3/internal/e/g$d$1;->dbr:Lokhttp3/internal/e/g$d;

    iget-object v4, v4, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v4, v4, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/g/f;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/e/g$d$1;->dbq:Lokhttp3/internal/e/i;

    sget-object v1, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/i;->b(Lokhttp3/internal/e/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
