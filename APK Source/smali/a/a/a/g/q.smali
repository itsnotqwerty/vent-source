.class public La/a/a/g/q;
.super La/a/a/g/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final amX:[B

.field public final ctH:La/a/a/f$b;

.field public final ctI:B

.field public final ctJ:I

.field public final cud:La/a/a/k$b;

.field public final cue:B

.field public final cuf:J

.field public final cug:Ljava/util/Date;

.field public final cuh:Ljava/util/Date;

.field public final cui:La/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/g/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/g/q;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(La/a/a/k$b;BBJLjava/util/Date;Ljava/util/Date;ILa/a/a/e;[B)V
    .locals 2

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput-object p1, p0, La/a/a/g/q;->cud:La/a/a/k$b;

    sget-boolean v0, La/a/a/g/q;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eq p2, p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-byte p2, p0, La/a/a/g/q;->ctI:B

    invoke-static {p2}, La/a/a/f$b;->d(B)La/a/a/f$b;

    move-result-object v0

    iput-object v0, p0, La/a/a/g/q;->ctH:La/a/a/f$b;

    iput-byte p3, p0, La/a/a/g/q;->cue:B

    iput-wide p4, p0, La/a/a/g/q;->cuf:J

    iput-object p6, p0, La/a/a/g/q;->cug:Ljava/util/Date;

    iput-object p7, p0, La/a/a/g/q;->cuh:Ljava/util/Date;

    iput p8, p0, La/a/a/g/q;->ctJ:I

    iput-object p9, p0, La/a/a/g/q;->cui:La/a/a/e;

    iput-object p10, p0, La/a/a/g/q;->amX:[B

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;[BI)La/a/a/g/q;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, La/a/a/k$b;->fa(I)La/a/a/k$b;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    new-instance v6, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v8, v0

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v8, v0

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    invoke-static {p0, p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v9

    invoke-virtual {v9}, La/a/a/e;->size()I

    move-result v0

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, -0x12

    new-array v10, v0, [B

    invoke-virtual {p0, v10}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    array-length v11, v10

    if-eq v0, v11, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, La/a/a/g/q;

    invoke-direct/range {v0 .. v10}, La/a/a/g/q;-><init>(La/a/a/k$b;BBJLjava/util/Date;Ljava/util/Date;ILa/a/a/e;[B)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, La/a/a/g/q;->cud:La/a/a/k$b;

    iget v0, v0, La/a/a/k$b;->value:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v0, p0, La/a/a/g/q;->ctI:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, La/a/a/g/q;->cue:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v0, p0, La/a/a/g/q;->cuf:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, La/a/a/g/q;->cug:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, La/a/a/g/q;->cuh:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, La/a/a/g/q;->ctJ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, La/a/a/g/q;->cui:La/a/a/e;

    invoke-virtual {v0, p1}, La/a/a/e;->writeToStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, La/a/a/g/q;->amX:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, La/a/a/g/q;->cud:La/a/a/k$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/a/g/q;->ctH:La/a/a/f$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, La/a/a/g/q;->cue:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/a/a/g/q;->cuf:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/a/g/q;->cug:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/a/g/q;->cuh:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/g/q;->ctJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/q;->cui:La/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/q;->amX:[B

    invoke-static {v1}, La/a/a/i/b;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
