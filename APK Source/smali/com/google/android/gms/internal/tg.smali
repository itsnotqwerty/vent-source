.class public final Lcom/google/android/gms/internal/tg;
.super Lcom/google/android/gms/internal/sr;


# instance fields
.field private final bcP:Lcom/google/android/gms/ads/b/i$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/i$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/sr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/tg;->bcP:Lcom/google/android/gms/ads/b/i$b;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/sd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tg;->bcP:Lcom/google/android/gms/ads/b/i$b;

    invoke-static {p1}, Lcom/google/android/gms/internal/sg;->a(Lcom/google/android/gms/internal/sd;)Lcom/google/android/gms/internal/sg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/i$b;->a(Lcom/google/android/gms/ads/b/i;)V

    return-void
.end method
