.class public final Lcom/google/android/gms/common/api/internal/cd;
.super Ljava/lang/Object;


# instance fields
.field final aCy:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation
.end field

.field private final aGA:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final aGB:Lcom/google/android/gms/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/f",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private aGC:I

.field private aGD:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/common/api/e",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGA:Landroid/support/v4/g/a;

    new-instance v0, Lcom/google/android/gms/c/f;

    invoke-direct {v0}, Lcom/google/android/gms/c/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGB:Lcom/google/android/gms/c/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGD:Z

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aCy:Landroid/support/v4/g/a;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cd;->aCy:Landroid/support/v4/g/a;

    iget-object v0, v0, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aCy:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGC:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/common/a;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aCy:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGA:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGC:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGC:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGD:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGC:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGD:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cd;->aCy:Landroid/support/v4/g/a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/support/v4/g/a;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cd;->aGB:Lcom/google/android/gms/c/f;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/f;->e(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cd;->aGB:Lcom/google/android/gms/c/f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cd;->aGA:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/f;->N(Ljava/lang/Object;)V

    goto :goto_0
.end method
