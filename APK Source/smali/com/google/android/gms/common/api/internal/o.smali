.class final Lcom/google/android/gms/common/api/internal/o;
.super Lcom/google/android/gms/common/api/internal/v;


# instance fields
.field final synthetic aEm:Lcom/google/android/gms/common/api/internal/l;

.field private final aEp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/common/api/internal/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/l;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/common/api/internal/n;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->aEm:Lcom/google/android/gms/common/api/internal/l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/v;-><init>(Lcom/google/android/gms/common/api/internal/l;B)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/o;->aEp:Ljava/util/Map;

    return-void
.end method

.method private final a(Lcom/google/android/gms/common/api/a$f;Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$f;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$f;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/m;->K(Landroid/content/Context;)I

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final nn()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->aEp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->aEp:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/n;

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/n;->aEo:Z

    if-nez v1, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->aEp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, -0x1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/google/android/gms/common/api/a$f;

    invoke-direct {p0, v1, v5}, Lcom/google/android/gms/common/api/internal/o;->a(Lcom/google/android/gms/common/api/a$f;Ljava/util/Map;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    :goto_1
    move v0, v1

    if-eqz v0, :cond_7

    new-instance v1, Lcom/google/android/gms/common/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    new-instance v2, Lcom/google/android/gms/common/api/internal/p;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/o;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/o;Lcom/google/android/gms/common/api/internal/ac;Lcom/google/android/gms/common/a;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/ad;->a(Lcom/google/android/gms/common/api/internal/ae;)V

    :cond_4
    return-void

    :cond_5
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v4

    :cond_6
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/common/api/a$f;

    invoke-direct {p0, v1, v5}, Lcom/google/android/gms/common/api/internal/o;->a(Lcom/google/android/gms/common/api/a$f;Ljava/util/Map;)I

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/l;->aEg:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->connect()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->aEp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->aEp:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/ar;

    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/common/api/internal/o;->a(Lcom/google/android/gms/common/api/a$f;Ljava/util/Map;)I

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    new-instance v3, Lcom/google/android/gms/common/api/internal/q;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/o;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {v3, v4, v1}, Lcom/google/android/gms/common/api/internal/q;-><init>(Lcom/google/android/gms/common/api/internal/ac;Lcom/google/android/gms/common/internal/ar;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/ad;->a(Lcom/google/android/gms/common/api/internal/ae;)V

    goto :goto_2

    :cond_9
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/ar;)V

    goto :goto_2
.end method
