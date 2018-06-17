.class public Lcom/layer/sdk/internal/lsdkh/e;
.super Lcom/layer/sdk/internal/lsdkh/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkh/g",
        "<",
        "Lcom/layer/sdk/messaging/MessagePart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdkh/g$a;)V
    .locals 1

    const-string v0, "message_parts"

    invoke-direct {p0, p1, v0}, Lcom/layer/sdk/internal/lsdkh/g;-><init>(Lcom/layer/sdk/internal/lsdkh/g$a;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 7

    const/4 v6, 0x1

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/e$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/e;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "LOWER(message_parts.object_identifier) %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v6

    invoke-virtual {p1, p3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "(SELECT COUNT(*)-1 FROM message_parts AS counted_message_parts WHERE counted_message_parts.message_database_identifier == message_parts.message_database_identifier AND counted_message_parts.database_identifier <= message_parts.database_identifier) AS message_parts_index"

    aput-object v1, v0, v5

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/e$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/e;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "message_parts_index %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {p1, p3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/e$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/e;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "message_parts.transfer_status %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p1, p3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/e$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/e;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "message_parts.message_database_identifier IN (SELECT database_identifier FROM messages WHERE object_identifier %s %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p1, p3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/e$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/e;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "LOWER(message_parts.mime_type %s %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p1, p3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private g(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/e$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/e;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "message_parts.size %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v4

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p1, p3, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/layer/sdk/query/Query;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+",
            "Lcom/layer/sdk/messaging/MessagePart;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/MessagePart;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/e;->d(Lcom/layer/sdk/query/Query;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/e;->a()Lcom/layer/sdk/internal/lsdkh/g$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkh/g$a;->b()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;)V
    .locals 3

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/i$a;->a:Lcom/layer/sdk/internal/lsdkh/i$a;

    const-string v1, "message_parts.message_database_identifier IN (SELECT database_identifier FROM messages WHERE is_deleted_all_participants = 0 AND is_deleted_my_devices = 0)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 4

    instance-of v0, p2, Lcom/layer/sdk/query/CompoundPredicate;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/layer/sdk/query/CompoundPredicate;

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkh/e;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/CompoundPredicate;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/e;->b(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V

    sget-object v1, Lcom/layer/sdk/internal/lsdkh/e$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart$Property;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The query could not be completed because an unqueryable property was specified in a predicate (`"

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
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/e;->b(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/e;->c(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/e;->d(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/e;->e(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/e;->f(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/e;->g(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/SortDescriptor;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/SortDescriptor;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart$Property;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart$Property;->isSortable()Z

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
    sget-object v1, Lcom/layer/sdk/internal/lsdkh/e$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart$Property;->ordinal()I

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

    const-string v1, "message_parts.object_identifier"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "message_parts.object_identifier"

    :goto_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/SortDescriptor;->getOrder()Lcom/layer/sdk/query/SortDescriptor$Order;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/lang/String;Lcom/layer/sdk/query/SortDescriptor$Order;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "(SELECT COUNT(*)-1 FROM message_parts AS counted_message_parts WHERE counted_message_parts.message_database_identifier == message_parts.message_database_identifier AND counted_message_parts.database_identifier <= message_parts.database_identifier) AS message_parts_index"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "message_parts_index"

    goto :goto_0

    :pswitch_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "message_parts.transfer_status"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "message_parts.transfer_status"

    goto :goto_0

    :pswitch_3
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "message_parts.size"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "message_parts.size"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
