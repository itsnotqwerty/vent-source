.class public final Lcom/google/android/gms/internal/ul;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/nr;Z)Lcom/google/ads/mediation/a;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v0, Lcom/google/ads/mediation/a;

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/internal/nr;->baB:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget v2, p0, Lcom/google/android/gms/internal/nr;->baC:I

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/google/ads/a$b;->ayp:I

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/a;-><init>(Ljava/util/Date;ILjava/util/Set;ZLandroid/location/Location;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_0
    sget v2, Lcom/google/ads/a$b;->ayr:I

    goto :goto_1

    :pswitch_1
    sget v2, Lcom/google/ads/a$b;->ayq:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/google/android/gms/internal/nu;)Lcom/google/ads/b;
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    new-array v1, v4, [Lcom/google/ads/b;

    sget-object v2, Lcom/google/ads/b;->ayu:Lcom/google/ads/b;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/b;->ayv:Lcom/google/ads/b;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/ads/b;->ayw:Lcom/google/ads/b;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/ads/b;->ayx:Lcom/google/ads/b;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/ads/b;->ayy:Lcom/google/ads/b;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/ads/b;->ayz:Lcom/google/ads/b;

    aput-object v3, v1, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/google/ads/b;->ayt:Lcom/google/android/gms/ads/d;

    iget v2, v2, Lcom/google/android/gms/ads/d;->azl:I

    iget v3, p0, Lcom/google/android/gms/internal/nu;->width:I

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/google/ads/b;->ayt:Lcom/google/android/gms/ads/d;

    iget v2, v2, Lcom/google/android/gms/ads/d;->azm:I

    iget v3, p0, Lcom/google/android/gms/internal/nu;->height:I

    if-ne v2, v3, :cond_0

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ads/b;

    iget v1, p0, Lcom/google/android/gms/internal/nu;->width:I

    iget v2, p0, Lcom/google/android/gms/internal/nu;->height:I

    iget-object v3, p0, Lcom/google/android/gms/internal/nu;->baS:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/k;->c(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/b;-><init>(Lcom/google/android/gms/ads/d;)V

    goto :goto_1
.end method

.method public static c(Lcom/google/ads/a$a;)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/um;->bdk:[I

    invoke-virtual {p0}, Lcom/google/ads/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
