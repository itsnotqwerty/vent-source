.class final Lokhttp3/internal/e/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ld/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final dad:Ld/e;

.field flags:B

.field left:I

.field length:I

.field padding:S

.field streamId:I


# direct methods
.method constructor <init>(Ld/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/e/h$a;->dad:Ld/e;

    return-void
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/e/h$a;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->MK()Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ld/c;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const-wide/16 v0, -0x1

    const/4 v8, 0x0

    :cond_0
    iget v2, p0, Lokhttp3/internal/e/h$a;->left:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lokhttp3/internal/e/h$a;->dad:Ld/e;

    iget-short v3, p0, Lokhttp3/internal/e/h$a;->padding:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Ld/e;->ah(J)V

    iput-short v8, p0, Lokhttp3/internal/e/h$a;->padding:S

    iget-byte v2, p0, Lokhttp3/internal/e/h$a;->flags:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget v2, p0, Lokhttp3/internal/e/h$a;->streamId:I

    iget-object v3, p0, Lokhttp3/internal/e/h$a;->dad:Ld/e;

    invoke-static {v3}, Lokhttp3/internal/e/h;->c(Ld/e;)I

    move-result v3

    iput v3, p0, Lokhttp3/internal/e/h$a;->left:I

    iput v3, p0, Lokhttp3/internal/e/h$a;->length:I

    iget-object v3, p0, Lokhttp3/internal/e/h$a;->dad:Ld/e;

    invoke-interface {v3}, Ld/e;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Lokhttp3/internal/e/h$a;->dad:Ld/e;

    invoke-interface {v4}, Ld/e;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Lokhttp3/internal/e/h$a;->flags:B

    sget-object v4, Lokhttp3/internal/e/h;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lokhttp3/internal/e/h;->logger:Ljava/util/logging/Logger;

    iget v5, p0, Lokhttp3/internal/e/h$a;->streamId:I

    iget v6, p0, Lokhttp3/internal/e/h$a;->length:I

    iget-byte v7, p0, Lokhttp3/internal/e/h$a;->flags:B

    invoke-static {v9, v5, v6, v3, v7}, Lokhttp3/internal/e/e;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lokhttp3/internal/e/h$a;->dad:Ld/e;

    invoke-interface {v4}, Ld/e;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, p0, Lokhttp3/internal/e/h$a;->streamId:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    iget v3, p0, Lokhttp3/internal/e/h$a;->streamId:I

    if-eq v3, v2, :cond_0

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v2, p0, Lokhttp3/internal/e/h$a;->dad:Ld/e;

    iget v3, p0, Lokhttp3/internal/e/h$a;->left:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Ld/e;->a(Ld/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    iget v0, p0, Lokhttp3/internal/e/h$a;->left:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lokhttp3/internal/e/h$a;->left:I

    move-wide v0, v2

    goto :goto_0
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
