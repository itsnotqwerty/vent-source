.class final Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/lsdka/a;->m()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
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

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->wB()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Deauth Attempt failed"

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->o()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->h(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->i(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->i(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public final wp()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->o()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->h(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->i(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$3;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->i(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method
