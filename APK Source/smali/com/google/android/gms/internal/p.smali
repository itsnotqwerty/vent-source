.class public final Lcom/google/android/gms/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/b;


# instance fields
.field private final aKQ:Lcom/google/android/gms/internal/c;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/p;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/p;->aKQ:Lcom/google/android/gms/internal/c;

    iput-object p1, p0, Lcom/google/android/gms/internal/p;->mContext:Landroid/content/Context;

    return-void
.end method
