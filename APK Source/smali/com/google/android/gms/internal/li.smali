.class public final Lcom/google/android/gms/internal/li;
.super Lcom/google/android/gms/internal/mx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mx",
        "<",
        "Lcom/google/android/gms/internal/li;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aXv:[Lcom/google/android/gms/internal/li;


# instance fields
.field public aXA:Lcom/google/android/gms/internal/lk;

.field public aXw:Ljava/lang/Integer;

.field public aXx:Ljava/lang/String;

.field public aXy:[Lcom/google/android/gms/internal/lj;

.field private aXz:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mx;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/lj;->sv()[Lcom/google/android/gms/internal/lj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    iput-object v1, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    iput-object v1, p0, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/li;->aZY:I

    return-void
.end method

.method public static su()[Lcom/google/android/gms/internal/li;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/li;->aXv:[Lcom/google/android/gms/internal/li;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/nb;->aZX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/li;->aXv:[Lcom/google/android/gms/internal/li;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/li;

    sput-object v0, Lcom/google/android/gms/internal/li;->aXv:[Lcom/google/android/gms/internal/li;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/li;->aXv:[Lcom/google/android/gms/internal/li;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ng;->b(Lcom/google/android/gms/internal/mu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/lj;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/lj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/lj;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/lj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/lj;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/lk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/nd;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/mv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->aw(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/mv;->a(ILcom/google/android/gms/internal/nd;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->i(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->a(ILcom/google/android/gms/internal/nd;)V

    :cond_5
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
    instance-of v2, p1, Lcom/google/android/gms/internal/li;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/li;

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    iget-object v3, p1, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/nb;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    iget-object v3, p1, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/lk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    iget-object v1, p1, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mz;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    invoke-static {v2}, Lcom/google/android/gms/internal/nb;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/lk;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mz;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method protected final st()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/mx;->st()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->ax(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXx:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->aXy:[Lcom/google/android/gms/internal/lj;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mv;->b(ILcom/google/android/gms/internal/nd;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXz:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/android/gms/internal/mv;->db(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/li;->aXA:Lcom/google/android/gms/internal/lk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->b(ILcom/google/android/gms/internal/nd;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method
