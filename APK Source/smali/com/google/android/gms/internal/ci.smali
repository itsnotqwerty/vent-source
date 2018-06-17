.class public final Lcom/google/android/gms/internal/ci;
.super Lcom/google/android/gms/internal/bb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/bd;)V

    return-void
.end method


# virtual methods
.method protected final mG()V
    .locals 0

    return-void
.end method

.method public final pX()Lcom/google/android/gms/internal/am;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/analytics/n;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/am;

    invoke-direct {v1}, Lcom/google/android/gms/internal/am;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/di;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/am;->aLA:Ljava/lang/String;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Lcom/google/android/gms/internal/am;->aLC:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v1, Lcom/google/android/gms/internal/am;->aLD:I

    return-object v1
.end method

.method public final pY()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ci;->pX()Lcom/google/android/gms/internal/am;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/am;->aLC:I

    iget v0, v0, Lcom/google/android/gms/internal/am;->aLD:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
