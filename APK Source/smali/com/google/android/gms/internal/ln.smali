.class public final Lcom/google/android/gms/internal/ln;
.super Lcom/google/android/gms/internal/mx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mx",
        "<",
        "Lcom/google/android/gms/internal/ln;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aXS:[Lcom/google/android/gms/internal/ln;


# instance fields
.field public aXT:Ljava/lang/Boolean;

.field public aXU:Ljava/lang/Boolean;

.field public aXV:Ljava/lang/Integer;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ln;->aZY:I

    return-void
.end method

.method public static sx()[Lcom/google/android/gms/internal/ln;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ln;->aXS:[Lcom/google/android/gms/internal/ln;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/nb;->aZX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ln;->aXS:[Lcom/google/android/gms/internal/ln;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ln;

    sput-object v0, Lcom/google/android/gms/internal/ln;->aXS:[Lcom/google/android/gms/internal/ln;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ln;->aXS:[Lcom/google/android/gms/internal/ln;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sJ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mu;->sK()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/mv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->d(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->i(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->i(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mv;->aw(II)V

    :cond_3
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
    instance-of v2, p1, Lcom/google/android/gms/internal/ln;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    iget-object v1, p1, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mz;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aZO:Lcom/google/android/gms/internal/mz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mz;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method protected final st()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/mx;->st()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aXT:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/gms/internal/mv;->db(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aXU:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/google/android/gms/internal/mv;->db(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ln;->aXV:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->ax(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
