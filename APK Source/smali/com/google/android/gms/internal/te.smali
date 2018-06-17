.class public final Lcom/google/android/gms/internal/te;
.super Lcom/google/android/gms/internal/sl;


# instance fields
.field private final bcN:Lcom/google/android/gms/ads/b/h$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/h$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/sl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/te;->bcN:Lcom/google/android/gms/ads/b/h$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/sa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/te;->bcN:Lcom/google/android/gms/ads/b/h$a;

    new-instance v1, Lcom/google/android/gms/internal/sc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/sc;-><init>(Lcom/google/android/gms/internal/sa;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/h$a;->a(Lcom/google/android/gms/ads/b/h;)V

    return-void
.end method
