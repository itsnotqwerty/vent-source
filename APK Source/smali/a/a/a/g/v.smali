.class public final La/a/a/g/v;
.super La/a/a/g/g;


# instance fields
.field private final cqT:La/a/a/k$b;

.field private final data:[B


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;ILa/a/a/k$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput-object p3, p0, La/a/a/g/v;->cqT:La/a/a/k$b;

    new-array v0, p2, [B

    iput-object v0, p0, La/a/a/g/v;->data:[B

    iget-object v0, p0, La/a/a/g/v;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

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

    iget-object v0, p0, La/a/a/g/v;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method
