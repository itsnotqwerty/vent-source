.class public La/a/a/j;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private byteArray:[B

.field public final cqS:La/a/a/e;

.field public final cqT:La/a/a/k$b;

.field public final cqU:La/a/a/k$a;

.field private final cqV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/j;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(La/a/a/e;La/a/a/k$b;)V
    .locals 2

    sget-object v0, La/a/a/k$a;->cqZ:La/a/a/k$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, La/a/a/j;-><init>(La/a/a/e;La/a/a/k$b;La/a/a/k$a;B)V

    return-void
.end method

.method private constructor <init>(La/a/a/e;La/a/a/k$b;La/a/a/k$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, La/a/a/j;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, La/a/a/j;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v0, La/a/a/j;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iput-object p1, p0, La/a/a/j;->cqS:La/a/a/e;

    iput-object p2, p0, La/a/a/j;->cqT:La/a/a/k$b;

    iput-object p3, p0, La/a/a/j;->cqU:La/a/a/k$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/j;->cqV:Z

    return-void
.end method

.method private constructor <init>(La/a/a/e;La/a/a/k$b;La/a/a/k$a;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La/a/a/j;-><init>(La/a/a/e;La/a/a/k$b;La/a/a/k$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v0

    iput-object v0, p0, La/a/a/j;->cqS:La/a/a/e;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, La/a/a/k$b;->fa(I)La/a/a/k$b;

    move-result-object v0

    iput-object v0, p0, La/a/a/j;->cqT:La/a/a/k$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, La/a/a/k$a;->eZ(I)La/a/a/k$a;

    move-result-object v0

    iput-object v0, p0, La/a/a/j;->cqU:La/a/a/k$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/j;->cqV:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, La/a/a/j;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, La/a/a/j;->toByteArray()[B

    move-result-object v0

    check-cast p1, La/a/a/j;

    invoke-virtual {p1}, La/a/a/j;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, La/a/a/j;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toByteArray()[B
    .locals 4

    iget-object v0, p0, La/a/a/j;->byteArray:[B

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v0, p0, La/a/a/j;->cqS:La/a/a/e;

    invoke-virtual {v0, v2}, La/a/a/e;->writeToStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, La/a/a/j;->cqT:La/a/a/k$b;

    iget v0, v0, La/a/a/k$b;->value:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, La/a/a/j;->cqU:La/a/a/k$a;

    iget v3, v0, La/a/a/k$a;->value:I

    iget-boolean v0, p0, La/a/a/j;->cqV:Z

    if-eqz v0, :cond_1

    const v0, 0x8000

    :goto_0
    or-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/j;->byteArray:[B

    :cond_0
    iget-object v0, p0, La/a/a/j;->byteArray:[B

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/j;->cqS:La/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/j;->cqU:La/a/a/k$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/j;->cqT:La/a/a/k$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
