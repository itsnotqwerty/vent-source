.class final Lcom/layer/sdk/internal/lsdkk/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/f;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic bsL:Lcom/layer/sdk/internal/lsdkk/f$a;

.field final synthetic bsM:Lcom/layer/sdk/internal/lsdkk/f;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkk/f;Lcom/layer/sdk/internal/lsdkk/f$a;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/f$1;->bsM:Lcom/layer/sdk/internal/lsdkk/f;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/f$1;->bsL:Lcom/layer/sdk/internal/lsdkk/f$a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkk/f$1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/f$1;->bsL:Lcom/layer/sdk/internal/lsdkk/f$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/f$1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/f$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/f;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/f$1;->bsL:Lcom/layer/sdk/internal/lsdkk/f$a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/f$1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/f$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
