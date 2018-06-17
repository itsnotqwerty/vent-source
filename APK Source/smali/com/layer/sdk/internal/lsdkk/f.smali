.class public Lcom/layer/sdk/internal/lsdkk/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/f$b;,
        Lcom/layer/sdk/internal/lsdkk/f$c;,
        Lcom/layer/sdk/internal/lsdkk/f$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field final bsK:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkk/f;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/f;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/f;->bsK:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/f;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkk/f$a;)V
    .locals 3

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/f$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/f$c;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/f$c;->a()V

    :cond_0
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/f$b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/f$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/f$b;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/f;->bsK:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/layer/sdk/internal/lsdkk/f$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/layer/sdk/internal/lsdkk/f$1;-><init>(Lcom/layer/sdk/internal/lsdkk/f;Lcom/layer/sdk/internal/lsdkk/f$a;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
