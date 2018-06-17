.class final Lokhttp3/x$1;
.super Lokhttp3/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cZs:Lokhttp3/s;

.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lokhttp3/s;I[B)V
    .locals 1

    iput-object p1, p0, Lokhttp3/x$1;->cZs:Lokhttp3/s;

    iput p2, p0, Lokhttp3/x$1;->val$byteCount:I

    iput-object p3, p0, Lokhttp3/x$1;->val$content:[B

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/x$1;->val$offset:I

    invoke-direct {p0}, Lokhttp3/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final LX()Lokhttp3/s;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/x$1;->cZs:Lokhttp3/s;

    return-object v0
.end method

.method public final a(Ld/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/x$1;->val$content:[B

    iget v1, p0, Lokhttp3/x$1;->val$offset:I

    iget v2, p0, Lokhttp3/x$1;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Ld/d;->j([BII)Ld/d;

    return-void
.end method

.method public final contentLength()J
    .locals 2

    iget v0, p0, Lokhttp3/x$1;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method
