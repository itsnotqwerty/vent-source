.class final Lcom/layer/sdk/internal/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->b(Lcom/layer/sdk/exceptions/LayerException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/j$b",
        "<",
        "Lcom/layer/sdk/listeners/LayerConnectionListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/sdk/internal/a;

.field final synthetic bpM:Lcom/layer/sdk/exceptions/LayerException;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/exceptions/LayerException;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$2;->b:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$2;->bpM:Lcom/layer/sdk/exceptions/LayerException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/layer/sdk/listeners/LayerConnectionListener;

    iget-object v0, p0, Lcom/layer/sdk/internal/a$2;->b:Lcom/layer/sdk/internal/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$2;->bpM:Lcom/layer/sdk/exceptions/LayerException;

    invoke-interface {p1, v0, v1}, Lcom/layer/sdk/listeners/LayerConnectionListener;->onConnectionError(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/exceptions/LayerException;)V

    return-void
.end method
