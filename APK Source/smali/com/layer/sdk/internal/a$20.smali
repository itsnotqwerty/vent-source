.class final Lcom/layer/sdk/internal/a$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->setPresenceStatus(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bpQ:Lcom/layer/sdk/internal/a;

.field final synthetic bqa:Lcom/layer/sdk/internal/b;

.field final synthetic bqb:Lcom/layer/sdk/internal/lsdkd/lsdka/e;

.field final synthetic bqc:Lcom/layer/sdk/messaging/Presence$PresenceStatus;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/internal/b;Lcom/layer/sdk/internal/lsdkd/lsdka/e;Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$20;->bpQ:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$20;->bqa:Lcom/layer/sdk/internal/b;

    iput-object p3, p0, Lcom/layer/sdk/internal/a$20;->bqb:Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    iput-object p4, p0, Lcom/layer/sdk/internal/a$20;->bqc:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/a$20;->bqa:Lcom/layer/sdk/internal/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v2

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    iget-object v3, p0, Lcom/layer/sdk/internal/a$20;->bqb:Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/a$20;->bqc:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    invoke-direct {v0, v3, v4, v1, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;-><init>(Ljava/lang/String;Lcom/layer/sdk/messaging/Presence$PresenceStatus;Ljava/util/Date;Ljava/lang/Long;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdke/g;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-virtual {v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/util/List;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/a$20;->bpQ:Lcom/layer/sdk/internal/a;

    new-instance v1, Lcom/layer/sdk/internal/a$20$1;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/a$20$1;-><init>(Lcom/layer/sdk/internal/a$20;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/a$20;->bpQ:Lcom/layer/sdk/internal/a;

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
