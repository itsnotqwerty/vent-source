.class final Lcom/layer/sdk/internal/lsdkh/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkh/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic bsj:Lcom/layer/sdk/internal/lsdkh/a;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkh/a;III)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->bsj:Lcom/layer/sdk/internal/lsdkh/a;

    iput p2, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->a:I

    iput p3, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->b:I

    iput p4, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->bsj:Lcom/layer/sdk/internal/lsdkh/a;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkh/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->a:I

    add-int/lit8 v1, v1, -0x18

    move v2, v1

    :goto_0
    iget v1, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->a:I

    add-int/lit8 v1, v1, 0x18

    if-gt v2, v1, :cond_2

    iget v1, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->b:I

    if-lt v2, v1, :cond_0

    iget v1, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->c:I

    if-le v2, v1, :cond_1

    :cond_0
    if-ltz v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->bsj:Lcom/layer/sdk/internal/lsdkh/a;

    iget-object v3, v3, Lcom/layer/sdk/internal/lsdkh/a;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v3, v1}, Lcom/layer/sdk/internal/a;->get(Landroid/net/Uri;)Lcom/layer/sdk/query/Queryable;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->bsj:Lcom/layer/sdk/internal/lsdkh/a;

    iget-object v4, v4, Lcom/layer/sdk/internal/lsdkh/a;->bsi:Landroid/util/LruCache;

    invoke-virtual {v4, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/a$1;->bsj:Lcom/layer/sdk/internal/lsdkh/a;

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdkh/a;->bsh:Lcom/layer/sdk/internal/lsdkh/a$a;

    invoke-interface {v1, v3}, Lcom/layer/sdk/internal/lsdkh/a$a;->a(Lcom/layer/sdk/query/Queryable;)V

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    return-void
.end method
