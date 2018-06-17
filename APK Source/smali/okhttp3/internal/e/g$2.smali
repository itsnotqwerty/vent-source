.class final Lokhttp3/internal/e/g$2;
.super Lokhttp3/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/e/g;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dbi:Lokhttp3/internal/e/g;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    iput-object p1, p0, Lokhttp3/internal/e/g$2;->dbi:Lokhttp3/internal/e/g;

    iput p4, p0, Lokhttp3/internal/e/g$2;->val$streamId:I

    iput-wide p5, p0, Lokhttp3/internal/e/g$2;->val$unacknowledgedBytesRead:J

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g$2;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    iget v1, p0, Lokhttp3/internal/e/g$2;->val$streamId:I

    iget-wide v2, p0, Lokhttp3/internal/e/g$2;->val$unacknowledgedBytesRead:J

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/e/j;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lokhttp3/internal/e/g$2;->dbi:Lokhttp3/internal/e/g;

    invoke-static {v0}, Lokhttp3/internal/e/g;->b(Lokhttp3/internal/e/g;)V

    goto :goto_0
.end method
