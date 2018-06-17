.class public Lcom/layer/sdk/query/Predicate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/query/Predicate$Operator;,
        Lcom/layer/sdk/query/Predicate$Type;
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/query/Queryable$Property;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/layer/sdk/query/Predicate$Operator;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/query/Queryable$Property;Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/query/Predicate;->a:Lcom/layer/sdk/query/Queryable$Property;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/query/Predicate;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/layer/sdk/query/Predicate;->c:Lcom/layer/sdk/query/Predicate$Operator;

    iput-object p3, p0, Lcom/layer/sdk/query/Predicate;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/query/Queryable$Property;Ljava/lang/String;Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/query/Predicate;->a:Lcom/layer/sdk/query/Queryable$Property;

    iput-object p2, p0, Lcom/layer/sdk/query/Predicate;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/sdk/query/Predicate;->c:Lcom/layer/sdk/query/Predicate$Operator;

    iput-object p4, p0, Lcom/layer/sdk/query/Predicate;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOperator()Lcom/layer/sdk/query/Predicate$Operator;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate;->c:Lcom/layer/sdk/query/Predicate$Operator;

    return-object v0
.end method

.method public getProperty()Lcom/layer/sdk/query/Queryable$Property;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate;->a:Lcom/layer/sdk/query/Queryable$Property;

    return-object v0
.end method

.method public getPropertyKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public isEquality()Z
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate;->c:Lcom/layer/sdk/query/Predicate$Operator;

    invoke-virtual {v0}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/query/Predicate$Type;->EQUALITY:Lcom/layer/sdk/query/Predicate$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInclusion()Z
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate;->c:Lcom/layer/sdk/query/Predicate$Operator;

    invoke-virtual {v0}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/query/Predicate$Type;->INCLUSIVE:Lcom/layer/sdk/query/Predicate$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPattern()Z
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate;->c:Lcom/layer/sdk/query/Predicate$Operator;

    invoke-virtual {v0}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/query/Predicate$Type;->PATTERN:Lcom/layer/sdk/query/Predicate$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRelative()Z
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate;->c:Lcom/layer/sdk/query/Predicate$Operator;

    invoke-virtual {v0}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/query/Predicate$Type;->RELATIVE:Lcom/layer/sdk/query/Predicate$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicate{mProperty="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/query/Predicate;->a:Lcom/layer/sdk/query/Queryable$Property;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/query/Predicate;->c:Lcom/layer/sdk/query/Predicate$Operator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/query/Predicate;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
