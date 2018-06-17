.class public Lcom/layer/sdk/changes/LayerChange;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/changes/LayerChange$Type;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Ljava/lang/Object;

.field private final c:Lcom/layer/sdk/messaging/LayerObject$Type;

.field private final d:Lcom/layer/sdk/changes/LayerChange$Type;

.field private final e:Lcom/layer/sdk/messaging/LayerObject;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LayerObject cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lcom/layer/sdk/messaging/LayerObject$Type;->fromObject(Lcom/layer/sdk/messaging/LayerObject;)Lcom/layer/sdk/messaging/LayerObject$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/changes/LayerChange;->c:Lcom/layer/sdk/messaging/LayerObject$Type;

    iput-object p1, p0, Lcom/layer/sdk/changes/LayerChange;->d:Lcom/layer/sdk/changes/LayerChange$Type;

    iput-object p2, p0, Lcom/layer/sdk/changes/LayerChange;->e:Lcom/layer/sdk/messaging/LayerObject;

    iput-object p3, p0, Lcom/layer/sdk/changes/LayerChange;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/sdk/changes/LayerChange;->a:Ljava/lang/Object;

    iput-object p5, p0, Lcom/layer/sdk/changes/LayerChange;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/changes/LayerChange;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/changes/LayerChange;->d:Lcom/layer/sdk/changes/LayerChange$Type;

    return-object v0
.end method

.method public getNewValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/changes/LayerChange;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Lcom/layer/sdk/messaging/LayerObject;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/changes/LayerChange;->e:Lcom/layer/sdk/messaging/LayerObject;

    return-object v0
.end method

.method public getObjectType()Lcom/layer/sdk/messaging/LayerObject$Type;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/changes/LayerChange;->c:Lcom/layer/sdk/messaging/LayerObject$Type;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/changes/LayerChange;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayerChange{mObjectType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/changes/LayerChange;->c:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChangeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/changes/LayerChange;->d:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttributeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/changes/LayerChange;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOldValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/changes/LayerChange;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/changes/LayerChange;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
