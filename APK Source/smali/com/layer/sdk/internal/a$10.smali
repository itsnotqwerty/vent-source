.class final Lcom/layer/sdk/internal/a$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Lcom/layer/b/f/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/sdk/internal/a;

.field final synthetic bpX:Lcom/layer/b/f/a/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/b/f/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$10;->b:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$10;->bpX:Lcom/layer/b/f/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/a$10;->b:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->r()Lcom/layer/sdk/internal/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdke/g;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v3, Lcom/layer/sdk/internal/lsdke/f;->a:Lcom/layer/sdk/internal/lsdke/f;

    invoke-virtual {v2, v3}, Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/f;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/layer/sdk/internal/a$10;->bpX:Lcom/layer/b/f/a/g;

    iget v4, v4, Lcom/layer/b/f/a/g;->a:I

    add-int/lit8 v3, v3, 0x1

    if-ne v4, v3, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$10;->bpX:Lcom/layer/b/f/a/g;

    iget v0, v0, Lcom/layer/b/f/a/g;->a:I

    iget-object v3, p0, Lcom/layer/sdk/internal/a$10;->bpX:Lcom/layer/b/f/a/g;

    iget-object v3, v3, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/g;->a(ILjava/util/List;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/a$10;->b:Lcom/layer/sdk/internal/a;

    new-instance v2, Lcom/layer/sdk/internal/a$10$1;

    invoke-direct {v2, p0, v0}, Lcom/layer/sdk/internal/a$10$1;-><init>(Lcom/layer/sdk/internal/a$10;Z)V

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/a;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/a$10;->b:Lcom/layer/sdk/internal/a;

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
