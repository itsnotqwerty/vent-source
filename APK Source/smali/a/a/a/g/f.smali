.class public La/a/a/g/f;
.super La/a/a/g/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final ctH:La/a/a/f$b;

.field public final ctI:B

.field public final ctJ:I

.field public final ctK:La/a/a/f$a;

.field public final ctL:B

.field protected final ctM:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/g/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/g/f;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(IBB[B)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, v2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, La/a/a/g/f;-><init>(ILa/a/a/f$b;BLa/a/a/f$a;B[B)V

    return-void
.end method

.method private constructor <init>(ILa/a/a/f$b;BLa/a/a/f$a;B[B)V
    .locals 1

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput p1, p0, La/a/a/g/f;->ctJ:I

    sget-boolean v0, La/a/a/g/f;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iget-byte v0, p2, La/a/a/f$b;->cqE:B

    :goto_0
    if-eq p3, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, p3

    goto :goto_0

    :cond_1
    iput-byte p3, p0, La/a/a/g/f;->ctI:B

    if-eqz p2, :cond_2

    :goto_1
    iput-object p2, p0, La/a/a/g/f;->ctH:La/a/a/f$b;

    sget-boolean v0, La/a/a/g/f;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-eqz p4, :cond_3

    iget-byte v0, p4, La/a/a/f$a;->value:B

    :goto_2
    if-eq p5, v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-static {p3}, La/a/a/f$b;->d(B)La/a/a/f$b;

    move-result-object p2

    goto :goto_1

    :cond_3
    move v0, p5

    goto :goto_2

    :cond_4
    iput-byte p5, p0, La/a/a/g/f;->ctL:B

    if-eqz p4, :cond_5

    :goto_3
    iput-object p4, p0, La/a/a/g/f;->ctK:La/a/a/f$a;

    sget-boolean v0, La/a/a/g/f;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    invoke-static {p5}, La/a/a/f$a;->c(B)La/a/a/f$a;

    move-result-object p4

    goto :goto_3

    :cond_6
    iput-object p6, p0, La/a/a/g/f;->ctM:[B

    return-void
.end method

.method public constructor <init>(ILa/a/a/f$b;La/a/a/f$a;[B)V
    .locals 7

    iget-byte v3, p2, La/a/a/f$b;->cqE:B

    iget-byte v5, p3, La/a/a/f$a;->value:B

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, La/a/a/g/f;-><init>(ILa/a/a/f$b;BLa/a/a/f$a;B[B)V

    return-void
.end method

.method public static c(Ljava/io/DataInputStream;I)La/a/a/g/f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    add-int/lit8 v3, p1, -0x4

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    array-length v5, v3

    if-eq v4, v5, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    new-instance v4, La/a/a/g/f;

    invoke-direct {v4, v0, v1, v2, v3}, La/a/a/g/f;-><init>(IBB[B)V

    return-object v4
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, La/a/a/g/f;->ctJ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v0, p0, La/a/a/g/f;->ctI:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, La/a/a/g/f;->ctL:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, La/a/a/g/f;->ctM:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, La/a/a/g/f;->ctJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/f;->ctH:La/a/a/f$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/f;->ctK:La/a/a/f$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p0, La/a/a/g/f;->ctM:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
