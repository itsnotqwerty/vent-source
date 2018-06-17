.class public final Lcom/google/android/gms/c/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/h$a;,
        Lcom/google/android/gms/c/h$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/c/e;Lcom/google/android/gms/c/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/e",
            "<*>;",
            "Lcom/google/android/gms/c/h$b;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/c/g;->bdW:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/c/e;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/e;

    sget-object v0, Lcom/google/android/gms/c/g;->bdW:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/c/e;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/e;

    return-void
.end method

.method public static b(Lcom/google/android/gms/c/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/c/e",
            "<TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/c/e;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/c/e;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/gms/c/e;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
