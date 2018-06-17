.class public final Lcom/google/android/gms/internal/qu;
.super Ljava/lang/Object;


# instance fields
.field private volatile aAL:Z

.field private aKF:Landroid/content/SharedPreferences;

.field private final bcp:Landroid/os/ConditionVariable;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->bcp:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qu;->aAL:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/qu;->aKF:Landroid/content/SharedPreferences;

    return-void
.end method
