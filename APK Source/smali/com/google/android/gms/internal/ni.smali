.class public final Lcom/google/android/gms/internal/ni;
.super Lcom/google/android/gms/internal/mx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mx",
        "<",
        "Lcom/google/android/gms/internal/ni;",
        ">;"
    }
.end annotation


# instance fields
.field public bam:Ljava/lang/String;

.field public ban:Ljava/lang/String;

.field public bao:J

.field public bap:Ljava/lang/String;

.field public baq:J

.field public bar:J

.field public bas:Ljava/lang/String;

.field public bat:Ljava/lang/String;

.field public bau:Ljava/lang/String;

.field public bav:Ljava/lang/String;

.field public baw:Ljava/lang/String;

.field public bax:I

.field public bay:[Lcom/google/android/gms/internal/nh;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mx;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bam:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->ban:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ni;->bao:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bap:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ni;->baq:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ni;->bar:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bas:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bat:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bau:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bav:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->baw:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ni;->bax:I

    invoke-static {}, Lcom/google/android/gms/internal/nh;->ta()[Lcom/google/android/gms/internal/nh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->aZO:Lcom/google/android/gms/internal/mz;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ni;->aZY:I

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bam:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->ban:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sL()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ni;->bao:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bap:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sL()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ni;->baq:J

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sL()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ni;->bar:J

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bas:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bat:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bau:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->bav:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni;->baw:Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ni;->bax:I

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ng;->b(Lcom/google/android/gms/internal/mu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/nh;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/nh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/nh;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/nh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/nh;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/mv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bam:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bam:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bam:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->ban:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->ban:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->ban:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ni;->bao:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->bao:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/mv;->e(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bap:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bap:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bap:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ni;->baq:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->baq:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/mv;->e(IJ)V

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ni;->bar:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->bar:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/mv;->e(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bas:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bas:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bas:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bat:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bat:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bat:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bau:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bau:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bau:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bav:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bav:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bav:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->baw:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->baw:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->baw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/ni;->bax:I

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/internal/ni;->bax:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->aw(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/mv;->a(ILcom/google/android/gms/internal/nd;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_d
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mx;->a(Lcom/google/android/gms/internal/mv;)V

    return-void
.end method

.method protected final st()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/mx;->st()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bam:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bam:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ni;->bam:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->ban:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->ban:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ni;->ban:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->bao:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->bao:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mv;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bap:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bap:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ni;->bap:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->baq:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->baq:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mv;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->bar:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/ni;->bar:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mv;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bas:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bas:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ni;->bas:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bat:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bat:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ni;->bat:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bau:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bau:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ni;->bau:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bav:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bav:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ni;->bav:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->baw:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->baw:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/ni;->baw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/ni;->bax:I

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/ni;->bax:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->ax(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    array-length v1, v1

    if-lez v1, :cond_e

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ni;->bay:[Lcom/google/android/gms/internal/nh;

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    const/16 v3, 0xd

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mv;->b(ILcom/google/android/gms/internal/nd;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_d
    move v0, v2

    :cond_e
    return v0
.end method
