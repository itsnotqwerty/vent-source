.class final Lcom/layer/sdk/internal/a$29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/lsdkd/c;)V
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
        "Lcom/layer/sdk/listeners/LayerChangeEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$29;->b:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$29;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/layer/sdk/listeners/LayerChangeEventListener;

    new-instance v0, Lcom/layer/sdk/changes/LayerChangeEvent;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$29;->b:Lcom/layer/sdk/internal/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/a$29;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/changes/LayerChangeEvent;-><init>(Lcom/layer/sdk/LayerClient;Ljava/util/List;)V

    invoke-interface {p1, v0}, Lcom/layer/sdk/listeners/LayerChangeEventListener;->onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V

    return-void
.end method
