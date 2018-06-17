.class public Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method static a(Lcom/layer/b/d/c;I)Landroid/content/ContentValues;
    .locals 6

    iget-object v0, p0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/a;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "event_content_part_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "event_database_identifier"

    iget-object v3, p0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "type"

    iget-object v3, v0, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-virtual {v0}, Lcom/layer/b/f/c/a;->yf()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "size"

    iget-wide v4, v0, Lcom/layer/b/f/c/a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "url"

    iget-object v3, v0, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/b/f/c/a;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "access_expiration"

    iget-wide v4, v0, Lcom/layer/b/f/c/a;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-object v1
.end method

.method static a(Lcom/layer/b/d/h;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "stream_database_identifier"

    iget-object v2, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "member_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "seq"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-object v0
.end method

.method static a(Lcom/layer/sdk/internal/lsdkd/lsdka/l;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->b()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "message_database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->d()Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "status"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->d()Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->e()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "seq"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    return-object v0
.end method

.method static a(Lcom/layer/sdk/internal/lsdkd/lsdka/n;Z)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->d()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->b()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "last_seen_at"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v1, "syncable_change"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method static a(Lcom/layer/sdk/internal/lsdkd/lsdka/o;)Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "object_type"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "object_id"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->e()Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "key_type"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->e()Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "key"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "value"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "is_deleted"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->h()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const-string v0, "timestamp"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method static a(Lcom/layer/sdk/internal/lsdki/c;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->a()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "change_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v1, "table_name"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->b()Lcom/layer/sdk/internal/lsdki/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/c$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "row_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "change_type"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->d()Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/c$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static a(ZZ)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "followed"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "syncable_change"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method static b(Lcom/layer/b/d/h;Z)Landroid/content/ContentValues;
    .locals 6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v0, "database_identifier"

    iget-object v2, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/b/d/h;->xG()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "stream_id"

    invoke-virtual {p0}, Lcom/layer/b/d/h;->yZ()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/b/d/h;->xm()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "client_id"

    invoke-virtual {p0}, Lcom/layer/b/d/h;->za()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_0
    invoke-virtual {p0}, Lcom/layer/b/d/h;->ys()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "request_client_id"

    invoke-virtual {p0}, Lcom/layer/b/d/h;->zd()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_1
    invoke-virtual {p0}, Lcom/layer/b/d/h;->zb()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "is_distinct"

    iget-boolean v2, p0, Lcom/layer/b/f/c/m;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_2
    invoke-virtual {p0}, Lcom/layer/b/d/h;->yk()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "type"

    iget-object v2, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    iget v2, v2, Lcom/layer/b/f/c/o;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/layer/b/d/h;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "seq"

    iget v2, p0, Lcom/layer/b/f/c/m;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget-object v0, p0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const-string v0, "base_sync_seq"

    iget-object v2, p0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget-object v0, p0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const-string v0, "min_synced_seq"

    iget-object v2, p0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget-object v0, p0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const-string v0, "max_synced_seq"

    iget-object v2, p0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    const-string v0, "is_deleted"

    iget-boolean v2, p0, Lcom/layer/b/d/h;->y:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/layer/b/d/h;->yu()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :cond_7
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/layer/b/f/c/h;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "total_message_count"

    iget v3, v0, Lcom/layer/b/f/c/h;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_3
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/layer/b/f/c/h;->d()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "unread_message_count"

    iget v3, v0, Lcom/layer/b/f/c/h;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_4
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/layer/b/f/c/h;->h()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "last_message_received_at"

    iget-wide v4, v0, Lcom/layer/b/f/c/h;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_5
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/layer/b/f/c/h;->j()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "last_message_seq"

    iget v3, v0, Lcom/layer/b/f/c/h;->bpD:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_6
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/layer/b/f/c/h;->f()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "oldest_unread_message_seq"

    iget v0, v0, Lcom/layer/b/f/c/h;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_7
    invoke-virtual {p0}, Lcom/layer/b/d/h;->K()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "mutation_seq"

    iget v2, p0, Lcom/layer/b/f/c/m;->bEO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget-object v0, p0, Lcom/layer/b/d/h;->bwJ:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    const-string v0, "base_sync_mutation_seq"

    iget-object v2, p0, Lcom/layer/b/d/h;->bwJ:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget-object v0, p0, Lcom/layer/b/d/h;->bwK:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const-string v0, "min_synced_mutation_seq"

    iget-object v2, p0, Lcom/layer/b/d/h;->bwK:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    iget-object v0, p0, Lcom/layer/b/d/h;->bwL:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const-string v0, "max_synced_mutation_seq"

    iget-object v2, p0, Lcom/layer/b/d/h;->bwL:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    invoke-virtual {p0}, Lcom/layer/b/d/h;->yw()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "starting_seq"

    iget v2, p0, Lcom/layer/b/f/c/m;->bEN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c
    invoke-virtual {p0}, Lcom/layer/b/d/h;->zg()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "created_at"

    iget-wide v2, p0, Lcom/layer/b/f/c/m;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_d
    return-object v1

    :cond_e
    invoke-virtual {p0}, Lcom/layer/b/d/h;->xG()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream with no client-id. Using stream-id. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    const-string v0, "client_id"

    invoke-virtual {p0}, Lcom/layer/b/d/h;->yZ()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stream with no client_id set. Stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v0, "request_client_id"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v0, "is_distinct"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    :cond_13
    const-string v2, "total_message_count"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    const-string v2, "unread_message_count"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    const-string v2, "last_message_received_at"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    const-string v2, "last_message_seq"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_17
    const-string v0, "oldest_unread_message_seq"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method static b(Lcom/layer/b/d/i;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "database_identifier"

    iget-object v2, p0, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    iget-object v1, p0, Lcom/layer/b/d/i;->bwP:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "stream_database_identifier"

    iget-object v2, p0, Lcom/layer/b/d/i;->bwP:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    iget-object v1, p0, Lcom/layer/b/d/i;->bwO:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, "event_database_identifier"

    iget-object v2, p0, Lcom/layer/b/d/i;->bwO:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/b/d/i;->xj()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "stream_id"

    invoke-virtual {p0}, Lcom/layer/b/d/i;->zl()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/b/d/i;->xk()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "target_seq"

    iget v2, p0, Lcom/layer/b/f/c/p;->bpD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget-object v1, p0, Lcom/layer/b/d/i;->k:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "conversation_object_identifier"

    iget-object v2, p0, Lcom/layer/b/d/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/layer/b/d/i;->l:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "message_object_identifier"

    iget-object v2, p0, Lcom/layer/b/d/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v1, "type"

    iget-object v2, p0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    iget v2, v2, Lcom/layer/b/f/c/g;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "target"

    iget-object v2, p0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    iget v2, v2, Lcom/layer/b/f/c/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/layer/b/d/i;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "seq"

    iget v2, p0, Lcom/layer/b/f/c/p;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    return-object v0
.end method

.method static b(Lcom/layer/sdk/internal/lsdkd/lsdka/d;)Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "conversation_database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "stream_member_database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "event_database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "member_id"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "is_deleted"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->g()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "seq"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->h()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "mark_as_read_from_position"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    return-object v1

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Z)Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "object_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display_name"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_name"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "last_name"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "email_address"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone_number"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "avatar_image_url"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->isFollowed()Z

    move-result v1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->f()Z

    move-result v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "followed"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "syncable_change"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_0
    const-string v1, "public_key"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static b(Lcom/layer/sdk/internal/lsdkd/lsdka/h;)Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "object_type"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "object_id"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->e()Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "key_type"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->e()Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "key"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "value"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "is_deleted"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->h()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const-string v0, "timestamp"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method static c(Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Landroid/content/ContentValues;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "object_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "conversation_database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "event_database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "seq"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    instance-of v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/b;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    :goto_0
    const-string v4, "type"

    iget v0, v0, Lcom/layer/b/f/c/o;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "user_id"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "user_name"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getSentAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "sent_at"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getSentAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getReceivedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "received_by_user"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getReceivedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    const-string v4, "is_deleted_all_participants"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "is_deleted_my_devices"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "message_index"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/layer/b/f/c/o;->bFv:Lcom/layer/b/f/c/o;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/layer/b/f/c/o;->bFt:Lcom/layer/b/f/c/o;

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v1, v2

    goto :goto_2
.end method

.method static d(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)Landroid/content/ContentValues;
    .locals 8

    const/4 v2, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v0, "database_identifier"

    iget-object v1, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p1}, Lcom/layer/b/d/c;->yr()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "client_id"

    invoke-virtual {p1}, Lcom/layer/b/d/c;->yq()[B

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p1}, Lcom/layer/b/d/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type"

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    iget v1, v1, Lcom/layer/b/f/c/e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    invoke-virtual {p1}, Lcom/layer/b/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "creator_id"

    iget-object v1, p1, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/layer/b/d/c;->xE()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "seq"

    iget v1, p1, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p1}, Lcom/layer/b/d/c;->xG()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "timestamp"

    iget-wide v6, p1, Lcom/layer/b/f/c/d;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    invoke-virtual {p1}, Lcom/layer/b/d/c;->yk()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "preceding_seq"

    iget v1, p1, Lcom/layer/b/f/c/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    invoke-virtual {p1}, Lcom/layer/b/d/c;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "client_seq"

    iget v1, p1, Lcom/layer/b/f/c/d;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    invoke-virtual {p1}, Lcom/layer/b/d/c;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "subtype"

    new-instance v1, Ljava/lang/Byte;

    iget-byte v3, p1, Lcom/layer/b/f/c/d;->bzH:B

    invoke-direct {v1, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    :cond_7
    invoke-virtual {p1}, Lcom/layer/b/d/c;->xp()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "member_id"

    iget-object v1, p1, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/layer/b/d/c;->yo()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "target_seq"

    iget v1, p1, Lcom/layer/b/f/c/d;->bCG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    invoke-virtual {p1}, Lcom/layer/b/d/c;->yu()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "creator_name"

    iget-object v1, p1, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lcom/layer/b/d/c;->yv()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/k;

    iget v0, v0, Lcom/layer/b/f/c/k;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event with no client_id set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "initial_recipient_status"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_d
    iget-object v0, p1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    iget-object v1, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event\'s stream ID does not match persisted ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_e

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_f
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to serialize receipt status map to blob for legacy event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    if-nez v1, :cond_12

    if-eqz v0, :cond_12

    iput-object v0, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    :cond_12
    const-string v0, "stream_database_identifier"

    iget-object v1, p1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_13
    :goto_2
    invoke-virtual {p1}, Lcom/layer/b/d/c;->N()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "target_position"

    iget-wide v2, p1, Lcom/layer/b/f/c/d;->bCM:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_14
    return-object v4

    :cond_15
    iget-object v0, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown stream ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-object v0, p1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    const-string v1, "stream_database_identifier"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method static d(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Landroid/content/ContentValues;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "object_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "stream_database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "stream_id"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v4}, Lcom/layer/b/e/d;->d(Ljava/util/UUID;)[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_2
    instance-of v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/a;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    :goto_0
    const-string v4, "type"

    iget v0, v0, Lcom/layer/b/f/c/o;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "is_distinct"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "is_deleted_all_participants"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "is_deleted_my_devices"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalMessageCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "total_message_count"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalMessageCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "total_unread_message_count"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_5
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "historic_message_status"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->h()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "created_at"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->h()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    return-object v3

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/layer/b/f/c/o;->bFv:Lcom/layer/b/f/c/o;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/layer/b/f/c/o;->bFt:Lcom/layer/b/f/c/o;

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v1, v2

    goto :goto_3

    :cond_b
    const-string v0, "total_message_count"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    const-string v0, "total_unread_message_count"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_5
.end method

.method static d(Ljava/lang/String;Ljava/lang/Long;)Landroid/content/ContentValues;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "synced_at"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    return-object v0
.end method

.method static e(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "response_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static g(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "object_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "message_database_identifier"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "mime_type"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g()[B

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "content"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "access_expiration"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->l()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "access_time"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->l()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "transfer_status"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    const-string v2, "pruned"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "file_path"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "size"

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v1

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    const-string v0, "file_path"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static wy()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "syncable_change"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method
