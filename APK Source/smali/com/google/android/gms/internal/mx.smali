.class public abstract Lcom/google/android/gms/internal/mx;
.super Lcom/google/android/gms/internal/nd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/mx",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/nd;"
    }
.end annotation


# instance fields
.field protected aZO:Lcom/google/android/gms/internal/mz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/nd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/mv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    iget v1, v1, Lcom/google/android/gms/internal/mz;->ai:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    iget-object v1, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/na;->a(Lcom/google/android/gms/internal/mv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/mu;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->getPosition()I

    move-result v3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mu;->cU(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v4, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->getPosition()I

    move-result v0

    sub-int v5, v0, v3

    if-nez v5, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ng;->bak:[B

    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/nf;

    invoke-direct {v3, p2, v0}, Lcom/google/android/gms/internal/nf;-><init>(I[B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/mz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/na;

    invoke-direct {v0}, Lcom/google/android/gms/internal/na;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mz;->dc(I)I

    move-result v5

    if-ltz v5, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    aput-object v0, v1, v5

    :cond_1
    :goto_3
    iget-object v0, v0, Lcom/google/android/gms/internal/na;->aZW:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v5, [B

    iget v6, p1, Lcom/google/android/gms/internal/mu;->aZD:I

    add-int/2addr v3, v6

    iget-object v6, p1, Lcom/google/android/gms/internal/mu;->buffer:[B

    invoke-static {v6, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mz;->dc(I)I

    move-result v5

    if-ltz v5, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    aget-object v6, v6, v5

    sget-object v7, Lcom/google/android/gms/internal/mz;->aZR:Lcom/google/android/gms/internal/na;

    if-ne v6, v7, :cond_5

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    aget-object v0, v0, v5

    goto :goto_2

    :cond_6
    xor-int/lit8 v5, v5, -0x1

    iget v6, v1, Lcom/google/android/gms/internal/mz;->ai:I

    if-ge v5, v6, :cond_7

    iget-object v6, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    aget-object v6, v6, v5

    sget-object v7, Lcom/google/android/gms/internal/mz;->aZR:Lcom/google/android/gms/internal/na;

    if-ne v6, v7, :cond_7

    iget-object v2, v1, Lcom/google/android/gms/internal/mz;->aZT:[I

    aput v4, v2, v5

    iget-object v1, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    aput-object v0, v1, v5

    goto :goto_3

    :cond_7
    iget v6, v1, Lcom/google/android/gms/internal/mz;->ai:I

    iget-object v7, v1, Lcom/google/android/gms/internal/mz;->aZT:[I

    array-length v7, v7

    if-lt v6, v7, :cond_8

    iget v6, v1, Lcom/google/android/gms/internal/mz;->ai:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/google/android/gms/internal/mz;->ap(I)I

    move-result v6

    new-array v7, v6, [I

    new-array v6, v6, [Lcom/google/android/gms/internal/na;

    iget-object v8, v1, Lcom/google/android/gms/internal/mz;->aZT:[I

    iget-object v9, v1, Lcom/google/android/gms/internal/mz;->aZT:[I

    array-length v9, v9

    invoke-static {v8, v2, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    iget-object v9, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    array-length v9, v9

    invoke-static {v8, v2, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, v1, Lcom/google/android/gms/internal/mz;->aZT:[I

    iput-object v6, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    :cond_8
    iget v2, v1, Lcom/google/android/gms/internal/mz;->ai:I

    sub-int/2addr v2, v5

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/google/android/gms/internal/mz;->aZT:[I

    iget-object v6, v1, Lcom/google/android/gms/internal/mz;->aZT:[I

    add-int/lit8 v7, v5, 0x1

    iget v8, v1, Lcom/google/android/gms/internal/mz;->ai:I

    sub-int/2addr v8, v5

    invoke-static {v2, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    iget-object v6, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    add-int/lit8 v7, v5, 0x1

    iget v8, v1, Lcom/google/android/gms/internal/mz;->ai:I

    sub-int/2addr v8, v5

    invoke-static {v2, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iget-object v2, v1, Lcom/google/android/gms/internal/mz;->aZT:[I

    aput v4, v2, v5

    iget-object v2, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    aput-object v0, v2, v5

    iget v2, v1, Lcom/google/android/gms/internal/mz;->ai:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/mz;->ai:I

    goto/16 :goto_3
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/nd;->sS()Lcom/google/android/gms/internal/nd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mx;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/nb;->a(Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/mx;)V

    return-object v0
.end method

.method public final synthetic sS()Lcom/google/android/gms/internal/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mx;

    return-object v0
.end method

.method protected st()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    iget v1, v1, Lcom/google/android/gms/internal/mz;->ai:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->aZO:Lcom/google/android/gms/internal/mz;

    iget-object v1, v1, Lcom/google/android/gms/internal/mz;->aZU:[Lcom/google/android/gms/internal/na;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/na;->st()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method
