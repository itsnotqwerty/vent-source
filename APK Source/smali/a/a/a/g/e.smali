.class public La/a/a/g/e;
.super La/a/a/g/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final ctF:S

.field public final ctG:B

.field public final ctH:La/a/a/f$b;

.field public final ctI:B

.field private final key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/g/e;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(SBB[B)V
    .locals 1

    invoke-static {p3}, La/a/a/f$b;->d(B)La/a/a/f$b;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, La/a/a/g/e;-><init>(SBLa/a/a/f$b;[B)V

    return-void
.end method

.method private constructor <init>(SBLa/a/a/f$b;B[B)V
    .locals 1

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput-short p1, p0, La/a/a/g/e;->ctF:S

    iput-byte p2, p0, La/a/a/g/e;->ctG:B

    sget-boolean v0, La/a/a/g/e;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    iget-byte v0, p3, La/a/a/f$b;->cqE:B

    :goto_0
    if-eq p4, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, p4

    goto :goto_0

    :cond_1
    iput-byte p4, p0, La/a/a/g/e;->ctI:B

    if-eqz p3, :cond_2

    :goto_1
    iput-object p3, p0, La/a/a/g/e;->ctH:La/a/a/f$b;

    iput-object p5, p0, La/a/a/g/e;->key:[B

    return-void

    :cond_2
    invoke-static {p4}, La/a/a/f$b;->d(B)La/a/a/f$b;

    move-result-object p3

    goto :goto_1
.end method

.method private constructor <init>(SBLa/a/a/f$b;[B)V
    .locals 6

    iget-byte v4, p3, La/a/a/f$b;->cqE:B

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, La/a/a/g/e;-><init>(SBLa/a/a/f$b;B[B)V

    return-void
.end method

.method public static b(Ljava/io/DataInputStream;I)La/a/a/g/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    add-int/lit8 v3, p1, -0x4

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v4, La/a/a/g/e;

    invoke-direct {v4, v0, v1, v2, v3}, La/a/a/g/e;-><init>(SBB[B)V

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

    iget-short v0, p0, La/a/a/g/e;->ctF:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v0, p0, La/a/a/g/e;->ctG:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, La/a/a/g/e;->ctH:La/a/a/f$b;

    iget-byte v0, v0, La/a/a/f$b;->cqE:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, La/a/a/g/e;->key:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, La/a/a/g/e;->ctF:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, La/a/a/g/e;->ctG:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/e;->ctH:La/a/a/f$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/e;->key:[B

    invoke-static {v1}, La/a/a/i/b;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
