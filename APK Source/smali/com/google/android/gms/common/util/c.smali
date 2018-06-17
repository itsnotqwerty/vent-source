.class public final Lcom/google/android/gms/common/util/c;
.super Ljava/lang/Object;


# direct methods
.method public static varargs b([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v6, p0

    move v4, v5

    move v2, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, p0, v4

    aget-object v1, p1, v5

    invoke-static {v1, v7}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    aput-object v7, v0, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    array-length v1, v0

    if-eq v2, v1, :cond_0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method
