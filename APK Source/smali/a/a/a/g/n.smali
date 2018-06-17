.class public final La/a/a/g/n;
.super La/a/a/g/g;


# instance fields
.field private final cub:[B

.field private cuc:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput-object p1, p0, La/a/a/g/n;->cub:[B

    return-void
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/a/a/g/n;->cub:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/g/n;->cuc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/g/n;->cub:[B

    invoke-static {v0}, La/a/a/i/b;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/g/n;->cuc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, La/a/a/g/n;->cuc:Ljava/lang/String;

    return-object v0
.end method
