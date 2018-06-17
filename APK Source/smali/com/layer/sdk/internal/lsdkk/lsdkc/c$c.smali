.class public Lcom/layer/sdk/internal/lsdkk/lsdkc/c$c;
.super Lcom/layer/sdk/internal/lsdkk/lsdkb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/lsdkc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final bsV:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$c;->bsV:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c$c;->bsV:Lcom/layer/sdk/internal/lsdkk/lsdkc/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->b()Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    goto :goto_0
.end method
