.class final Lcom/google/android/gms/internal/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aMk:Z

.field private synthetic aMl:Lcom/google/android/gms/internal/av;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/av;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->aMl:Lcom/google/android/gms/internal/av;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/aw;->aMk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->aMl:Lcom/google/android/gms/internal/av;

    iget-object v0, v0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bp;->pA()V

    return-void
.end method
