.class public Lcom/layer/sdk/query/CompoundPredicate;
.super Lcom/layer/sdk/query/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/query/CompoundPredicate$Type;
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/query/CompoundPredicate$Type;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/Predicate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/layer/sdk/query/CompoundPredicate$Type;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/CompoundPredicate$Type;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/Predicate;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/layer/sdk/query/Predicate;-><init>(Lcom/layer/sdk/query/Queryable$Property;Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/query/CompoundPredicate;->a:Lcom/layer/sdk/query/CompoundPredicate$Type;

    iput-object p2, p0, Lcom/layer/sdk/query/CompoundPredicate;->b:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Lcom/layer/sdk/query/CompoundPredicate$Type;[Lcom/layer/sdk/query/Predicate;)V
    .locals 1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/layer/sdk/query/CompoundPredicate;-><init>(Lcom/layer/sdk/query/CompoundPredicate$Type;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getSubPredicates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/Predicate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/query/CompoundPredicate;->b:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/layer/sdk/query/CompoundPredicate$Type;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/CompoundPredicate;->a:Lcom/layer/sdk/query/CompoundPredicate$Type;

    return-object v0
.end method
