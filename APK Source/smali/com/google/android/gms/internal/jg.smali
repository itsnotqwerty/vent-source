.class public final Lcom/google/android/gms/internal/jg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVW:Lcom/google/android/gms/internal/ja;

.field private synthetic aWa:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ja;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jg;->aVW:Lcom/google/android/gms/internal/ja;

    iput-wide p2, p0, Lcom/google/android/gms/internal/jg;->aWa:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTU:Lcom/google/android/gms/internal/hn;

    iget-wide v2, p0, Lcom/google/android/gms/internal/jg;->aWa:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/hn;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v1, "Minimum session duration set"

    iget-wide v2, p0, Lcom/google/android/gms/internal/jg;->aWa:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
