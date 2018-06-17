.class public final Lcom/google/android/gms/internal/tf;
.super Lcom/google/android/gms/internal/so;


# instance fields
.field private final bcO:Lcom/google/android/gms/ads/b/i$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/i$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/so;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/tf;->bcO:Lcom/google/android/gms/ads/b/i$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/sd;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->bcO:Lcom/google/android/gms/ads/b/i$a;

    invoke-static {p1}, Lcom/google/android/gms/internal/sg;->a(Lcom/google/android/gms/internal/sd;)Lcom/google/android/gms/internal/sg;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/ads/b/i$a;->a(Lcom/google/android/gms/ads/b/i;Ljava/lang/String;)V

    return-void
.end method
