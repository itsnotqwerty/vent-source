.class public abstract Lokhttp3/x;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lokhttp3/s;[B)Lokhttp3/x;
    .locals 6
    .param p0    # Lokhttp3/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    array-length v0, p1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lokhttp3/internal/c;->g(JJ)V

    new-instance v1, Lokhttp3/x$1;

    invoke-direct {v1, p0, v0, p1}, Lokhttp3/x$1;-><init>(Lokhttp3/s;I[B)V

    return-object v1
.end method


# virtual methods
.method public abstract LX()Lokhttp3/s;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(Ld/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method
