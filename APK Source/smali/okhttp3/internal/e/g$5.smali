.class final Lokhttp3/internal/e/g$5;
.super Lokhttp3/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dbi:Lokhttp3/internal/e/g;

.field final synthetic dbj:Ld/c;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;ILd/c;IZ)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/e/g$5;->dbi:Lokhttp3/internal/e/g;

    iput p4, p0, Lokhttp3/internal/e/g$5;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/e/g$5;->dbj:Ld/c;

    iput p6, p0, Lokhttp3/internal/e/g$5;->val$byteCount:I

    iput-boolean p7, p0, Lokhttp3/internal/e/g$5;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g$5;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->dbb:Lokhttp3/internal/e/l;

    iget-object v1, p0, Lokhttp3/internal/e/g$5;->dbj:Ld/c;

    iget v2, p0, Lokhttp3/internal/e/g$5;->val$byteCount:I

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/e/l;->a(Ld/e;I)Z

    iget-object v0, p0, Lokhttp3/internal/e/g$5;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    iget v1, p0, Lokhttp3/internal/e/g$5;->val$streamId:I

    sget-object v2, Lokhttp3/internal/e/b;->dat:Lokhttp3/internal/e/b;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/e/j;->c(ILokhttp3/internal/e/b;)V

    iget-object v1, p0, Lokhttp3/internal/e/g$5;->dbi:Lokhttp3/internal/e/g;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/e/g$5;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Lokhttp3/internal/e/g$5;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
