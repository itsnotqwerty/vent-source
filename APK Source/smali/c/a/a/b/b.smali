.class public final Lc/a/a/b/b;
.super Lc/a/a/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/b/b$a;
    }
.end annotation


# static fields
.field private static final cVb:Lc/a/a/b/m;


# instance fields
.field protected a:Z

.field protected b:Z

.field private cVc:[B

.field private cVd:[B

.field private cVe:[B

.field private cVf:[B

.field private cVg:[B

.field private cVh:[B

.field private cVi:[B

.field private cVj:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/a/a/b/m;

    invoke-direct {v0}, Lc/a/a/b/m;-><init>()V

    sput-object v0, Lc/a/a/b/b;->cVb:Lc/a/a/b/m;

    return-void
.end method

.method public constructor <init>(Lc/a/a/d/c;ZZ)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lc/a/a/b/h;-><init>(Lc/a/a/d/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/b/b;->a:Z

    iput-boolean v1, p0, Lc/a/a/b/b;->b:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lc/a/a/b/b;->cVc:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lc/a/a/b/b;->cVd:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lc/a/a/b/b;->cVe:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lc/a/a/b/b;->cVf:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lc/a/a/b/b;->cVg:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lc/a/a/b/b;->cVh:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lc/a/a/b/b;->cVi:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lc/a/a/b/b;->cVj:[B

    iput-boolean p2, p0, Lc/a/a/b/b;->a:Z

    iput-boolean p3, p0, Lc/a/a/b/b;->b:Z

    return-void
.end method

.method private dW(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    :try_start_0
    new-array v0, p1, [B

    iget-object v1, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v1, v0, p1}, Lc/a/a/d/c;->h([BI)I

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Lc/a/a/g;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lc/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/d/c;->h([BI)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final LA()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v7, 0x8

    iget-object v1, p0, Lc/a/a/b/b;->cVj:[B

    const/4 v0, 0x0

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2}, Lc/a/a/d/c;->d()I

    move-result v2

    if-lt v2, v7, :cond_0

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->LT()[B

    move-result-object v1

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->c()I

    move-result v0

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2, v7}, Lc/a/a/d/c;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v2, p0, Lc/a/a/b/b;->cVj:[B

    invoke-direct {p0, v2, v7}, Lc/a/a/b/b;->g([BI)I

    goto :goto_0
.end method

.method public final LB()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-virtual {p0}, Lc/a/a/b/b;->LA()J

    move-result-wide v0

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

    invoke-virtual {p0}, Lc/a/a/b/b;->Lz()I

    move-result v1

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2}, Lc/a/a/d/c;->LT()[B

    move-result-object v2

    iget-object v3, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v3}, Lc/a/a/d/c;->c()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2, v1}, Lc/a/a/d/c;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lc/a/a/g;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lc/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, v1}, Lc/a/a/b/b;->dW(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final LD()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-virtual {p0}, Lc/a/a/b/b;->Lz()I

    move-result v1

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->LT()[B

    move-result-object v0

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2}, Lc/a/a/d/c;->c()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2, v1}, Lc/a/a/d/c;->a(I)V

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [B

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2, v0, v1}, Lc/a/a/d/c;->h([BI)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final Ls()V
    .locals 0

    return-void
.end method

.method public final Lt()Lc/a/a/b/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    new-instance v0, Lc/a/a/b/g;

    invoke-virtual {p0}, Lc/a/a/b/b;->Lx()B

    move-result v1

    invoke-virtual {p0}, Lc/a/a/b/b;->Lx()B

    move-result v2

    invoke-virtual {p0}, Lc/a/a/b/b;->Lz()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lc/a/a/b/g;-><init>(BBI)V

    return-object v0
.end method

.method public final Lu()Lc/a/a/b/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    new-instance v0, Lc/a/a/b/f;

    invoke-virtual {p0}, Lc/a/a/b/b;->Lx()B

    move-result v1

    invoke-virtual {p0}, Lc/a/a/b/b;->Lz()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lc/a/a/b/f;-><init>(BI)V

    return-object v0
.end method

.method public final Lv()Lc/a/a/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    new-instance v0, Lc/a/a/b/l;

    invoke-virtual {p0}, Lc/a/a/b/b;->Lx()B

    move-result v1

    invoke-virtual {p0}, Lc/a/a/b/b;->Lz()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lc/a/a/b/l;-><init>(BI)V

    return-object v0
.end method

.method public final Lw()V
    .locals 0

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

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->d()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->LT()[B

    move-result-object v0

    iget-object v1, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v1}, Lc/a/a/d/c;->c()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v1, v2}, Lc/a/a/d/c;->a(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/a/a/b/b;->cVg:[B

    invoke-direct {p0, v0, v2}, Lc/a/a/b/b;->g([BI)I

    iget-object v0, p0, Lc/a/a/b/b;->cVg:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public final Ly()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v3, 0x2

    iget-object v1, p0, Lc/a/a/b/b;->cVh:[B

    const/4 v0, 0x0

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2}, Lc/a/a/d/c;->d()I

    move-result v2

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->LT()[B

    move-result-object v1

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->c()I

    move-result v0

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2, v3}, Lc/a/a/d/c;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    :cond_0
    iget-object v2, p0, Lc/a/a/b/b;->cVh:[B

    invoke-direct {p0, v2, v3}, Lc/a/a/b/b;->g([BI)I

    goto :goto_0
.end method

.method public final Lz()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v3, 0x4

    iget-object v1, p0, Lc/a/a/b/b;->cVi:[B

    const/4 v0, 0x0

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2}, Lc/a/a/d/c;->d()I

    move-result v2

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->LT()[B

    move-result-object v1

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->c()I

    move-result v0

    iget-object v2, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {v2, v3}, Lc/a/a/d/c;->a(I)V

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    :cond_0
    iget-object v2, p0, Lc/a/a/b/b;->cVi:[B

    invoke-direct {p0, v2, v3}, Lc/a/a/b/b;->g([BI)I

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lc/a/a/b/b;->cVe:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lc/a/a/b/b;->cVe:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVe:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVe:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/b;->cVe:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lc/a/a/d/c;->h([BII)V

    return-void
.end method

.method public final a(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    iget-object v0, p0, Lc/a/a/b/b;->cVf:[B

    const/16 v1, 0x38

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lc/a/a/b/b;->cVf:[B

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVf:[B

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVf:[B

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVf:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVf:[B

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVf:[B

    const/4 v1, 0x6

    shr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVf:[B

    const/4 v1, 0x7

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/b;->cVf:[B

    invoke-virtual {v0, v1, v6, v7}, Lc/a/a/d/c;->h([BII)V

    return-void
.end method

.method public final a(Lc/a/a/b/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v3, 0x0

    iget-byte v0, p1, Lc/a/a/b/d;->bKG:B

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->g(B)V

    iget-short v0, p1, Lc/a/a/b/d;->cVp:S

    iget-object v1, p0, Lc/a/a/b/b;->cVd:[B

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    iget-object v1, p0, Lc/a/a/b/b;->cVd:[B

    const/4 v2, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/b;->cVd:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lc/a/a/d/c;->h([BII)V

    return-void
.end method

.method public final a(Lc/a/a/b/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-byte v0, p1, Lc/a/a/b/f;->cVH:B

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->g(B)V

    iget v0, p1, Lc/a/a/b/f;->b:I

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->a(I)V

    return-void
.end method

.method public final a(Lc/a/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-byte v0, p1, Lc/a/a/b/g;->cVH:B

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->g(B)V

    iget-byte v0, p1, Lc/a/a/b/g;->bKG:B

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->g(B)V

    iget v0, p1, Lc/a/a/b/g;->c:I

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->a(I)V

    return-void
.end method

.method public final a(Lc/a/a/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-byte v0, p1, Lc/a/a/b/l;->cVH:B

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->g(B)V

    iget v0, p1, Lc/a/a/b/l;->b:I

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lc/a/a/b/b;->a(I)V

    iget-object v1, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lc/a/a/d/c;->h([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lc/a/a/g;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lc/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lc/a/a/b/b;->g(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 0

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

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->g(B)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lc/a/a/b/b;->cVc:[B

    aput-byte p1, v0, v3

    iget-object v0, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/b;->cVc:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lc/a/a/d/c;->h([BII)V

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final h(Ljava/nio/ByteBuffer;)V
    .locals 5
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

    invoke-virtual {p0, v0}, Lc/a/a/b/b;->a(I)V

    iget-object v1, p0, Lc/a/a/b/b;->cVI:Lc/a/a/d/c;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lc/a/a/d/c;->h([BII)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 0

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

    invoke-virtual {p0}, Lc/a/a/b/b;->Lx()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xd()Lc/a/a/b/m;
    .locals 1

    sget-object v0, Lc/a/a/b/b;->cVb:Lc/a/a/b/m;

    return-object v0
.end method

.method public final xf()Lc/a/a/b/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    invoke-virtual {p0}, Lc/a/a/b/b;->Lx()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lc/a/a/b/d;

    const-string v3, ""

    invoke-direct {v2, v3, v1, v0}, Lc/a/a/b/d;-><init>(Ljava/lang/String;BS)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lc/a/a/b/b;->Ly()S

    move-result v0

    goto :goto_0
.end method
