.class final Lcom/layer/sdk/internal/lsdki/a$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdki/a$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bss:Ljava/util/concurrent/CountDownLatch;

.field final synthetic bst:Lcom/layer/sdk/internal/lsdki/a$d;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdki/a$d;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/a$d$1;->bst:Lcom/layer/sdk/internal/lsdki/a$d;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/a$d$1;->bss:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d$1;->bst:Lcom/layer/sdk/internal/lsdki/a$d;

    invoke-static {v0, p1, p2}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/a$d;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V

    return-void
.end method

.method public final a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d$1;->bst:Lcom/layer/sdk/internal/lsdki/a$d;

    invoke-static {v0, p1, p3}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/a$d;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->C:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    if-eq p3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d$1;->bss:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method
