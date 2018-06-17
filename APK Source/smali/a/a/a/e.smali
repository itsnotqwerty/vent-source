.class public La/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Comparable",
        "<",
        "La/a/a/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final cqe:La/a/a/e;

.field public static final cqf:La/a/a/e;

.field public static cqg:Z


# instance fields
.field private transient bkc:I

.field public final cqh:Ljava/lang/String;

.field public transient cqi:[Ljava/lang/String;

.field private transient sY:[B

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, La/a/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, La/a/a/e;->$assertionsDisabled:Z

    new-instance v0, La/a/a/e;

    const-string v3, ""

    invoke-direct {v0, v3, v2}, La/a/a/e;-><init>(Ljava/lang/String;Z)V

    sput-object v0, La/a/a/e;->cqe:La/a/a/e;

    new-instance v0, La/a/a/e;

    const-string v3, "."

    invoke-direct {v0, v3, v2}, La/a/a/e;-><init>(Ljava/lang/String;Z)V

    sput-object v0, La/a/a/e;->cqf:La/a/a/e;

    sput-boolean v1, La/a/a/e;->cqg:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, La/a/a/e;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/a/a/e;->size:I

    if-eqz p2, :cond_1

    invoke-static {p1}, La/a/a/e/c;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    :goto_0
    sget-boolean v0, La/a/a/e;->cqg:Z

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, La/a/a/e;->FR()V

    iget-object v0, p0, La/a/a/e;->sY:[B

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_3

    new-instance v0, La/a/a/h$a;

    iget-object v1, p0, La/a/a/e;->sY:[B

    invoke-direct {v0, p1, v1}, La/a/a/h$a;-><init>(Ljava/lang/String;[B)V

    throw v0

    :cond_3
    invoke-virtual {p0}, La/a/a/e;->FS()V

    iget-object v1, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-le v4, v5, :cond_4

    new-instance v0, La/a/a/h$b;

    invoke-direct {v0, p1, v3}, La/a/a/h$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/a/a/e;->size:I

    iput-object p1, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    array-length v3, p1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    return-void
.end method

.method private FR()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, La/a/a/e;->sY:[B

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p0}, La/a/a/e;->FS()V

    iget-object v0, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-boolean v0, La/a/a/e;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v2, 0xff

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/e;->sY:[B

    goto :goto_0
.end method

.method public static a(Ljava/io/DataInputStream;[B)La/a/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0, v1}, La/a/a/e;->a([BILjava/util/HashSet;)La/a/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, La/a/a/e;->cqe:La/a/a/e;

    goto :goto_0

    :cond_1
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, La/a/a/e/c;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/e;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, La/a/a/e;

    invoke-direct {v1, v0}, La/a/a/e;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a([BILjava/util/HashSet;)La/a/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "La/a/a/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :goto_0
    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v0, v1, 0xc0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_1

    and-int/lit8 v0, v1, 0x3f

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int p1, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cyclic offsets detected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v0, La/a/a/e;->cqe:La/a/a/e;

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v1, v2

    invoke-static {p0, v1, p2}, La/a/a/e;->a([BILjava/util/HashSet;)La/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/e;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, La/a/a/e;

    invoke-direct {v1, v0}, La/a/a/e;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static ey(Ljava/lang/String;)La/a/a/e;
    .locals 2

    new-instance v0, La/a/a/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La/a/a/e;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final FS()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, La/a/a/e;->FT()Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/a/e;->cqh:Ljava/lang/String;

    const-string v2, "[.\u3002\uff0e\uff61]"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    :goto_1
    iget-object v1, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    iget-object v4, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v0

    iget-object v3, p0, La/a/a/e;->cqi:[Ljava/lang/String;

    aput-object v1, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final FT()Z
    .locals 2

    iget-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, La/a/a/e;

    iget-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    iget-object v1, p1, La/a/a/e;->cqh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, La/a/a/e;

    if-eqz v1, :cond_0

    check-cast p1, La/a/a/e;

    invoke-direct {p0}, La/a/a/e;->FR()V

    invoke-direct {p1}, La/a/a/e;->FR()V

    iget-object v0, p0, La/a/a/e;->sY:[B

    iget-object v1, p1, La/a/a/e;->sY:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, La/a/a/e;->bkc:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/a/a/e;->FT()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, La/a/a/e;->FR()V

    iget-object v0, p0, La/a/a/e;->sY:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, La/a/a/e;->bkc:I

    :cond_0
    iget v0, p0, La/a/a/e;->bkc:I

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, La/a/a/e;->size:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, La/a/a/e;->FT()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, La/a/a/e;->size:I

    :cond_0
    :goto_0
    iget v0, p0, La/a/a/e;->size:I

    return v0

    :cond_1
    iget-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/a/e;->size:I

    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/e;->cqh:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToStream(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, La/a/a/e;->FR()V

    iget-object v0, p0, La/a/a/e;->sY:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
