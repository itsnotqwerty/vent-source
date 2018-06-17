.class final Lcom/google/android/gms/internal/js;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aWw:Lcom/google/android/gms/internal/jq;

.field private synthetic aWx:Lcom/google/android/gms/internal/jt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jq;Lcom/google/android/gms/internal/jt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/js;->aWw:Lcom/google/android/gms/internal/jq;

    iput-object p2, p0, Lcom/google/android/gms/internal/js;->aWx:Lcom/google/android/gms/internal/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/js;->aWw:Lcom/google/android/gms/internal/jq;

    iget-object v1, p0, Lcom/google/android/gms/internal/js;->aWx:Lcom/google/android/gms/internal/jt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jq;->a(Lcom/google/android/gms/internal/jq;Lcom/google/android/gms/internal/jt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/js;->aWw:Lcom/google/android/gms/internal/jq;

    iput-object v2, v0, Lcom/google/android/gms/internal/jq;->aWk:Lcom/google/android/gms/internal/jt;

    iget-object v0, p0, Lcom/google/android/gms/internal/js;->aWw:Lcom/google/android/gms/internal/jq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ju;->a(Lcom/google/android/gms/internal/jp;)V

    return-void
.end method
