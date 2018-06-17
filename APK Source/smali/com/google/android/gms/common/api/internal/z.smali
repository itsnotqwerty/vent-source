.class final Lcom/google/android/gms/common/api/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/g;


# instance fields
.field private synthetic aEM:Lcom/google/android/gms/common/api/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z;->aEM:Lcom/google/android/gms/common/api/internal/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->aEM:Lcom/google/android/gms/common/api/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->isConnected()Z

    move-result v0

    return v0
.end method
