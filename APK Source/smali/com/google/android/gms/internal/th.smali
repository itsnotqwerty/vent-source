.class public final Lcom/google/android/gms/internal/th;
.super Lcom/google/android/gms/internal/sw;


# instance fields
.field private final bcQ:Lcom/google/android/gms/ads/b/k$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/k$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/sw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/th;->bcQ:Lcom/google/android/gms/ads/b/k$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/sy;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/th;->bcQ:Lcom/google/android/gms/ads/b/k$a;

    new-instance v1, Lcom/google/android/gms/internal/ta;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ta;-><init>(Lcom/google/android/gms/internal/sy;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/k$a;->a(Lcom/google/android/gms/ads/b/k;)V

    return-void
.end method
