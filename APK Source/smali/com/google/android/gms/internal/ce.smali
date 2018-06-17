.class public final Lcom/google/android/gms/internal/ce;
.super Ljava/lang/Object;


# instance fields
.field private final aBd:Lcom/google/android/gms/internal/bd;

.field private volatile aNB:Ljava/lang/Boolean;

.field private aNC:Ljava/lang/String;

.field private aND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ce;->aBd:Lcom/google/android/gms/internal/bd;

    return-void
.end method

.method public static pL()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cm;->aNO:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static pM()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOl:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static pN()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/cm;->aNW:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static pO()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/cm;->aNZ:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static pP()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOb:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static pQ()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOc:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static pR()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOe:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static pS()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOd:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static pT()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOf:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static pV()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOt:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final pK()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aBd:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/m;->oL()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "com.google.android.gms.analytics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aBd:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bA(Ljava/lang/String;)V

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aNB:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final pU()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOo:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ce;->aND:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ce;->aNC:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ce;->aNC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ce;->aNC:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/ce;->aND:Ljava/util/Set;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ce;->aND:Ljava/util/Set;

    return-object v0

    :catch_0
    move-exception v5

    goto :goto_1
.end method
