.class public final Lcom/google/android/gms/ads/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/c$a;
    }
.end annotation


# instance fields
.field public final ayZ:Lcom/google/android/gms/internal/px;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/px;

    iget-object v1, p1, Lcom/google/android/gms/ads/c$a;->aza:Lcom/google/android/gms/internal/py;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/px;-><init>(Lcom/google/android/gms/internal/py;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/c;->ayZ:Lcom/google/android/gms/internal/px;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/c$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/c;-><init>(Lcom/google/android/gms/ads/c$a;)V

    return-void
.end method
