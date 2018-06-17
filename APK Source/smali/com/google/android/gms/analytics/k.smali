.class public final Lcom/google/android/gms/analytics/k;
.super Ljava/lang/Object;


# instance fields
.field public final aBl:Lcom/google/android/gms/analytics/m;

.field public final aBm:Lcom/google/android/gms/common/util/e;

.field public aBn:Z

.field public aBo:J

.field public aBp:J

.field public aBq:J

.field private aBr:J

.field private aBs:J

.field public aBt:Z

.field final aBu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/analytics/l;",
            ">;",
            "Lcom/google/android/gms/analytics/l;",
            ">;"
        }
    .end annotation
.end field

.field final aBv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/k;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/analytics/k;->aBl:Lcom/google/android/gms/analytics/m;

    iput-object v0, p0, Lcom/google/android/gms/analytics/k;->aBl:Lcom/google/android/gms/analytics/m;

    iget-object v0, p1, Lcom/google/android/gms/analytics/k;->aBm:Lcom/google/android/gms/common/util/e;

    iput-object v0, p0, Lcom/google/android/gms/analytics/k;->aBm:Lcom/google/android/gms/common/util/e;

    iget-wide v0, p1, Lcom/google/android/gms/analytics/k;->aBo:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/k;->aBo:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/k;->aBp:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/k;->aBp:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/k;->aBq:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/k;->aBq:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/k;->aBr:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/k;->aBr:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/k;->aBs:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/k;->aBs:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/analytics/k;->aBv:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/k;->aBv:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/analytics/k;->aBu:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/k;->aBu:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/android/gms/analytics/k;->aBu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/analytics/k;->j(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/l;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/l;->b(Lcom/google/android/gms/analytics/l;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/k;->aBu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/m;Lcom/google/android/gms/common/util/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/k;->aBl:Lcom/google/android/gms/analytics/m;

    iput-object p2, p0, Lcom/google/android/gms/analytics/k;->aBm:Lcom/google/android/gms/common/util/e;

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/google/android/gms/analytics/k;->aBr:J

    const-wide v0, 0xb43e9400L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/k;->aBs:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/k;->aBu:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/k;->aBv:Ljava/util/List;

    return-void
.end method

.method private static j(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/l;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/InstantiationException;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataType doesn\'t have default constructor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    instance-of v1, v0, Ljava/lang/IllegalAccessException;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataType default constructor is not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    instance-of v1, v0, Ljava/lang/ReflectiveOperationException;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Linkage exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/analytics/l;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/analytics/l;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/k;->i(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/l;->b(Lcom/google/android/gms/analytics/l;)V

    return-void
.end method

.method public final h(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/l;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->aBu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/l;

    return-object v0
.end method

.method public final i(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/l;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->aBu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/l;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/analytics/k;->j(Ljava/lang/Class;)Lcom/google/android/gms/analytics/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/k;->aBu:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final mK()Lcom/google/android/gms/analytics/k;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/k;-><init>(Lcom/google/android/gms/analytics/k;)V

    return-object v0
.end method
