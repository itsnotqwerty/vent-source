.class public final Lcom/google/android/gms/c/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic DM:Ljava/util/concurrent/Callable;

.field private synthetic bem:Lcom/google/android/gms/c/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/r;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/s;->bem:Lcom/google/android/gms/c/r;

    iput-object p2, p0, Lcom/google/android/gms/c/s;->DM:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/s;->bem:Lcom/google/android/gms/c/r;

    iget-object v1, p0, Lcom/google/android/gms/c/s;->DM:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/r;->N(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/s;->bem:Lcom/google/android/gms/c/r;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/r;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
