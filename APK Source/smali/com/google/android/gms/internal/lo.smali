.class public final Lcom/google/android/gms/internal/lo;
.super Lcom/google/android/gms/internal/mx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mx",
        "<",
        "Lcom/google/android/gms/internal/lo;",
        ">;"
    }
.end annotation


# instance fields
.field public aQz:Ljava/lang/String;

.field public aXW:Ljava/lang/Long;

.field private aXX:Ljava/lang/Integer;

.field public aXY:[Lcom/google/android/gms/internal/lp;

.field public aXZ:[Lcom/google/android/gms/internal/ln;

.field public aYa:[Lcom/google/android/gms/internal/lh;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mx;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/lp;->sy()[Lcom/google/android/gms/internal/lp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    invoke-static {}, Lcom/google/android/gms/internal/ln;->sx()[Lcom/google/android/gms/internal/ln;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    invoke-static {}, Lcom/google/android/gms/internal/lh;->ss()[Lcom/google/android/gms/internal/lh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    iput-object v1, p0, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/lo;->aZY:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/mu;)Lcom/google/android/gms/internal/nd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sI()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/mx;->a(Lcom/google/android/gms/internal/mu;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sL()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ng;->b(Lcom/google/android/gms/internal/mu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/lp;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/lp;

    invoke-direct {v3}, Lcom/google/android/gms/internal/lp;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/lp;

    invoke-direct {v3}, Lcom/google/android/gms/internal/lp;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ng;->b(Lcom/google/android/gms/internal/mu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/ln;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/ln;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ln;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/ln;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ln;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ng;->b(Lcom/google/android/gms/internal/mu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/lh;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/lh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/lh;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/lh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/lh;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/mv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/mv;->e(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/mv;->aw(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/mv;->a(ILcom/google/android/gms/internal/nd;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/mv;->a(ILcom/google/android/gms/internal/nd;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/mv;->a(ILcom/google/android/gms/internal/nd;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mx;->a(Lcom/google/android/gms/internal/mv;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/lo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/lo;

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    iget-object v3, p1, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/nb;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    iget-object v3, p1, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/nb;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    iget-object v3, p1, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/nb;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    iget-object v1, p1, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mz;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    invoke-static {v2}, Lcom/google/android/gms/internal/nb;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    invoke-static {v2}, Lcom/google/android/gms/internal/nb;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    invoke-static {v2}, Lcom/google/android/gms/internal/nb;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mz;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method protected final st()I
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/mx;->st()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/lo;->aXW:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mv;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/lo;->aQz:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/lo;->aXX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mv;->ax(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXY:[Lcom/google/android/gms/internal/lp;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/mv;->b(ILcom/google/android/gms/internal/nd;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->aXZ:[Lcom/google/android/gms/internal/ln;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/mv;->b(ILcom/google/android/gms/internal/nd;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    move v0, v3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    array-length v1, v1

    if-lez v1, :cond_a

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    array-length v1, v1

    if-ge v2, v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->aYa:[Lcom/google/android/gms/internal/lh;

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mv;->b(ILcom/google/android/gms/internal/nd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    return v0
.end method