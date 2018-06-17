.class public abstract Lcom/layer/sdk/internal/lsdkh/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkh/g$b;,
        Lcom/layer/sdk/internal/lsdkh/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/layer/sdk/query/Queryable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/internal/lsdkh/g$a;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkh/g;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkh/g;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdkh/g$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/g;->b:Lcom/layer/sdk/internal/lsdkh/g$a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkh/g;->c:Ljava/lang/String;

    return-void
.end method

.method protected static a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " predicates are not supported for `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/internal/lsdkh/i$b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkh/i$b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/util/Collection;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void
.end method

.method protected static b(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V
    .locals 1

    invoke-interface {p1}, Lcom/layer/sdk/query/Queryable$Property;->isEqualityQueryable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdkh/g;->e(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V

    :cond_0
    invoke-interface {p1}, Lcom/layer/sdk/query/Queryable$Property;->isInclusionQueryable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdkh/g;->d(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V

    :cond_1
    invoke-interface {p1}, Lcom/layer/sdk/query/Queryable$Property;->isRelativeQueryable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdkh/g;->c(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V

    :cond_2
    invoke-interface {p1}, Lcom/layer/sdk/query/Queryable$Property;->isPatternQueryable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdkh/g;->f(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V

    :cond_3
    return-void
.end method

.method protected static c(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/query/Predicate;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Relative predicates are not supported for `"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected static d(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/query/Predicate;->isInclusion()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inclusion predicates are not supported for `"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected static e(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/query/Predicate;->isEquality()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Equality predicates are not supported for `"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected static f(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/query/Predicate;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern predicates are not supported for `"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Lcom/layer/sdk/internal/lsdkh/g$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/g;->b:Lcom/layer/sdk/internal/lsdkh/g$a;

    return-object v0
.end method

.method protected varargs a(Lcom/layer/sdk/query/Query;[Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/layer/sdk/internal/lsdkh/i$b;"
        }
    .end annotation

    const-wide v10, 0x7fffffffffffffffL

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/i$b$a;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    move-result-object v3

    new-array v0, v7, [Ljava/lang/String;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/g;->c:Ljava/lang/String;

    aput-object v1, v0, v6

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/g;->b(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/query/Predicate;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/query/Query;->getPredicate()Lcom/layer/sdk/query/Predicate;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/layer/sdk/query/CompoundPredicate;

    sget-object v4, Lcom/layer/sdk/query/CompoundPredicate$Type;->AND:Lcom/layer/sdk/query/CompoundPredicate$Type;

    new-array v5, v8, [Lcom/layer/sdk/query/Predicate;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-direct {v0, v4, v5}, Lcom/layer/sdk/query/CompoundPredicate;-><init>(Lcom/layer/sdk/query/CompoundPredicate$Type;[Lcom/layer/sdk/query/Predicate;)V

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/layer/sdk/query/CompoundPredicate;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/i$b$a;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;-><init>()V

    check-cast v0, Lcom/layer/sdk/query/CompoundPredicate;

    invoke-virtual {p0, v1, v0}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/CompoundPredicate;)V

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a()Lcom/layer/sdk/internal/lsdkh/i$b;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/internal/lsdkh/i$b;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(%s)"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {v3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    :cond_0
    :goto_1
    invoke-virtual {p0, v3}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;)V

    invoke-virtual {p1}, Lcom/layer/sdk/query/Query;->getSortDescriptors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/SortDescriptor;

    invoke-virtual {p0, v3, v0}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/SortDescriptor;)V

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/layer/sdk/internal/lsdkh/i$a;->a:Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-virtual {p0, v3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/layer/sdk/query/Query;->getLimit()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-eqz v1, :cond_6

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b(Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    invoke-virtual {p1}, Lcom/layer/sdk/query/Query;->getOffset()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    :goto_3
    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a()Lcom/layer/sdk/internal/lsdkh/i$b;

    move-result-object v0

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkh/g;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SQL statement for query: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-object v0

    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b(Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/layer/sdk/internal/lsdkh/g;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryToStatement for query resulted in null statement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public abstract a(Lcom/layer/sdk/query/Query;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a(Lcom/layer/sdk/query/Query;Lcom/layer/sdk/query/Query$ResultType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<TT;>;",
            "Lcom/layer/sdk/query/Query$ResultType;",
            ")",
            "Ljava/util/List;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/layer/sdk/internal/lsdkh/g$1;->bqe:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Query$ResultType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/query/Query;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/g;->d(Lcom/layer/sdk/query/Query;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/g;->c(Lcom/layer/sdk/query/Query;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;)V
    .locals 3

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->a:Lcom/layer/sdk/internal/lsdkh/i$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".is_deleted_all_participants = 0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".is_deleted_my_devices = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/CompoundPredicate;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/CompoundPredicate;->getSubPredicates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/Predicate;

    instance-of v2, v0, Lcom/layer/sdk/query/CompoundPredicate;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/layer/sdk/internal/lsdkh/i$b$a;

    invoke-direct {v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;-><init>()V

    check-cast v0, Lcom/layer/sdk/query/CompoundPredicate;

    invoke-virtual {p0, v2, v0}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/CompoundPredicate;)V

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a()Lcom/layer/sdk/internal/lsdkh/i$b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/internal/lsdkh/i$b;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/internal/lsdkh/g$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/CompoundPredicate;->getType()Lcom/layer/sdk/query/CompoundPredicate$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/CompoundPredicate$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    :pswitch_1
    const-string v2, "(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    :pswitch_2
    const-string v2, "NOT (%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/layer/sdk/internal/lsdkh/g$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/CompoundPredicate;->getType()Lcom/layer/sdk/query/CompoundPredicate$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/CompoundPredicate$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/layer/sdk/query/CompoundPredicate;->getType()Lcom/layer/sdk/query/CompoundPredicate$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v2, Lcom/layer/sdk/internal/lsdkh/i$a;->a:Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-virtual {p0, p1, v0, v2}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_4
    sget-object v2, Lcom/layer/sdk/internal/lsdkh/i$a;->b:Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-virtual {p0, p1, v0, v2}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v2, Lcom/layer/sdk/internal/lsdkh/i$b$a;

    invoke-direct {v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;-><init>()V

    sget-object v3, Lcom/layer/sdk/internal/lsdkh/i$a;->c:Lcom/layer/sdk/internal/lsdkh/i$a;

    invoke-virtual {p0, v2, v0, v3}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a()Lcom/layer/sdk/internal/lsdkh/i$b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/internal/lsdkh/i$b;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NOT (%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->c(Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected abstract a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
.end method

.method protected abstract a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/SortDescriptor;)V
.end method

.method protected b(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/query/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+TT;>;)",
            "Lcom/layer/sdk/query/Predicate;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/layer/sdk/query/Query;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+TT;>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COUNT(*)"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/query/Query;[Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/g;->a()Lcom/layer/sdk/internal/lsdkh/g$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkh/g$a;->a()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Lcom/layer/sdk/query/Query;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+TT;>;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkh/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".object_identifier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/layer/sdk/internal/lsdkh/g;->a(Lcom/layer/sdk/query/Query;[Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/i$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/g;->a()Lcom/layer/sdk/internal/lsdkh/g$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkh/g$a;->a()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdke/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
