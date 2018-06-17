.class final Lcom/layer/sdk/internal/a$f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a$f;->onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqk:Lcom/layer/sdk/query/Queryable;

.field final synthetic bql:Lcom/layer/sdk/internal/a$f;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a$f;Lcom/layer/sdk/query/Queryable;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$f$1;->bql:Lcom/layer/sdk/internal/a$f;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$f$1;->bqk:Lcom/layer/sdk/query/Queryable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/a$f$1;->bql:Lcom/layer/sdk/internal/a$f;

    invoke-static {v0}, Lcom/layer/sdk/internal/a$f;->b(Lcom/layer/sdk/internal/a$f;)Lcom/layer/sdk/LayerClient$ContentAvailableCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/a$f$1;->bql:Lcom/layer/sdk/internal/a$f;

    invoke-static {v1}, Lcom/layer/sdk/internal/a$f;->a(Lcom/layer/sdk/internal/a$f;)Lcom/layer/sdk/LayerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/a$f$1;->bqk:Lcom/layer/sdk/query/Queryable;

    invoke-interface {v0, v1, v2}, Lcom/layer/sdk/LayerClient$ContentAvailableCallback;->onContentAvailable(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/query/Queryable;)V

    return-void
.end method
