.class public La/a/a/g/l;
.super La/a/a/g/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/g/l$a;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ctS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "La/a/a/g/l$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ctQ:[B

.field public final ctR:[La/a/a/k$b;

.field public final ctT:La/a/a/g/l$a;

.field public final ctU:B

.field public final ctV:I

.field public final ctW:[B

.field public final ctX:[B

.field public final flags:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/g/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/g/l;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/g/l;->ctS:Ljava/util/Map;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(BBI[B[B[La/a/a/k$b;)V
    .locals 1

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    sget-boolean v0, La/a/a/g/l;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eq p1, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-byte p1, p0, La/a/a/g/l;->ctU:B

    invoke-static {p1}, La/a/a/g/l$a;->e(B)La/a/a/g/l$a;

    move-result-object v0

    iput-object v0, p0, La/a/a/g/l;->ctT:La/a/a/g/l$a;

    iput-byte p2, p0, La/a/a/g/l;->flags:B

    iput p3, p0, La/a/a/g/l;->ctV:I

    iput-object p4, p0, La/a/a/g/l;->ctW:[B

    iput-object p5, p0, La/a/a/g/l;->ctX:[B

    iput-object p6, p0, La/a/a/g/l;->ctR:[La/a/a/k$b;

    invoke-static {p6}, La/a/a/g/k;->a([La/a/a/k$b;)[B

    move-result-object v0

    iput-object v0, p0, La/a/a/g/l;->ctQ:[B

    return-void
.end method

.method private constructor <init>(BBI[B[B[La/a/a/k$b;B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, La/a/a/g/l;-><init>(BBI[B[B[La/a/a/k$b;)V

    return-void
.end method

.method static synthetic FU()Ljava/util/Map;
    .locals 1

    sget-object v0, La/a/a/g/l;->ctS:Ljava/util/Map;

    return-object v0
.end method

.method public static d(Ljava/io/DataInputStream;I)La/a/a/g/l;
    .locals 8
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

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    new-array v5, v6, [B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-eq v7, v6, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v6

    sub-int v0, p1, v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    array-length v7, v0

    if-eq v6, v7, :cond_2

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    invoke-static {v0}, La/a/a/g/k;->w([B)[La/a/a/k$b;

    move-result-object v6

    new-instance v0, La/a/a/g/l;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, La/a/a/g/l;-><init>(BBI[B[B[La/a/a/k$b;B)V

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

    iget-byte v0, p0, La/a/a/g/l;->ctU:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, La/a/a/g/l;->flags:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, La/a/a/g/l;->ctV:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, La/a/a/g/l;->ctW:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, La/a/a/g/l;->ctW:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, La/a/a/g/l;->ctX:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, La/a/a/g/l;->ctX:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, La/a/a/g/l;->ctQ:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/g/l;->ctT:La/a/a/g/l$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, La/a/a/g/l;->flags:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/g/l;->ctV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/a/a/g/l;->ctW:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "-"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/l;->ctX:[B

    invoke-static {v1}, La/a/a/i/a;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/a/g/l;->ctR:[La/a/a/k$b;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p0, La/a/a/g/l;->ctW:[B

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
