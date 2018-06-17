.class public final Lcom/google/android/gms/internal/fe;
.super Ljava/lang/Object;


# instance fields
.field final aPL:Lcom/google/android/gms/internal/fq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fq",
            "<",
            "Lcom/google/android/gms/internal/fc;",
            ">;"
        }
    .end annotation
.end field

.field private aPZ:Landroid/content/ContentProviderClient;

.field aQa:Z

.field final aQb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/be",
            "<",
            "Lcom/google/android/gms/location/c;",
            ">;",
            "Lcom/google/android/gms/internal/fj;",
            ">;"
        }
    .end annotation
.end field

.field final aQc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/be",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/fi;",
            ">;"
        }
    .end annotation
.end field

.field final aQd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/be",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ff;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/fq",
            "<",
            "Lcom/google/android/gms/internal/fc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fe;->aPZ:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fe;->aQa:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fe;->aQc:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fe;->aQd:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/fe;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/common/api/internal/bc;)Lcom/google/android/gms/internal/fj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bc",
            "<",
            "Lcom/google/android/gms/location/c;",
            ">;)",
            "Lcom/google/android/gms/internal/fj;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/bc;->aFR:Lcom/google/android/gms/common/api/internal/be;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fj;-><init>(Lcom/google/android/gms/common/api/internal/bc;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/bc;->aFR:Lcom/google/android/gms/common/api/internal/be;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
