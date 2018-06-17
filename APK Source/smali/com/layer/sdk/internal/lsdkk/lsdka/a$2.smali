.class final Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
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

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;->j:Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->e(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;

    const-string v1, "Could not answer challenge"

    invoke-static {p1, v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkk/lsdka/a$b;->a(Lcom/layer/sdk/exceptions/LayerException;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public final wp()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthManager: Successfully answered challenge"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->l()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/a$2;->bsU:Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->g(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method
