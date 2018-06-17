.class public final Lcom/google/android/gms/internal/mu;
.super Ljava/lang/Object;


# instance fields
.field final aZD:I

.field private final aZE:I

.field private aZF:I

.field private aZG:I

.field private aZH:I

.field private aZI:I

.field private aZJ:I

.field private aZK:I

.field private aZL:I

.field private aZM:I

.field final buffer:[B


# direct methods
.method private constructor <init>([BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZL:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZM:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mu;->buffer:[B

    iput v1, p0, Lcom/google/android/gms/internal/mu;->aZD:I

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZE:I

    iput v1, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    return-void
.end method

.method public static a([BI)Lcom/google/android/gms/internal/mu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mu;-><init>([BI)V

    return-object v0
.end method

.method private final cY(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/nc;->sV()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mu;->cY(I)V

    invoke-static {}, Lcom/google/android/gms/internal/nc;->sU()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/nc;->sU()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0
.end method

.method private final sO()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZG:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZG:I

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZG:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZG:I

    goto :goto_0
.end method

.method private final sQ()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/nc;->sU()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mu;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/nd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZK:I

    iget v2, p0, Lcom/google/android/gms/internal/mu;->aZL:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/nc;->sX()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->cV(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZK:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mu;->aZK:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/nd;->a(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mu;->cT(I)V

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZK:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/mu;->aZK:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->cW(I)V

    return-void
.end method

.method final av(II)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZD:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    iget v2, p0, Lcom/google/android/gms/internal/mu;->aZD:I

    sub-int/2addr v1, v2

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Position "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Bad position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZD:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    iput p2, p0, Lcom/google/android/gms/internal/mu;->aZI:I

    return-void
.end method

.method public final cT(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/nc;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZI:I

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/nc;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final cU(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x7

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/nc;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nc;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sK()I

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sN()J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mu;->cY(I)V

    goto :goto_0

    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sI()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mu;->cU(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    ushr-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mu;->cT(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sM()I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final cV(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/nc;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/nc;->sV()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/nc;->sU()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sO()V

    return v1
.end method

.method public final cW(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sO()V

    return-void
.end method

.method public final cX(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZI:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mu;->av(II)V

    return-void
.end method

.method public final getPosition()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZD:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/nc;->sV()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    iget v2, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/nc;->sU()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/mu;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    sget-object v4, Lcom/google/android/gms/internal/nb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    return-object v1
.end method

.method public final sI()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    iget v2, p0, Lcom/google/android/gms/internal/mu;->aZF:I

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZI:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mu;->aZI:I

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZI:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/nc;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZI:I

    goto :goto_0
.end method

.method public final sJ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sK()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/nc;->sW()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0
.end method

.method public final sL()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/nc;->sW()Lcom/google/android/gms/internal/nc;

    move-result-object v0

    throw v0
.end method

.method public final sM()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final sN()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0xff

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v5

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v6

    invoke-direct {p0}, Lcom/google/android/gms/internal/mu;->sQ()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final sP()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mu;->aZH:I

    iget v1, p0, Lcom/google/android/gms/internal/mu;->aZJ:I

    sub-int v0, v1, v0

    goto :goto_0
.end method
