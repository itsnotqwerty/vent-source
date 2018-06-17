.class public Lcom/google/android/gms/analytics/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/m;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final aBw:Lcom/google/android/gms/analytics/n;

.field protected final aBx:Lcom/google/android/gms/analytics/k;

.field private final aBy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/n;Lcom/google/android/gms/common/util/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/m;->aBw:Lcom/google/android/gms/analytics/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/m;->aBy:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/analytics/k;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/analytics/k;-><init>(Lcom/google/android/gms/analytics/m;Lcom/google/android/gms/common/util/e;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/analytics/k;->aBt:Z

    iput-object v0, p0, Lcom/google/android/gms/analytics/m;->aBx:Lcom/google/android/gms/analytics/k;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/analytics/k;)V
    .locals 0

    return-void
.end method

.method public mI()Lcom/google/android/gms/analytics/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/m;->aBx:Lcom/google/android/gms/analytics/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/k;->mK()Lcom/google/android/gms/analytics/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/m;->mL()V

    return-object v0
.end method

.method protected final mL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/m;->aBy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
