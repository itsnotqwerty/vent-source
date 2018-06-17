.class public final Lcom/google/android/gms/c/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final bdU:Lcom/google/android/gms/c/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/r",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/c/r;

    invoke-direct {v0}, Lcom/google/android/gms/c/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/f;->bdU:Lcom/google/android/gms/c/r;

    return-void
.end method


# virtual methods
.method public final N(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/f;->bdU:Lcom/google/android/gms/c/r;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/r;->N(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/f;->bdU:Lcom/google/android/gms/c/r;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/r;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method public final f(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/f;->bdU:Lcom/google/android/gms/c/r;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/r;->f(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
