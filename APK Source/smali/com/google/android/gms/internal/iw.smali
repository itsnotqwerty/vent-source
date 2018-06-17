.class final Lcom/google/android/gms/internal/iw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVD:Ljava/lang/String;

.field private synthetic aVH:Lcom/google/android/gms/internal/ie;

.field private synthetic aVN:Ljava/lang/String;

.field private synthetic aVO:Ljava/lang/String;

.field private synthetic aVP:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/iw;->aVH:Lcom/google/android/gms/internal/ie;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw;->aVN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/iw;->aVD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/iw;->aVO:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/iw;->aVP:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->aVN:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v0}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qG()Lcom/google/android/gms/internal/jq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->aVD:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jq;->a(Ljava/lang/String;Lcom/google/android/gms/internal/jp;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/jp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jp;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->aVO:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->aVN:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/jp;->aWi:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/iw;->aVP:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/jp;->aWj:J

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->aVH:Lcom/google/android/gms/internal/ie;

    invoke-static {v1}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/ie;)Lcom/google/android/gms/internal/hz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qG()Lcom/google/android/gms/internal/jq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->aVD:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/jq;->a(Ljava/lang/String;Lcom/google/android/gms/internal/jp;)V

    goto :goto_0
.end method
