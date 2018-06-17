.class final Lcom/layer/sdk/internal/a$24;
.super Lcom/layer/sdk/internal/lsdkk/lsdkb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Landroid/content/Context;Lcom/layer/sdk/internal/c;Lcom/layer/b/b/b;Lcom/layer/sdk/internal/lsdka/a;Lcom/layer/b/a/b;Lcom/layer/sdk/internal/a$d;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$24;->a:Lcom/layer/sdk/internal/a;

    invoke-direct {p0, p2}, Lcom/layer/sdk/internal/lsdkk/lsdkb/a;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$24;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->x()V

    return-void
.end method
