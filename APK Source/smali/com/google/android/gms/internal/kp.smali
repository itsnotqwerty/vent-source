.class public final synthetic Lcom/google/android/gms/internal/kp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aWT:Lcom/google/android/gms/internal/ko;

.field private final aWU:I

.field private final aWV:Lcom/google/android/gms/internal/hb;

.field private final aWW:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ko;ILcom/google/android/gms/internal/hb;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kp;->aWT:Lcom/google/android/gms/internal/ko;

    iput p2, p0, Lcom/google/android/gms/internal/kp;->aWU:I

    iput-object p3, p0, Lcom/google/android/gms/internal/kp;->aWV:Lcom/google/android/gms/internal/hb;

    iput-object p4, p0, Lcom/google/android/gms/internal/kp;->aWW:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/kp;->aWT:Lcom/google/android/gms/internal/ko;

    iget v2, p0, Lcom/google/android/gms/internal/kp;->aWU:I

    iget-object v3, p0, Lcom/google/android/gms/internal/kp;->aWV:Lcom/google/android/gms/internal/hb;

    iget-object v4, p0, Lcom/google/android/gms/internal/kp;->aWW:Landroid/content/Intent;

    iget-object v0, v1, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/ks;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ks;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Local AppMeasurementService processed last upload request. StartId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ko;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "Completed wakeful intent."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/ks;

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ks;->c(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
