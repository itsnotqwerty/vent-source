.class final Lcom/layer/sdk/internal/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic bpO:Lcom/layer/sdk/LayerClient$Options;

.field final synthetic bpP:Lcom/layer/b/b/a;

.field final synthetic bpQ:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/internal/a;Lcom/layer/sdk/LayerClient$Options;Lcom/layer/b/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$4;->bpQ:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$4;->a:Lcom/layer/sdk/internal/a;

    iput-object p3, p0, Lcom/layer/sdk/internal/a$4;->bpO:Lcom/layer/sdk/LayerClient$Options;

    iput-object p4, p0, Lcom/layer/sdk/internal/a$4;->bpP:Lcom/layer/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/a$4;->a:Lcom/layer/sdk/internal/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$4;->bpO:Lcom/layer/sdk/LayerClient$Options;

    invoke-virtual {v1}, Lcom/layer/sdk/LayerClient$Options;->isTelemetryEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/layer/sdk/internal/a$4;->bpP:Lcom/layer/b/b/a;

    invoke-interface {v2}, Lcom/layer/b/b/a;->wF()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/a$4;->bpO:Lcom/layer/sdk/LayerClient$Options;

    invoke-virtual {v3}, Lcom/layer/sdk/LayerClient$Options;->getUiSdkVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/a$4;->bpO:Lcom/layer/sdk/LayerClient$Options;

    invoke-virtual {v4}, Lcom/layer/sdk/LayerClient$Options;->getLayerMessengerVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/layer/sdk/internal/telemetry/TelemetryManager;->init(Lcom/layer/sdk/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
