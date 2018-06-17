.class public abstract Lcom/layer/sdk/internal/lsdkk/lsdka/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tstate:",
        "Ljava/lang/Object;",
        "Tcallback:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTcallback;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TTstate;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkk/lsdka/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTcallback;)",
            "Lcom/layer/sdk/internal/lsdkk/lsdka/c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTstate;)TTstate;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-object p1
.end method

.method public q()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTstate;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdka/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
