.class final Lcom/layer/sdk/internal/a$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->authenticate()Lcom/layer/sdk/LayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$12;->a:Lcom/layer/sdk/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$12;->a:Lcom/layer/sdk/internal/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/a;->e(Lcom/layer/sdk/internal/a;)Lcom/layer/sdk/internal/lsdkk/lsdka/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdka/a;->c()Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;

    return-void
.end method
