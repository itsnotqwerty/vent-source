.class public final Lcom/google/android/gms/internal/cv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile aOV:Lcom/google/android/gms/analytics/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cv;->aOV:Lcom/google/android/gms/analytics/c;

    return-void
.end method

.method public static bt(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/cw;->qc()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ba;->bz(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/cv;->aOV:Lcom/google/android/gms/analytics/c;

    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->cQ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/cm;->aNP:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static cQ(I)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/cv;->aOV:Lcom/google/android/gms/analytics/c;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/cv;->aOV:Lcom/google/android/gms/analytics/c;

    invoke-interface {v1}, Lcom/google/android/gms/analytics/c;->getLogLevel()I

    move-result v1

    if-gt v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/cw;->qc()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/cv;->aOV:Lcom/google/android/gms/analytics/c;

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->cQ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/cm;->aNP:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
