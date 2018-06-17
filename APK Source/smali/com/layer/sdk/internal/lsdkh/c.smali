.class public Lcom/layer/sdk/internal/lsdkh/c;
.super Lcom/layer/sdk/internal/lsdkh/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkh/g",
        "<",
        "Lcom/layer/sdk/messaging/Identity;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkh/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkh/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdkh/g$a;)V
    .locals 1

    const-string v0, "identities"

    invoke-direct {p0, p1, v0}, Lcom/layer/sdk/internal/lsdkh/g;-><init>(Lcom/layer/sdk/internal/lsdkh/g$a;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/layer/sdk/messaging/Metadata;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/Metadata;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/Predicate;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/Metadata;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/messaging/Metadata;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz p2, :cond_3

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/layer/sdk/query/Predicate;

    sget-object v5, Lcom/layer/sdk/messaging/Identity$Property;->METADATA:Lcom/layer/sdk/messaging/Identity$Property;

    sget-object v6, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    invoke-direct {v0, v5, v2, v6, v1}, Lcom/layer/sdk/query/Predicate;-><init>(Lcom/layer/sdk/query/Queryable$Property;Ljava/lang/String;Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, v1, Lcom/layer/sdk/messaging/Metadata;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/messaging/Metadata;

    invoke-direct {p0, v0, v2}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/messaging/Metadata;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "identities."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/c$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "identities."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %s %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    :goto_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "identities."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %s %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "identities.object_identifier"

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/c$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "LOWER(identities.object_identifier) %s %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    :goto_0
    return-void

    :pswitch_1
    const-string v0, "LOWER(identities.object_identifier) %s %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "identities.followed"

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/c$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "identities.followed %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getPropertyKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/layer/sdk/messaging/Metadata;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Predicate value must be a non-null Metadata type when querying using a Metadata object. Predicate value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Metadata;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Metadata;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "identities.database_identifier NOT IN (SELECT object_id from local_keyed_values WHERE object_type = \'identity\' AND is_deleted = 0 AND key_type = 1)"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/messaging/Metadata;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/query/CompoundPredicate;

    sget-object v2, Lcom/layer/sdk/query/CompoundPredicate$Type;->AND:Lcom/layer/sdk/query/CompoundPredicate$Type;

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/query/CompoundPredicate;-><init>(Lcom/layer/sdk/query/CompoundPredicate$Type;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/CompoundPredicate;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4
    sget-object v1, Lcom/layer/sdk/internal/lsdkh/c$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v1, "identities.database_identifier IN (SELECT object_id from local_keyed_values WHERE key = %s AND value %s %s AND object_type = \'identity\' AND is_deleted = 0 AND key_type = 1)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1, p3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    :pswitch_1
    const-string v1, "identities.database_identifier IN (SELECT object_id from local_keyed_values WHERE key = %s AND value %s %s AND object_type = \'identity\' AND is_deleted = 0 AND key_type = 1)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1, p3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/c$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "identities.user_id IN (SELECT user_id from presence WHERE status %s %s)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    :goto_0
    return-void

    :pswitch_1
    const-string v0, "identities.user_id IN (SELECT user_id from presence WHERE status %s %s)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/c$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_1
    const-string v0, "identities.user_id IN (SELECT user_id from presence WHERE last_seen_at %s %s)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    :goto_0
    return-void

    :pswitch_2
    const-string v0, "identities.user_id IN (SELECT user_id from presence WHERE last_seen_at %s %s)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/layer/sdk/query/Query;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x2

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/c;->d(Lcom/layer/sdk/query/Query;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Query resulted in no identities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/c;->a()Lcom/layer/sdk/internal/lsdkh/g$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkh/g$a;->b()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdkh/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Count of Identities returned by executeForObjects: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 3

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/c;->b(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V

    sget-object v1, Lcom/layer/sdk/internal/lsdkh/c$1;->bqe:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity$Property;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Identity$Property;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The query could not be completed because an unqueryable property was specified in a predicate (`"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The query could not be completed because an unqueryable property was specified in a predicate (`"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/c;->b(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    :goto_0
    return-void

    :pswitch_1
    const-string v0, "user_id"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "display_name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "first_name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "last_name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "phone_number"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "email_address"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "avatar_image_url"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string v0, "public_key"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdkh/c;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/c;->c(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/c;->d(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/c;->e(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/c;->f(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/SortDescriptor;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/SortDescriptor;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity$Property;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Identity$Property;->isSortable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The query could not be completed because a sort descriptor given specifies a non-sortable property (`"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "`)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/layer/sdk/internal/lsdkh/c$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Identity$Property;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The query could not be completed because a sort descriptor given specifies a non-sortable property (`"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "`)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "identities.first_name"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "identities.first_name"

    :goto_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/SortDescriptor;->getOrder()Lcom/layer/sdk/query/SortDescriptor$Order;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/lang/String;Lcom/layer/sdk/query/SortDescriptor$Order;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "identities.last_name"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "identities.last_name"

    goto :goto_0

    :pswitch_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "identities.display_name"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "identities.display_name"

    goto :goto_0

    :pswitch_3
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "identities.email_address"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "identities.email_address"

    goto :goto_0

    :pswitch_4
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "(SELECT MAX(last_seen_at) FROM PRESENCE WHERE presence.user_id = identities.user_id) AS last_seen_at"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "last_seen_at"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
