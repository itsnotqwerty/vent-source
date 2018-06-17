.class public final Lcom/google/a/b/a/e;
.super Lcom/google/a/d/a;


# static fields
.field private static final bhX:Ljava/io/Reader;

.field private static final bhY:Ljava/lang/Object;


# instance fields
.field private bhZ:[Ljava/lang/Object;

.field private bia:I

.field private bib:[Ljava/lang/String;

.field private bic:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/a/b/a/e$1;

    invoke-direct {v0}, Lcom/google/a/b/a/e$1;-><init>()V

    sput-object v0, Lcom/google/a/b/a/e;->bhX:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/a/b/a/e;->bhY:Ljava/lang/Object;

    return-void
.end method

.method private vx()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/a/b/a/e;->bia:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method private vy()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/a/d/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vv()Lcom/google/a/d/b;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/d/b;->bkm:Lcom/google/a/d/b;

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->a(Lcom/google/a/d/b;)V

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/i;

    invoke-virtual {v0}, Lcom/google/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public final beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/d/b;->bko:Lcom/google/a/d/b;

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->a(Lcom/google/a/d/b;)V

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/n;

    iget-object v0, v0, Lcom/google/a/n;->bgU:Lcom/google/a/b/h;

    invoke-virtual {v0}, Lcom/google/a/b/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/b/a/e;->bhY:Ljava/lang/Object;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    iput v3, p0, Lcom/google/a/b/a/e;->bia:I

    return-void
.end method

.method public final endArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/d/b;->bkn:Lcom/google/a/d/b;

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->a(Lcom/google/a/d/b;)V

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    iget v0, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public final endObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/d/b;->bkp:Lcom/google/a/d/b;

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->a(Lcom/google/a/d/b;)V

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    iget v0, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public final getPath()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/google/a/i;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_0

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/b/a/e;->bic:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/google/a/n;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/a/b/a/e;->bib:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/a/b/a/e;->bib:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vv()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/b;->bkp:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/a/d/b;->bkn:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/d/b;->bkt:Lcom/google/a/d/b;

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->a(Lcom/google/a/d/b;)V

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/p;

    invoke-virtual {v0}, Lcom/google/a/p;->getAsBoolean()Z

    move-result v0

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_0
    return v0
.end method

.method public final nextDouble()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vv()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/a/d/b;->bkr:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/p;

    invoke-virtual {v0}, Lcom/google/a/p;->getAsDouble()D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/a/d/a;->bgE:Z

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v3, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_3
    return-wide v0
.end method

.method public final nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vv()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/a/d/b;->bkr:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/p;

    invoke-virtual {v0}, Lcom/google/a/p;->getAsInt()I

    move-result v0

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_1
    return v0
.end method

.method public final nextLong()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vv()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/a/d/b;->bkr:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/p;

    invoke-virtual {v0}, Lcom/google/a/p;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v3, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_1
    return-wide v0
.end method

.method public final nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/d/b;->bkq:Lcom/google/a/d/b;

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->a(Lcom/google/a/d/b;)V

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/a/b/a/e;->bib:[Ljava/lang/String;

    iget v3, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->push(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/d/b;->bku:Lcom/google/a/d/b;

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->a(Lcom/google/a/d/b;)V

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    iget v0, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public final nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vv()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/b;->bkr:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/a/d/b;->bkr:Lcom/google/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/a/b/a/e;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/p;

    invoke-virtual {v0}, Lcom/google/a/p;->vf()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_1
    return-object v0
.end method

.method public final push(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/a/b/a/e;->bia:I

    iget-object v1, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/a/b/a/e;->bia:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/a/b/a/e;->bia:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v4, p0, Lcom/google/a/b/a/e;->bia:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/a/b/a/e;->bib:[Ljava/lang/String;

    iget v4, p0, Lcom/google/a/b/a/e;->bia:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/a/b/a/e;->bic:[I

    iput-object v2, p0, Lcom/google/a/b/a/e;->bib:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/b/a/e;->bia:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final skipValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vv()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/b;->bkq:Lcom/google/a/d/b;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/a/b/a/e;->nextName()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/a/b/a/e;->bib:[Ljava/lang/String;

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x2

    const-string v2, "null"

    aput-object v2, v0, v1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/a/b/a/e;->bic:[I

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/a/b/a/e;->vx()Ljava/lang/Object;

    iget v0, p0, Lcom/google/a/b/a/e;->bia:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/e;->bib:[Ljava/lang/String;

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vv()Lcom/google/a/d/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/google/a/b/a/e;->bia:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/a/d/b;->bkv:Lcom/google/a/d/b;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/b/a/e;->vw()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/google/a/n;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/a/d/b;->bkq:Lcom/google/a/d/b;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/b/a/e;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/a/d/b;->bkp:Lcom/google/a/d/b;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/a/d/b;->bkn:Lcom/google/a/d/b;

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/google/a/n;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/google/a/d/b;->bko:Lcom/google/a/d/b;

    goto :goto_1

    :cond_5
    instance-of v1, v0, Lcom/google/a/i;

    if-eqz v1, :cond_6

    sget-object v0, Lcom/google/a/d/b;->bkm:Lcom/google/a/d/b;

    goto :goto_1

    :cond_6
    instance-of v1, v0, Lcom/google/a/p;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/google/a/p;

    iget-object v1, v0, Lcom/google/a/p;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v0, Lcom/google/a/d/b;->bkr:Lcom/google/a/d/b;

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lcom/google/a/p;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    sget-object v0, Lcom/google/a/d/b;->bkt:Lcom/google/a/d/b;

    goto :goto_1

    :cond_8
    iget-object v0, v0, Lcom/google/a/p;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, Lcom/google/a/m;

    if-eqz v1, :cond_b

    sget-object v0, Lcom/google/a/d/b;->bku:Lcom/google/a/d/b;

    goto :goto_1

    :cond_b
    sget-object v1, Lcom/google/a/b/a/e;->bhY:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final vw()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/e;->bhZ:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/a/e;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method
