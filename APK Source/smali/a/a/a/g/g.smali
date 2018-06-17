.class public abstract La/a/a/g/g;
.super Ljava/lang/Object;


# instance fields
.field private transient cpv:Ljava/lang/Integer;

.field public sY:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Gl()V
    .locals 2

    iget-object v0, p0, La/a/a/g/g;->sY:[B

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0, v1}, La/a/a/g/g;->b(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/g/g;->sY:[B

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected abstract b(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, La/a/a/g/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, La/a/a/g/g;

    invoke-virtual {p1}, La/a/a/g/g;->Gl()V

    invoke-virtual {p0}, La/a/a/g/g;->Gl()V

    iget-object v0, p0, La/a/a/g/g;->sY:[B

    iget-object v1, p1, La/a/a/g/g;->sY:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, La/a/a/g/g;->cpv:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/a/a/g/g;->Gl()V

    iget-object v0, p0, La/a/a/g/g;->sY:[B

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, La/a/a/g/g;->cpv:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, La/a/a/g/g;->cpv:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 1

    invoke-virtual {p0}, La/a/a/g/g;->Gl()V

    iget-object v0, p0, La/a/a/g/g;->sY:[B

    array-length v0, v0

    return v0
.end method
