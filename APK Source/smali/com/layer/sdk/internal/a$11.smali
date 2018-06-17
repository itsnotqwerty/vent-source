.class final Lcom/layer/sdk/internal/a$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$11;->b:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$11;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/a$11;->b:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/layer/sdk/internal/a$11;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/layer/sdk/internal/a$11;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/i;

    new-instance v5, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    iget-object v6, v0, Lcom/layer/b/f/a/i;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/layer/b/f/a/i;->bxp:Lcom/layer/b/f/a/m;

    iget v7, v7, Lcom/layer/b/f/a/m;->a:I

    invoke-static {v7}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->findByValue(I)Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    iget-wide v10, v0, Lcom/layer/b/f/a/i;->c:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;-><init>(Ljava/lang/String;Lcom/layer/sdk/messaging/Presence$PresenceStatus;Ljava/util/Date;Ljava/lang/Long;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdke/g;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-virtual {v2, v3, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/util/List;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/a$11;->b:Lcom/layer/sdk/internal/a;

    new-instance v1, Lcom/layer/sdk/internal/a$11$1;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/a$11$1;-><init>(Lcom/layer/sdk/internal/a$11;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/a$11;->b:Lcom/layer/sdk/internal/a;

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->UNDEFINED_SYNC_FAILURE:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->a(Ljava/util/List;)V

    return-void
.end method
