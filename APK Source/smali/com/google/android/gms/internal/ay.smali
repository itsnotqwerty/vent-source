.class final Lcom/google/android/gms/internal/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aMl:Lcom/google/android/gms/internal/av;

.field private synthetic aMo:Lcom/google/android/gms/internal/cr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ay;->aMl:Lcom/google/android/gms/internal/av;

    iput-object p2, p0, Lcom/google/android/gms/internal/ay;->aMo:Lcom/google/android/gms/internal/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ay;->aMl:Lcom/google/android/gms/internal/av;

    iget-object v0, v0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ay;->aMo:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/cr;)V

    return-void
.end method
