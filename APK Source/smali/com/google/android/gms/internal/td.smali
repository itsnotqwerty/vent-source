.class public final Lcom/google/android/gms/internal/td;
.super Lcom/google/android/gms/internal/si;


# instance fields
.field private final bcM:Lcom/google/android/gms/ads/b/g$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/g$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/si;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/td;->bcM:Lcom/google/android/gms/ads/b/g$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/rx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/td;->bcM:Lcom/google/android/gms/ads/b/g$a;

    new-instance v1, Lcom/google/android/gms/internal/rz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rz;-><init>(Lcom/google/android/gms/internal/rx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/g$a;->a(Lcom/google/android/gms/ads/b/g;)V

    return-void
.end method
