.class public Lcom/layer/sdk/query/SortDescriptor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/query/SortDescriptor$Order;
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/query/Queryable$Property;

.field private final b:Lcom/layer/sdk/query/SortDescriptor$Order;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/query/Queryable$Property;Lcom/layer/sdk/query/SortDescriptor$Order;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/query/SortDescriptor;->a:Lcom/layer/sdk/query/Queryable$Property;

    iput-object p2, p0, Lcom/layer/sdk/query/SortDescriptor;->b:Lcom/layer/sdk/query/SortDescriptor$Order;

    return-void
.end method


# virtual methods
.method public getOrder()Lcom/layer/sdk/query/SortDescriptor$Order;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/SortDescriptor;->b:Lcom/layer/sdk/query/SortDescriptor$Order;

    return-object v0
.end method

.method public getProperty()Lcom/layer/sdk/query/Queryable$Property;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/SortDescriptor;->a:Lcom/layer/sdk/query/Queryable$Property;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SortDescriptor{Property="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/query/SortDescriptor;->a:Lcom/layer/sdk/query/Queryable$Property;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/query/SortDescriptor;->b:Lcom/layer/sdk/query/SortDescriptor$Order;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
