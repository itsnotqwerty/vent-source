.class final Lcom/google/android/gms/common/api/internal/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aEv:Lcom/google/android/gms/internal/mn;

.field private synthetic aGc:Lcom/google/android/gms/common/api/internal/bm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bm;Lcom/google/android/gms/internal/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bo;->aGc:Lcom/google/android/gms/common/api/internal/bm;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bo;->aEv:Lcom/google/android/gms/internal/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bo;->aGc:Lcom/google/android/gms/common/api/internal/bm;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bo;->aEv:Lcom/google/android/gms/internal/mn;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/bm;->a(Lcom/google/android/gms/common/api/internal/bm;Lcom/google/android/gms/internal/mn;)V

    return-void
.end method
