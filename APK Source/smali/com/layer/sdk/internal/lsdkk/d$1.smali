.class final Lcom/layer/sdk/internal/lsdkk/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/d;->h()Z
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

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/a/c/c;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/layer/a/c/c;JLjava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/d;->wA()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrying connection in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/d;->wA()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrying connection in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/layer/sdk/internal/lsdkk/k;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/layer/a/c/c;Lcom/layer/a/c/c$b;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/d;->wA()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to connect ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->d()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/d$3;->b:[I

    invoke-virtual {p2}, Lcom/layer/a/c/c$b;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/d;->wA()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to connect ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/d;->a(Lcom/layer/sdk/internal/lsdkk/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/d;->b(Lcom/layer/sdk/internal/lsdkk/d;)Lcom/layer/sdk/internal/lsdkk/d$a;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->CANNOT_CONNECT_TO_HOST:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "Cancelled"

    invoke-direct {v1, v2, v3, p3}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/d$a;->a(Lcom/layer/sdk/exceptions/LayerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/d;->a(Lcom/layer/sdk/internal/lsdkk/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/d;->b(Lcom/layer/sdk/internal/lsdkk/d;)Lcom/layer/sdk/internal/lsdkk/d$a;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->CANNOT_CONNECT_TO_HOST:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "Too many retries"

    invoke-direct {v1, v2, v3, p3}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/d$a;->a(Lcom/layer/sdk/exceptions/LayerException;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/d;->a(Lcom/layer/sdk/internal/lsdkk/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/d;->b(Lcom/layer/sdk/internal/lsdkk/d;)Lcom/layer/sdk/internal/lsdkk/d$a;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->CANNOT_CONNECT_TO_HOST:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-direct {v1, v2, p3}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/d$a;->a(Lcom/layer/sdk/exceptions/LayerException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lcom/layer/a/c/c;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/d;->a:Lcom/layer/sdk/internal/lsdkk/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/b;->c()Lcom/layer/sdk/internal/lsdkk/lsdka/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/d$1;->bsJ:Lcom/layer/sdk/internal/lsdkk/d;

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdkk/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
.end method
