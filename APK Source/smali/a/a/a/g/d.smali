.class public final La/a/a/g/d;
.super La/a/a/g/f;


# direct methods
.method private constructor <init>(ILa/a/a/f$b;La/a/a/f$a;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, La/a/a/g/f;-><init>(ILa/a/a/f$b;La/a/a/f$a;[B)V

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;I)La/a/a/g/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, La/a/a/g/f;->c(Ljava/io/DataInputStream;I)La/a/a/g/f;

    move-result-object v0

    new-instance v1, La/a/a/g/d;

    iget v2, v0, La/a/a/g/f;->ctJ:I

    iget-object v3, v0, La/a/a/g/f;->ctH:La/a/a/f$b;

    iget-object v4, v0, La/a/a/g/f;->ctK:La/a/a/f$a;

    iget-object v0, v0, La/a/a/g/f;->ctM:[B

    invoke-direct {v1, v2, v3, v4, v0}, La/a/a/g/d;-><init>(ILa/a/a/f$b;La/a/a/f$a;[B)V

    return-object v1
.end method
