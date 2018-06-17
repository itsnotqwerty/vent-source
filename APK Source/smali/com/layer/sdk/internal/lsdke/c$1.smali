.class final Lcom/layer/sdk/internal/lsdke/c$1;
.super Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/c;->c()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brl:Lcom/layer/sdk/internal/lsdke/c;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    invoke-direct {p0, p2}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdke/c;->a(Lcom/layer/sdk/internal/lsdke/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, "SELECT messages.database_identifier AS message_database_identifier, conversations.database_identifier AS conversation_database_identifier, streams.seq AS stream_seq, events.preceding_seq AS event_preceding_seq, events.client_seq AS event_client_seq, messages.user_id AS message_creator FROM messages LEFT OUTER JOIN conversations ON (conversations.database_identifier = messages.conversation_database_identifier) LEFT OUTER JOIN streams ON (streams.database_identifier = conversations.stream_database_identifier) LEFT OUTER JOIN events ON (events.database_identifier = messages.event_database_identifier) ORDER BY messages.database_identifier"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v3, "conversation_database_identifier"

    invoke-static {v0, v1, v3}, Lcom/layer/sdk/internal/lsdke/c;->a(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v3, "message_database_identifier"

    invoke-static {v0, v1, v3}, Lcom/layer/sdk/internal/lsdke/c;->a(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v3, "event_preceding_seq"

    invoke-static {v0, v1, v3}, Lcom/layer/sdk/internal/lsdke/c;->b(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v3, "event_preceding_seq"

    invoke-static {v0, v1, v3}, Lcom/layer/sdk/internal/lsdke/c;->c(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    if-ne v0, v5, :cond_a

    move v3, v4

    :goto_3
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_3

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v10, "event_client_seq"

    invoke-static {v0, v1, v10}, Lcom/layer/sdk/internal/lsdke/c;->b(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v10, "event_client_seq"

    invoke-static {v0, v1, v10}, Lcom/layer/sdk/internal/lsdke/c;->c(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_5

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v8, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v10, "message_creator"

    invoke-static {v8, v1, v10}, Lcom/layer/sdk/internal/lsdke/c;->d(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/k;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->c(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->d()J

    move-result-wide v10

    const-string v0, "UPDATE messages SET message_index = ? WHERE database_identifier = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v8

    const/4 v8, 0x1

    aput-object v9, v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v3, "stream_seq"

    invoke-static {v0, v1, v3}, Lcom/layer/sdk/internal/lsdke/c;->b(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/c$1;->brl:Lcom/layer/sdk/internal/lsdke/c;

    const-string v3, "stream_seq"

    invoke-static {v0, v1, v3}, Lcom/layer/sdk/internal/lsdke/c;->c(Lcom/layer/sdk/internal/lsdke/c;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto/16 :goto_2

    :cond_8
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :cond_9
    move-object v0, v2

    goto :goto_4

    :cond_a
    move v3, v0

    goto/16 :goto_3

    :cond_b
    move v0, v5

    goto/16 :goto_2
.end method
