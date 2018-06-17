.class final Lokhttp3/internal/e/g$6;
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
.field final synthetic dbh:Lokhttp3/internal/e/b;

.field final synthetic dbi:Lokhttp3/internal/e/g;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/e/b;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/e/g$6;->dbi:Lokhttp3/internal/e/g;

    iput p4, p0, Lokhttp3/internal/e/g$6;->val$streamId:I

    iput-object p5, p0, Lokhttp3/internal/e/g$6;->dbh:Lokhttp3/internal/e/b;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/e/g$6;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->dbb:Lokhttp3/internal/e/l;

    invoke-interface {v0}, Lokhttp3/internal/e/l;->Nb()V

    iget-object v1, p0, Lokhttp3/internal/e/g$6;->dbi:Lokhttp3/internal/e/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g$6;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Lokhttp3/internal/e/g$6;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
