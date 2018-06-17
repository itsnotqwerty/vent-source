.class final Lcom/google/android/gms/internal/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aMU:Lcom/google/android/gms/internal/bj;

.field private synthetic aMV:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bl;->aMU:Lcom/google/android/gms/internal/bj;

    iput-object p2, p0, Lcom/google/android/gms/internal/bl;->aMV:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bl;->aMU:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->aMQ:Lcom/google/android/gms/internal/bh;

    iget-object v1, p0, Lcom/google/android/gms/internal/bl;->aMV:Landroid/content/ComponentName;

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iget-object v2, v0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    const-string v2, "Disconnected from device AnalyticsService"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->pa()V

    :cond_0
    return-void
.end method
