.class public La/a/a/g/m;
.super La/a/a/g/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final ctT:La/a/a/g/l$a;

.field public final ctU:B

.field public final ctV:I

.field private final ctW:[B

.field public final flags:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/g/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/g/m;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(BBI[B)V
    .locals 1

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    sget-boolean v0, La/a/a/g/m;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eq p1, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-byte p1, p0, La/a/a/g/m;->ctU:B

    invoke-static {p1}, La/a/a/g/l$a;->e(B)La/a/a/g/l$a;

    move-result-object v0

    iput-object v0, p0, La/a/a/g/m;->ctT:La/a/a/g/l$a;

    iput-byte p2, p0, La/a/a/g/m;->flags:B

    iput p3, p0, La/a/a/g/m;->ctV:I

    iput-object p4, p0, La/a/a/g/m;->ctW:[B

    return-void
.end method

.method private constructor <init>(BBI[BB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, La/a/a/g/m;-><init>(BBI[B)V

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)La/a/a/g/m;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    new-array v4, v0, [B

    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-eq v5, v0, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, La/a/a/g/m;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, La/a/a/g/m;-><init>(BBI[BB)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, La/a/a/g/m;->ctU:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, La/a/a/g/m;->flags:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, La/a/a/g/m;->ctV:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, La/a/a/g/m;->ctW:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, La/a/a/g/m;->ctW:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/g/m;->ctT:La/a/a/g/l$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, La/a/a/g/m;->flags:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/g/m;->ctV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/a/a/g/m;->ctW:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "-"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p0, La/a/a/g/m;->ctW:[B

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
