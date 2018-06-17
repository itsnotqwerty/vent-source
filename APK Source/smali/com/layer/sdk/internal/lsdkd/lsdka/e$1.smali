.class final Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/h;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/layer/sdk/internal/lsdkd/h;


# direct methods
.method constructor <init>([Ljava/lang/String;Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->ww()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot follow null or empty user IDs. Attempted to follow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot follow null user IDs. Attempted to follow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->ww()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Following identities. User IDs: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->a:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v3

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->a:[Ljava/lang/String;

    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    const-string v0, "transient_"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->ww()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v7, "This is a facade Identity meant to represent a system message or announcement. It is not followable."

    invoke-static {v0, v7}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkd/m;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    if-nez v0, :cond_3

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-direct {v0, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-virtual {v0, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/h;)V

    :cond_3
    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Z)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Z)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v3, v4, v7}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3, v4, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    throw v0

    :cond_4
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v3, v4, v7}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v4, v9}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/i;->m()V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->ww()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Exception when attempting to follow identities."

    invoke-static {v0, v1, p2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_API_ACTION:Lcom/layer/sdk/exceptions/LayerException$Type;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    return-void
.end method
