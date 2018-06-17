.class final Lcom/layer/sdk/internal/a$25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/LayerClient$Options;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic bqg:Lcom/layer/sdk/LayerClient$Options;


# direct methods
.method constructor <init>(Lcom/layer/sdk/LayerClient$Options;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$25;->bqg:Lcom/layer/sdk/LayerClient$Options;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$25;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/a$25;->bqg:Lcom/layer/sdk/LayerClient$Options;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$25;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient$Options;->persist(Landroid/content/Context;)V

    return-void
.end method
