.class public La/a/a/g/i;
.super La/a/a/g/g;


# instance fields
.field public final cqS:La/a/a/e;

.field public final priority:I


# direct methods
.method private constructor <init>(ILa/a/a/e;)V
    .locals 0

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput p1, p0, La/a/a/g/i;->priority:I

    iput-object p2, p0, La/a/a/g/i;->cqS:La/a/a/e;

    return-void
.end method

.method public static d(Ljava/io/DataInputStream;[B)La/a/a/g/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {p0, p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v1

    new-instance v2, La/a/a/g/i;

    invoke-direct {v2, v0, v1}, La/a/a/g/i;-><init>(ILa/a/a/e;)V

    return-object v2
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, La/a/a/g/i;->priority:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, La/a/a/g/i;->cqS:La/a/a/e;

    invoke-virtual {v0, p1}, La/a/a/e;->writeToStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, La/a/a/g/i;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/i;->cqS:La/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
