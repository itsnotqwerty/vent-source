.class public final Landroid/support/v4/g/c;
.super Ljava/lang/Object;


# static fields
.field static final Ev:[I

.field static final Ew:[J

.field static final Ex:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/g/c;->Ev:[I

    new-array v0, v1, [J

    sput-object v0, Landroid/support/v4/g/c;->Ew:[J

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/g/c;->Ex:[Ljava/lang/Object;

    return-void
.end method

.method public static a([III)I
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v2, p1, -0x1

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_1

    add-int v0, v1, v2

    ushr-int/lit8 v0, v0, 0x1

    aget v3, p0, v0

    if-ge v3, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-le v3, p2, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    xor-int/lit8 v0, v1, -0x1

    :cond_2
    return v0
.end method

.method public static a([JIJ)I
    .locals 6

    const/4 v0, 0x0

    add-int/lit8 v2, p1, -0x1

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_1

    add-int v0, v1, v2

    ushr-int/lit8 v0, v0, 0x1

    aget-wide v4, p0, v0

    cmp-long v3, v4, p2

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    cmp-long v2, v4, p2

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    xor-int/lit8 v0, v1, -0x1

    :cond_2
    return v0
.end method

.method public static ap(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/g/c;->ar(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static aq(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v4/g/c;->ar(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static ar(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    :cond_0
    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
