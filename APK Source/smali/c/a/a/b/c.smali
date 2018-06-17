.class public Lc/a/a/b/c;
.super Lc/a/a/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/b/c$a;
    }
.end annotation


# static fields
.field private static final bxy:Lc/a/a/b/m;

.field private static final bxz:Lc/a/a/b/d;

.field private static final cVe:[B


# instance fields
.field bIG:[B

.field bKM:[B

.field bMw:[B

.field private byB:Lc/a/a/b/d;

.field private cVk:Lc/a/a/b;

.field private cVl:S

.field private cVm:Ljava/lang/Boolean;

.field private final cVn:J

.field private cVo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    new-instance v0, Lc/a/a/b/m;

    const-string v1, ""

    invoke-direct {v0, v1}, Lc/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/a/a/b/c;->bxy:Lc/a/a/b/m;

    new-instance v0, Lc/a/a/b/d;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lc/a/a/b/c;->bxz:Lc/a/a/b/d;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lc/a/a/b/c;->cVe:[B

    aput-byte v2, v0, v2

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    aput-byte v3, v0, v3

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    aput-byte v4, v0, v5

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/4 v1, 0x5

    aput-byte v1, v0, v6

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/16 v1, 0xf

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    sget-object v0, Lc/a/a/b/c;->cVe:[B

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lc/a/a/d/c;J)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lc/a/a/b/h;-><init>(Lc/a/a/d/c;)V

    new-instance v0, Lc/a/a/b;

    invoke-direct {v0}, Lc/a/a/b;-><init>()V

    iput-object v0, p0, Lc/a/a/b/c;->cVk:Lc/a/a/b;

    const/4 v0, 0x0

    iput-short v0, p0, Lc/a/a/b/c;->cVl:S

    iput-object v2, p0, Lc/a/a/b/c;->byB:Lc/a/a/b/d;

    iput-object v2, p0, Lc/a/a/b/c;->cVm:Ljava/lang/Boolean;

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lc/a/a/b/c;->bIG:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lc/a/a/b/c;->bKM:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lc/a/a/b/c;->cVo:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lc/a/a/b/c;->bMw:[B

    iput-wide p2, p0, Lc/a/a/b/c;->cVn:J

    return-void
.end method

.method private LF()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v7, 0x80

    const/4 v1, 0x0

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->d()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->LT()[B

    move-result-object v4

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->c()I

    move-result v5

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    add-int v1, v5, v0

    aget-byte v1, v4, v1

    and-int/lit8 v6, v1, 0x7f

    shl-int/2addr v6, v2

    or-int/2addr v3, v6

    and-int/lit16 v1, v1, 0x80

    if-ne v1, v7, :cond_0

    add-int/lit8 v1, v2, 0x7

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lc/a/a/d/c;->a(I)V

    :goto_1
    return v3

    :goto_2
    invoke-virtual {p0}, Lc/a/a/b/c;->Lx()B

    move-result v1

    and-int/lit8 v3, v1, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0x80

    if-ne v1, v7, :cond_1

    add-int/lit8 v1, v0, 0x7

    move v0, v1

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_2
.end method

.method private a(BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v0, 0xe

    if-gt p2, v0, :cond_0

    shl-int/lit8 v0, p2, 0x4

    sget-object v1, Lc/a/a/b/c;->cVe:[B

    aget-byte v1, v1, p1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->h(B)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lc/a/a/b/c;->cVe:[B

    aget-byte v0, v0, p1

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->h(B)V

    invoke-direct {p0, p2}, Lc/a/a/b/c;->b(I)V

    goto :goto_0
.end method

.method private a(Lc/a/a/b/d;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-byte v0, p1, Lc/a/a/b/d;->bKG:B

    sget-object v1, Lc/a/a/b/c;->cVe:[B

    aget-byte p2, v1, v0

    :cond_0
    iget-short v0, p1, Lc/a/a/b/d;->cVp:S

    iget-short v1, p0, Lc/a/a/b/c;->cVl:S

    if-le v0, v1, :cond_1

    iget-short v0, p1, Lc/a/a/b/d;->cVp:S

    iget-short v1, p0, Lc/a/a/b/c;->cVl:S

    sub-int/2addr v0, v1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    iget-short v0, p1, Lc/a/a/b/d;->cVp:S

    iget-short v1, p0, Lc/a/a/b/c;->cVl:S

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, p2

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->h(B)V

    :goto_0
    iget-short v0, p1, Lc/a/a/b/d;->cVp:S

    iput-short v0, p0, Lc/a/a/b/c;->cVl:S

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lc/a/a/b/c;->h(B)V

    iget-short v0, p1, Lc/a/a/b/d;->cVp:S

    invoke-static {v0}, Lc/a/a/b/c;->dQ(I)I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->b(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    iget-object v2, p0, Lc/a/a/b/c;->bIG:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v0

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    iget-object v2, p0, Lc/a/a/b/c;->bIG:[B

    invoke-virtual {v0, v2, v1, v3}, Lc/a/a/d/c;->h([BII)V

    return-void

    :cond_0
    iget-object v3, p0, Lc/a/a/b/c;->bIG:[B

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    ushr-int/lit8 p1, p1, 0x7

    move v0, v2

    goto :goto_0
.end method

.method private static dQ(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private fM(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/b/i;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lc/a/a/b/c;->cVn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    int-to-long v0, p1

    iget-wide v2, p0, Lc/a/a/b/c;->cVn:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length exceeded max allowed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static fN(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private g([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-direct {p0, p3}, Lc/a/a/b/c;->b(I)V

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/d/c;->h([BII)V

    return-void
.end method

.method private h(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/b/c;->cVo:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/c;->cVo:[B

    invoke-virtual {v0, v1}, Lc/a/a/d/c;->b([B)V

    return-void
.end method

.method private static i(B)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/b/i;
        }
    .end annotation

    and-int/lit8 v0, p0, 0xf

    int-to-byte v0, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lc/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "don\'t know what type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v2, p0, 0xf

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public final LA()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v10, 0x80

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->d()I

    move-result v0

    const/16 v4, 0xa

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->LT()[B

    move-result-object v5

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->c()I

    move-result v6

    move v0, v1

    move v4, v1

    :goto_0
    add-int v1, v6, v0

    aget-byte v1, v5, v1

    and-int/lit8 v7, v1, 0x7f

    int-to-long v8, v7

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    and-int/lit16 v1, v1, 0x80

    if-ne v1, v10, :cond_0

    add-int/lit8 v1, v4, 0x7

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lc/a/a/d/c;->a(I)V

    :cond_1
    const/4 v0, 0x1

    ushr-long v0, v2, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lc/a/a/b/c;->Lx()B

    move-result v0

    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    and-int/lit16 v0, v0, 0x80

    if-ne v0, v10, :cond_1

    add-int/lit8 v1, v1, 0x7

    goto :goto_1
.end method

.method public final LB()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    new-array v0, v8, [B

    iget-object v1, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v1, v0, v8}, Lc/a/a/d/c;->h([BI)I

    const/4 v1, 0x7

    aget-byte v1, v0, v1

    int-to-long v2, v1

    and-long/2addr v2, v6

    const/16 v1, 0x38

    shl-long/2addr v2, v1

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final LC()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-direct {p0}, Lc/a/a/b/c;->LF()I

    move-result v2

    invoke-direct {p0, v2}, Lc/a/a/b/c;->fM(I)V

    if-nez v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->d()I

    move-result v0

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v1}, Lc/a/a/d/c;->LT()[B

    move-result-object v1

    iget-object v3, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v3}, Lc/a/a/d/c;->c()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v1, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v1, v2}, Lc/a/a/d/c;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lc/a/a/g;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lc/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [B

    :goto_1
    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array v1, v2, [B

    iget-object v3, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v3, v1, v2}, Lc/a/a/d/c;->h([BI)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final LD()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-direct {p0}, Lc/a/a/b/c;->LF()I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->fM(I)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v0, [B

    iget-object v2, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2, v1, v0}, Lc/a/a/d/c;->h([BI)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final LE()V
    .locals 2

    iget-object v0, p0, Lc/a/a/b/c;->cVk:Lc/a/a/b;

    const/4 v1, -0x1

    iput v1, v0, Lc/a/a/b;->b:I

    const/4 v0, 0x0

    iput-short v0, p0, Lc/a/a/b/c;->cVl:S

    return-void
.end method

.method public final Ls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/b/c;->cVk:Lc/a/a/b;

    iget-short v1, p0, Lc/a/a/b/c;->cVl:S

    invoke-virtual {v0, v1}, Lc/a/a/b;->c(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lc/a/a/b/c;->cVl:S

    return-void
.end method

.method public final Lt()Lc/a/a/b/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-direct {p0}, Lc/a/a/b/c;->LF()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lc/a/a/b/g;

    shr-int/lit8 v3, v0, 0x4

    int-to-byte v3, v3

    invoke-static {v3}, Lc/a/a/b/c;->i(B)B

    move-result v3

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    invoke-static {v0}, Lc/a/a/b/c;->i(B)B

    move-result v0

    invoke-direct {v2, v3, v0, v1}, Lc/a/a/b/g;-><init>(BBI)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lc/a/a/b/c;->Lx()B

    move-result v0

    goto :goto_0
.end method

.method public final Lu()Lc/a/a/b/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-virtual {p0}, Lc/a/a/b/c;->Lx()B

    move-result v1

    shr-int/lit8 v0, v1, 0x4

    and-int/lit8 v0, v0, 0xf

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lc/a/a/b/c;->LF()I

    move-result v0

    :cond_0
    invoke-static {v1}, Lc/a/a/b/c;->i(B)B

    move-result v1

    new-instance v2, Lc/a/a/b/f;

    invoke-direct {v2, v1, v0}, Lc/a/a/b/f;-><init>(BI)V

    return-object v2
.end method

.method public final Lv()Lc/a/a/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    new-instance v0, Lc/a/a/b/l;

    invoke-virtual {p0}, Lc/a/a/b/c;->Lu()Lc/a/a/b/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/l;-><init>(Lc/a/a/b/f;)V

    return-object v0
.end method

.method public final Lw()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method public final Lx()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->d()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->LT()[B

    move-result-object v0

    iget-object v1, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v1}, Lc/a/a/d/c;->c()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    invoke-virtual {v1, v2}, Lc/a/a/d/c;->a(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/c;->bMw:[B

    invoke-virtual {v0, v1, v2}, Lc/a/a/d/c;->h([BI)I

    iget-object v0, p0, Lc/a/a/b/c;->bMw:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public final Ly()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-direct {p0}, Lc/a/a/b/c;->LF()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/c;->fN(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public final Lz()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-direct {p0}, Lc/a/a/b/c;->LF()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/c;->fN(I)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/b/c;->cVk:Lc/a/a/b;

    invoke-virtual {v0}, Lc/a/a/b;->Lq()S

    move-result v0

    iput-short v0, p0, Lc/a/a/b/c;->cVl:S

    return-void
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-static {p1}, Lc/a/a/b/c;->dQ(I)I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->b(I)V

    return-void
.end method

.method public final a(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v4, p1, v2

    xor-long/2addr v0, v4

    move v2, v3

    :goto_0
    const-wide/16 v4, -0x80

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lc/a/a/b/c;->bKM:[B

    add-int/lit8 v5, v2, 0x1

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    iget-object v0, p0, Lc/a/a/b/c;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/c;->bKM:[B

    invoke-virtual {v0, v1, v3, v5}, Lc/a/a/d/c;->h([BII)V

    return-void

    :cond_0
    iget-object v5, p0, Lc/a/a/b/c;->bKM:[B

    add-int/lit8 v4, v2, 0x1

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v0

    const-wide/16 v8, 0x80

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    const/4 v2, 0x7

    ushr-long/2addr v0, v2

    move v2, v4

    goto :goto_0
.end method

.method public final a(Lc/a/a/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-byte v0, p1, Lc/a/a/b/d;->bKG:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lc/a/a/b/c;->byB:Lc/a/a/b/d;

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lc/a/a/b/c;->a(Lc/a/a/b/d;B)V

    goto :goto_0
.end method

.method public final a(Lc/a/a/b/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-byte v0, p1, Lc/a/a/b/f;->cVH:B

    iget v1, p1, Lc/a/a/b/f;->b:I

    invoke-direct {p0, v0, v1}, Lc/a/a/b/c;->a(BI)V

    return-void
.end method

.method public final a(Lc/a/a/b/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget v0, p1, Lc/a/a/b/g;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->h(B)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lc/a/a/b/g;->c:I

    invoke-direct {p0, v0}, Lc/a/a/b/c;->b(I)V

    iget-byte v0, p1, Lc/a/a/b/g;->cVH:B

    sget-object v1, Lc/a/a/b/c;->cVe:[B

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x4

    iget-byte v1, p1, Lc/a/a/b/g;->bKG:B

    sget-object v2, Lc/a/a/b/c;->cVe:[B

    aget-byte v1, v2, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->h(B)V

    goto :goto_0
.end method

.method public final a(Lc/a/a/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-byte v0, p1, Lc/a/a/b/l;->cVH:B

    iget v1, p1, Lc/a/a/b/l;->b:I

    invoke-direct {p0, v0, v1}, Lc/a/a/b/c;->a(BI)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/b/c;->g([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lc/a/a/g;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lc/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v0, 0x1

    iget-object v2, p0, Lc/a/a/b/c;->byB:Lc/a/a/b/d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc/a/a/b/c;->byB:Lc/a/a/b/d;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Lc/a/a/b/c;->a(Lc/a/a/b/d;B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/b/c;->byB:Lc/a/a/b/d;

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lc/a/a/b/c;->h(B)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/a/a/b/c;->h(B)V

    return-void
.end method

.method public final d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method public final e()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method public final f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method public final g(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/a/a/b/c;->h(B)V

    return-void
.end method

.method public final h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/b/c;->cVk:Lc/a/a/b;

    invoke-virtual {v0}, Lc/a/a/b;->Lq()S

    move-result v0

    iput-short v0, p0, Lc/a/a/b/c;->cVl:S

    return-void
.end method

.method public final h(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2, v0}, Lc/a/a/b/c;->g([BII)V

    return-void
.end method

.method public final j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method public final l()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method public final n()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    return-void
.end method

.method public final q()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lc/a/a/b/c;->cVm:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lc/a/a/b/c;->cVm:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lc/a/a/b/c;->cVm:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lc/a/a/b/c;->Lx()B

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xd()Lc/a/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/b/c;->cVk:Lc/a/a/b;

    iget-short v1, p0, Lc/a/a/b/c;->cVl:S

    invoke-virtual {v0, v1}, Lc/a/a/b;->c(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lc/a/a/b/c;->cVl:S

    sget-object v0, Lc/a/a/b/c;->bxy:Lc/a/a/b/m;

    return-object v0
.end method

.method public final xf()Lc/a/a/b/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lc/a/a/b/c;->Lx()B

    move-result v3

    if-nez v3, :cond_0

    sget-object v0, Lc/a/a/b/c;->bxz:Lc/a/a/b/d;

    :goto_0
    return-object v0

    :cond_0
    and-int/lit16 v0, v3, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lc/a/a/b/c;->Ly()S

    move-result v0

    :goto_1
    new-instance v1, Lc/a/a/b/d;

    const-string v4, ""

    and-int/lit8 v5, v3, 0xf

    int-to-byte v5, v5

    invoke-static {v5}, Lc/a/a/b/c;->i(B)B

    move-result v5

    invoke-direct {v1, v4, v5, v0}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    and-int/lit8 v0, v3, 0xf

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    :cond_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_2

    and-int/lit8 v0, v3, 0xf

    int-to-byte v0, v0

    if-ne v0, v2, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    iput-object v0, p0, Lc/a/a/b/c;->cVm:Ljava/lang/Boolean;

    :cond_2
    iget-short v0, v1, Lc/a/a/b/d;->cVp:S

    iput-short v0, p0, Lc/a/a/b/c;->cVl:S

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-short v1, p0, Lc/a/a/b/c;->cVl:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3
.end method
