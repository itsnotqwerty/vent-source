.class final Lcom/google/android/gms/internal/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aMl:Lcom/google/android/gms/internal/av;

.field private synthetic aMp:Lcom/google/android/gms/internal/ck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/az;->aMl:Lcom/google/android/gms/internal/av;

    iput-object p2, p0, Lcom/google/android/gms/internal/az;->aMp:Lcom/google/android/gms/internal/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->aMl:Lcom/google/android/gms/internal/av;

    iget-object v0, v0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    iget-object v1, p0, Lcom/google/android/gms/internal/az;->aMp:Lcom/google/android/gms/internal/ck;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->b(Lcom/google/android/gms/internal/ck;)V

    return-void
.end method
