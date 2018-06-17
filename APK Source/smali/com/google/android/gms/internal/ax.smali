.class public final Lcom/google/android/gms/internal/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aMl:Lcom/google/android/gms/internal/av;

.field private synthetic aMm:Ljava/lang/String;

.field private synthetic aMn:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/av;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ax;->aMl:Lcom/google/android/gms/internal/av;

    iput-object p2, p0, Lcom/google/android/gms/internal/ax;->aMm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ax;->aMn:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->aMl:Lcom/google/android/gms/internal/av;

    iget-object v0, v0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->aMm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->bF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->aMn:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->aMn:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
