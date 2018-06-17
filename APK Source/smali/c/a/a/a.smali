.class public final Lc/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static final aT(II)Z
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final d(IIZ)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    shl-int/2addr v0, p1

    or-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    shl-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    goto :goto_0
.end method
