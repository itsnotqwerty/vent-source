.class final Lcom/google/android/gms/common/api/internal/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aFw:Lcom/google/android/gms/common/api/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/an;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ao;->aFw:Lcom/google/android/gms/common/api/internal/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ao;->aFw:Lcom/google/android/gms/common/api/internal/an;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/an;->aFu:Lcom/google/android/gms/common/api/internal/aj;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    return-void
.end method
