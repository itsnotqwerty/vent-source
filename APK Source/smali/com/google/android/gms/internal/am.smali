.class public final Lcom/google/android/gms/internal/am;
.super Lcom/google/android/gms/analytics/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/l",
        "<",
        "Lcom/google/android/gms/internal/am;",
        ">;"
    }
.end annotation


# instance fields
.field public aLA:Ljava/lang/String;

.field public aLB:I

.field public aLC:I

.field public aLD:I

.field public aLE:I

.field public aLF:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/google/android/gms/analytics/l;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/am;

    iget v0, p0, Lcom/google/android/gms/internal/am;->aLB:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/am;->aLB:I

    iput v0, p1, Lcom/google/android/gms/internal/am;->aLB:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/am;->aLC:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/am;->aLC:I

    iput v0, p1, Lcom/google/android/gms/internal/am;->aLC:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/am;->aLD:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/am;->aLD:I

    iput v0, p1, Lcom/google/android/gms/internal/am;->aLD:I

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/am;->aLE:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/am;->aLE:I

    iput v0, p1, Lcom/google/android/gms/internal/am;->aLE:I

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/am;->aLF:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/am;->aLF:I

    iput v0, p1, Lcom/google/android/gms/internal/am;->aLF:I

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/am;->aLA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->aLA:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/am;->aLA:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/am;->aLA:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/am;->aLB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/am;->aLC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/am;->aLD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/am;->aLE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/am;->aLF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/am;->L(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
