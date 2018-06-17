.class public Lcom/layer/sdk/internal/lsdkh/f;
.super Lcom/layer/sdk/internal/lsdkh/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkh/g",
        "<",
        "Lcom/layer/sdk/messaging/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdkh/g$a;)V
    .locals 1

    const-string v0, "messages"

    invoke-direct {p0, p1, v0}, Lcom/layer/sdk/internal/lsdkh/g;-><init>(Lcom/layer/sdk/internal/lsdkh/g$a;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "LOWER(messages.object_identifier) %s %s"

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
    const-string v0, "LOWER(messages.object_identifier) %s %s"

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.message_index %s %s"

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
    const-string v0, "messages.message_index %s %s"

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
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    sget-object v4, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    if-ne v3, v4, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    const-string v3, "messages.seq %s"

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v0, "IS NOT NULL"

    :goto_2
    aput-object v0, v1, v2

    invoke-virtual {p1, p3, v3, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "IS NULL"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private f(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.sent_at %s %s"

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
    const-string v0, "messages.sent_at %s %s"

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
        :pswitch_0
    .end packed-switch
.end method

.method private g(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.received_by_user %s %s"

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
    const-string v0, "messages.received_by_user %s %s"

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
        :pswitch_0
    .end packed-switch
.end method

.method private h(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.user_id %s %s"

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
    const-string v0, "messages.user_id %s %s"

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

.method private i(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.user_name %s %s"

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
    const-string v0, "messages.user_name %s %s"

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

.method private j(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 5

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.is_unread %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/layer/sdk/internal/lsdkh/i;->a(Lcom/layer/sdk/query/Predicate$Operator;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkh/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private k(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.database_identifier IN (SELECT message_database_identifier FROM message_parts WHERE mime_type %s %s)"

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
    const-string v0, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE mime_type IN %s)"

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

.method private l(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.database_identifier IN (SELECT message_database_identifier FROM message_parts WHERE size %s %s)"

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
    const-string v0, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE size IN %s)"

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
        :pswitch_0
    .end packed-switch
.end method

.method private m(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    sget-object v4, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    if-ne v3, v4, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    const-string v3, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE transfer_status = %s OR transfer_status = %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v0, "IN"

    :goto_2
    aput-object v0, v4, v2

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1, p3, v3, v4}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "NOT IN"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private n(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    sget-object v4, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    if-ne v3, v4, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    const-string v3, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE transfer_status = %s OR transfer_status = %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v0, "IN"

    :goto_2
    aput-object v0, v4, v2

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->UPLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->DOWNLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1, p3, v3, v4}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "NOT IN"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private o(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    sget-object v4, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    if-ne v3, v4, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    const-string v3, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE transfer_status = %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v0, "IN"

    :goto_2
    aput-object v0, v4, v2

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p1, p3, v3, v4}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "NOT IN"

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private p(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Operator;->getType()Lcom/layer/sdk/query/Predicate$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/query/Predicate$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getOperator()Lcom/layer/sdk/query/Predicate$Operator;

    move-result-object v3

    sget-object v4, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    if-ne v3, v4, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    const-string v3, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE transfer_status = %s OR transfer_status = %s OR transfer_status = %s OR transfer_status = %s)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v0, "NOT IN"

    :goto_2
    aput-object v0, v4, v2

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->UPLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->DOWNLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1, p3, v3, v4}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "IN"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
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
            "Lcom/layer/sdk/messaging/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Message;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/f;->d(Lcom/layer/sdk/query/Query;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/f;->a()Lcom/layer/sdk/internal/lsdkh/g$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkh/g$a;->b()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 4

    instance-of v0, p2, Lcom/layer/sdk/query/CompoundPredicate;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/layer/sdk/query/CompoundPredicate;

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/CompoundPredicate;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lcom/layer/sdk/internal/lsdkh/g$b;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/layer/sdk/internal/lsdkh/g$b;

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkh/g$b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Lcom/layer/sdk/internal/lsdkh/i$a;Ljava/lang/String;[Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/layer/sdk/query/Predicate;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message$Property;

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->b(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)V

    sget-object v1, Lcom/layer/sdk/internal/lsdkh/f$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Message$Property;->ordinal()I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->c(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->d(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->b(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->e(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->f(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->g(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->h(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->i(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->j(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->k(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->l(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->m(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->n(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->o(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/f;->p(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/SortDescriptor;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/query/SortDescriptor;->getProperty()Lcom/layer/sdk/query/Queryable$Property;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message$Property;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Message$Property;->isSortable()Z

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
    sget-object v1, Lcom/layer/sdk/internal/lsdkh/f$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Message$Property;->ordinal()I

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

    const-string v1, "messages.message_index"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "messages.message_index"

    :goto_0
    invoke-virtual {p2}, Lcom/layer/sdk/query/SortDescriptor;->getOrder()Lcom/layer/sdk/query/SortDescriptor$Order;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a(Ljava/lang/String;Lcom/layer/sdk/query/SortDescriptor$Order;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    return-void

    :pswitch_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "messages.seq"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "CASE WHEN messages.seq IS NULL THEN 0 ELSE 1 END"

    goto :goto_0

    :pswitch_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "messages.sent_at"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "messages.sent_at"

    goto :goto_0

    :pswitch_3
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "messages.received_by_user"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "messages.received_by_user"

    goto :goto_0

    :pswitch_4
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "messages.is_unread"

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkh/i$b$a;->a([Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkh/i$b$a;

    const-string v0, "messages.is_unread"

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

.method protected b(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/query/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+",
            "Lcom/layer/sdk/messaging/Message;",
            ">;)",
            "Lcom/layer/sdk/query/Predicate;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/layer/sdk/query/Query;->getQueryClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/layer/sdk/messaging/Announcement;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/g$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "messages.type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    iget v2, v2, Lcom/layer/b/f/c/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/sdk/internal/lsdkh/g$b;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkh/g$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(messages.type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/layer/b/f/c/o;->bFt:Lcom/layer/b/f/c/o;

    iget v2, v2, Lcom/layer/b/f/c/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR messages.type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/layer/b/f/c/o;->bFv:Lcom/layer/b/f/c/o;

    iget v2, v2, Lcom/layer/b/f/c/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/sdk/internal/lsdkh/g$b;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lcom/layer/sdk/internal/lsdkh/i$b$a;Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/internal/lsdkh/i$a;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkh/f$1;->b:[I

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

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdkh/f;->a(Lcom/layer/sdk/query/Predicate;Lcom/layer/sdk/query/Queryable$Property;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "messages.conversation_database_identifier IN (SELECT database_identifier FROM conversations WHERE object_identifier %s %s)"

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
    const-string v0, "messages.conversation_database_identifier IN (SELECT database_identifier FROM conversations WHERE object_identifier %s %s)"

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
