.class public La/a/a/g/c;
.super La/a/a/g/g;


# instance fields
.field public final cqS:La/a/a/e;


# direct methods
.method public constructor <init>(La/a/a/e;)V
    .locals 0

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput-object p1, p0, La/a/a/g/c;->cqS:La/a/a/e;

    return-void
.end method

.method public static c(Ljava/io/DataInputStream;[B)La/a/a/g/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v0

    new-instance v1, La/a/a/g/c;

    invoke-direct {v1, v0}, La/a/a/g/c;-><init>(La/a/a/e;)V

    return-object v1
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/a/a/g/c;->cqS:La/a/a/e;

    invoke-virtual {v0, p1}, La/a/a/e;->writeToStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/g/c;->cqS:La/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
