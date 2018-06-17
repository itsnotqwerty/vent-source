.class public Lcom/layer/sdk/changes/LayerChangeEvent;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/layer/sdk/LayerClient;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/changes/LayerChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/layer/sdk/LayerClient;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/LayerClient;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/changes/LayerChange;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/changes/LayerChangeEvent;->a:Lcom/layer/sdk/LayerClient;

    iput-object p2, p0, Lcom/layer/sdk/changes/LayerChangeEvent;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/changes/LayerChange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/changes/LayerChangeEvent;->b:Ljava/util/List;

    return-object v0
.end method

.method public getClient()Lcom/layer/sdk/LayerClient;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/changes/LayerChangeEvent;->a:Lcom/layer/sdk/LayerClient;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayerChangeEvent{, mChanges="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/changes/LayerChangeEvent;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
