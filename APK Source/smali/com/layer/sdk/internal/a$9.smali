.class final Lcom/layer/sdk/internal/a$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Ljava/util/List;Lcom/layer/b/d/h;Lcom/layer/b/f/c/n;Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/f$c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic bpT:Lcom/layer/b/d/h;

.field final synthetic bpU:Lcom/layer/b/f/c/n;

.field final synthetic bpV:Ljava/util/HashSet;

.field final synthetic bpW:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Ljava/util/List;Lcom/layer/b/d/h;Lcom/layer/b/f/c/n;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$9;->bpW:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$9;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/layer/sdk/internal/a$9;->bpT:Lcom/layer/b/d/h;

    iput-object p4, p0, Lcom/layer/sdk/internal/a$9;->bpU:Lcom/layer/b/f/c/n;

    iput-object p5, p0, Lcom/layer/sdk/internal/a$9;->bpV:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/a$9;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    invoke-virtual {v0}, Lcom/layer/b/d/c;->r()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/layer/b/d/c;->dx(I)Lcom/layer/b/f/c/d;

    :cond_1
    invoke-virtual {v0}, Lcom/layer/b/d/c;->xE()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/a;->wr()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Push event with no seq encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Push event with no seq encountered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/a$9;->bpW:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdke/g;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$9;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    iget-object v5, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {v2, v5}, Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/util/UUID;)Lcom/layer/b/d/h;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/a;->wr()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Event without streamId : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v2, v1, v0}, Lcom/layer/sdk/internal/lsdke/g;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    invoke-virtual {v2, v1, v0}, Lcom/layer/sdk/internal/lsdke/g;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/a$9;->bpW:Lcom/layer/sdk/internal/a;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/a$e;->c:Lcom/layer/sdk/internal/lsdki/a$e;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/layer/sdk/internal/a$9;->bpV:Ljava/util/HashSet;

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/lsdki/a$e;ZZLjava/util/HashSet;Z)V

    :cond_3
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/a;->wr()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in persistPushedEventsAndStreamDataAndSyncAsync: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/a$9;->bpW:Lcom/layer/sdk/internal/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/layer/sdk/exceptions/LayerException;

    const/4 v2, 0x0

    new-instance v3, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v4, Lcom/layer/sdk/exceptions/LayerException$Type;->UNDEFINED_SYNC_FAILURE:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->a(Ljava/util/List;)V

    return-void
.end method
