.class public final Lcom/firebase/jobdispatcher/a;
.super Ljava/lang/Object;


# static fields
.field static final axh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/firebase/jobdispatcher/a;->axh:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x4
        0x8
    .end array-data
.end method

.method static cs(I)[I
    .locals 7

    const/4 v1, 0x0

    sget-object v4, Lcom/firebase/jobdispatcher/a;->axh:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget v0, v4, v2

    and-int v6, p0, v0

    if-ne v6, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    new-array v4, v3, [I

    sget-object v5, Lcom/firebase/jobdispatcher/a;->axh:[I

    array-length v6, v5

    move v2, v1

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_2

    aget v1, v5, v3

    and-int v0, p0, v1

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v2, 0x1

    aput v1, v4, v2

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v2, v0

    move v3, v1

    goto :goto_2

    :cond_2
    return-object v4

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method static g([I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    array-length v3, p0

    move v2, v0

    move v1, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    or-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
