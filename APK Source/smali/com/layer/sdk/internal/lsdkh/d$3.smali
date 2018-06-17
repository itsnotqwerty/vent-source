.class final Lcom/layer/sdk/internal/lsdkh/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkh/d;->onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bsk:Lcom/layer/sdk/internal/lsdkh/d;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkh/d;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/d$3;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d$3;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d$3;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkh/d;->b(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkh/d;->a(Lcom/layer/sdk/internal/lsdkh/d;Ljava/util/List;)V

    return-void
.end method
