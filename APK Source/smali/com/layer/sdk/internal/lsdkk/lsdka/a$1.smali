.class final Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/lsdka/a;->l()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/a/c/c;)V
    .locals 2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthManager: Starting task for auth attempt"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->wB()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Starting authentication task"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V

    return-void
.end method

.method public final a(Lcom/layer/a/c/c;JLjava/lang/Throwable;)V
    .locals 4

    invoke-static {p4}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->f(Ljava/lang/Throwable;)Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->EIT_NONCE_NOT_FOUND:Lcom/layer/sdk/exceptions/LayerException$Type;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->wB()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth attempt couldn\'t resolve the nonce. Reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->f(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Lcom/layer/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/b/a/a;->e()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->k()V

    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->wB()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrying authentication in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms... Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/layer/a/c/c;Lcom/layer/a/c/c$b;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    const-string v1, "Could not authenticate"

    invoke-static {p3, v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;

    move-result-object v2

    sget-object v1, Lcom/layer/a/c/c$b;->bpH:Lcom/layer/a/c/c$b;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->a(Lcom/layer/sdk/exceptions/LayerException;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->d(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->d(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public final b(Lcom/layer/a/c/c;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthManager: Task for auth attempt succeeded"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Lcom/layer/b/a/a$a;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->wB()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Authenticated but session does not exist. Setting to a challenged state."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->d(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/layer/b/a/a$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/layer/b/a/a$a;->a:Ljava/util/UUID;

    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->wB()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Authenticated but session is invalid. Setting to a challenged state."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->d:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->d(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    sget-object v3, Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;

    invoke-virtual {v2, v1, v0, v3}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/layer/sdk/internal/lsdkk/lsdka/a$a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->d(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$1;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->d(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method
