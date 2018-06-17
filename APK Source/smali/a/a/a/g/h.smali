.class public abstract La/a/a/g/h;
.super La/a/a/g/g;


# instance fields
.field protected final ctN:[B

.field private ctO:Ljava/net/InetAddress;


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput-object p1, p0, La/a/a/g/h;->ctN:[B

    return-void
.end method


# virtual methods
.method public final Gm()[B
    .locals 1

    iget-object v0, p0, La/a/a/g/h;->ctN:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/a/a/g/h;->ctN:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 2

    iget-object v0, p0, La/a/a/g/h;->ctO:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, La/a/a/g/h;->ctN:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iput-object v0, p0, La/a/a/g/h;->ctO:Ljava/net/InetAddress;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
