.class final Lcom/layer/sdk/internal/lsdkk/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/d;->i()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bsJ:Lcom/layer/sdk/internal/lsdkk/d;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/d$2;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$2;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->f()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$2;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d$2;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdkk/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public final wp()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$2;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->f()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$2;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d$2;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdkk/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method
