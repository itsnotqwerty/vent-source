.class public Lcom/layer/sdk/internal/lsdke/lsdkc/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;,
        Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/b/d/h;)Lcom/layer/b/d/h;
    .locals 4

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p1, Lcom/layer/b/f/c/m;->h:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot merge non-distinct server stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Merging remote stream "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with local stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remote Stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Local Stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v0

    :goto_0
    iget-boolean v1, p2, Lcom/layer/b/f/c/m;->h:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layer/b/d/h;->aK(Z)Lcom/layer/b/f/c/m;

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/layer/b/d/h;->u([B)Lcom/layer/b/f/c/m;

    invoke-virtual {p1}, Lcom/layer/b/d/h;->c()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/b/d/h;->b(Ljava/util/UUID;)V

    iget v1, p1, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {v0, v1}, Lcom/layer/b/d/h;->dE(I)Lcom/layer/b/f/c/m;

    iget-wide v2, p1, Lcom/layer/b/f/c/m;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/layer/b/d/h;->O(J)Lcom/layer/b/f/c/m;

    iget-object v1, p1, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iput-object v1, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {p1}, Lcom/layer/b/d/h;->wV()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/layer/b/d/h;->zd()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/b/d/h;->v([B)Lcom/layer/b/f/c/m;

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/layer/b/d/h;->K()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Lcom/layer/b/f/c/m;->bEO:I

    invoke-virtual {v0, v1}, Lcom/layer/b/d/h;->dF(I)Lcom/layer/b/f/c/m;

    :cond_6
    return-object v0

    :cond_7
    iget-object v0, p2, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layer/b/d/h;->aK(Z)Lcom/layer/b/f/c/m;

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Merging non-distinct client stream. server stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". client stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-static {v1}, Lcom/layer/b/e/d;->d(Ljava/util/UUID;)[B

    move-result-object v1

    goto :goto_2

    :cond_a
    invoke-virtual {p2}, Lcom/layer/b/d/h;->wV()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/layer/b/d/h;->zd()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/b/d/h;->v([B)Lcom/layer/b/f/c/m;

    goto :goto_3
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Z)Lcom/layer/b/d/h;
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v1, p1, Lcom/layer/b/f/c/m;->h:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use Persist.streams() to persist non-distinct streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-nez v1, :cond_5

    if-nez p3, :cond_8

    iget-object v1, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to find distinct stream by participant, but succeeded with id. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/b/d/h;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Origin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-static {p1, v7}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/b/d/h;Z)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "streams"

    const-string v3, "database_identifier"

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v1, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    :goto_1
    if-eqz v0, :cond_7

    invoke-static {p0, v0, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Z)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V

    :goto_2
    return-object v0

    :cond_3
    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/c$1;->bqe:[I

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_3
    invoke-static {v0, v8}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/b/d/h;Z)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "streams"

    const-string v4, "database_identifier=?"

    new-array v5, v7, [Ljava/lang/String;

    iget-object v6, v0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update stream!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0, v2, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/b/d/h;)Lcom/layer/b/d/h;

    move-result-object v0

    goto :goto_3

    :pswitch_1
    invoke-static {p0, p1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/b/d/h;)Lcom/layer/b/d/h;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V

    iput-object v1, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    goto :goto_1

    :cond_5
    invoke-static {p1, v8}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/b/d/h;Z)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "streams"

    const-string v3, "database_identifier=?"

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update stream!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V

    goto :goto_2

    :cond_7
    invoke-static {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Z)V

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V

    goto :goto_2

    :cond_8
    move-object v1, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;ZLjava/util/Map;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to save a non distinct conversation as distinct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_0
    if-eqz v0, :cond_7

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Existing conversation is not distinct. Conversation : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Existing conversation is not distinct. Conversation : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->d(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "conversations"

    const-string v3, "database_identifier=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update distinct conversation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->d(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "conversations"

    const-string v3, "database_identifier"

    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/Long;)V

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V

    invoke-static {p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;Z)V

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V

    move-object v0, v1

    :cond_9
    :goto_2
    return-object v0

    :cond_a
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->d(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "conversations"

    const-string v3, "database_identifier=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update distinct conversation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V

    invoke-static {p0, p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;Z)V

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V

    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 4

    const/4 v1, 0x6

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "conversation object cannot be null"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversation object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot merge non-distinct conversations. serverConversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". clientConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot merge non-distinct conversations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    :goto_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Z)V

    :cond_9
    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e(Z)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/UUID;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->h()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/Date;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalMessageCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalMessageCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/Integer;)V

    :cond_a
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Integer;)V

    :cond_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Lcom/layer/b/f/a/d;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;",
            "Lcom/layer/b/f/a/d;",
            ")",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p2, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    move-object v2, v0

    :goto_0
    iget-object v0, p2, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v4

    :goto_1
    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v0, p2, Lcom/layer/b/f/a/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v4

    :goto_3
    if-lez v0, :cond_3

    iget-object v0, p2, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    iget-object v0, p2, Lcom/layer/b/f/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3

    :cond_3
    return-object v2

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method private static a(Ljava/lang/Long;JLjava/util/Map$Entry;)Lcom/layer/sdk/internal/lsdkd/lsdka/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "J",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;"
        }
    .end annotation

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;-><init>()V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;)V

    invoke-virtual {v1, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/Long;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c(Ljava/lang/Long;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Z)V

    return-object v1
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Ljava/lang/Long;
    .locals 6

    const-string v0, "identities"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Could not insert identity"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert identity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdkd/lsdka/e;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/Long;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "identities"

    const-string v1, "database_identifier = ?"

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Could not update identity"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update identity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    iget-object v1, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No stream ID set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v1, :cond_2

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Lcom/layer/b/d/c;->xE()Z

    move-result v4

    if-nez v1, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/c;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New OutboundRecon event conflicts with existing client_id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; existing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    iget v1, p1, Lcom/layer/b/f/c/d;->d:I

    invoke-static {p0, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;I)Lcom/layer/b/d/c;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot update an event if there is already an event with its stream and seq: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; existing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez v1, :cond_9

    iget v1, p1, Lcom/layer/b/f/c/d;->d:I

    invoke-static {p0, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;I)Lcom/layer/b/d/c;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New event conflicts with existing client_id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; existing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v0, v0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    iput-object v0, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    :cond_8
    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->d(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    if-nez v1, :cond_c

    const-string v1, "events"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot update an unsynchronized event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object v0, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    :cond_b
    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    goto/16 :goto_2

    :cond_c
    const-string v1, "events"

    const-string v4, "database_identifier=?"

    new-array v5, v2, [Ljava/lang/String;

    iget-object v6, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update event!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V
    .locals 8

    iget-object v0, p1, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p1, Lcom/layer/b/f/c/m;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use distinctStream() to persist distinct streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    :cond_1
    iget-object v0, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-nez v0, :cond_3

    invoke-static {p1, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/b/d/h;Z)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "streams"

    const-string v2, "database_identifier"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    :goto_0
    invoke-static {p0, p1, p2, v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Z)V

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V

    return-void

    :cond_3
    invoke-static {p1, v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/b/d/h;Z)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "streams"

    const-string v2, "database_identifier=?"

    new-array v3, v5, [Ljava/lang/String;

    iget-object v4, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update stream!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/i;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/b/d/i;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p1, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/layer/b/d/i;->wV()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/layer/b/d/i;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/layer/b/d/i;->wV()Ljava/util/UUID;

    move-result-object v1

    iget v2, p1, Lcom/layer/b/f/c/p;->f:I

    invoke-static {p0, v1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;I)Lcom/layer/b/d/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    iput-object v1, p1, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    :cond_0
    iget-object v1, p1, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    if-nez v1, :cond_3

    const-string v1, "mutations"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert mutation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v0, p1, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    :cond_2
    return-void

    :cond_3
    const-string v1, "mutations"

    const-string v2, "database_identifier=?"

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update mutation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot persist distinct conversation in conversationOnly. Use distinctConversationOnly: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot persist distinct conversation. Use distinctConversationOnly()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->d(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "conversations"

    const-string v2, "database_identifier"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not insert conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/Long;)V

    :cond_4
    return-void

    :cond_5
    const-string v1, "conversations"

    const-string v2, "database_identifier=?"

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_4

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not update conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not update conversation. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/d;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "conversation_participants"

    const-string v2, "database_identifier=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_7

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not update conversation participant by DB ID! ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not update conversation participant by DB ID! ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b()Ljava/lang/Long;

    move-result-object v0

    const-string v2, "conversation_participants"

    const-string v3, "database_identifier = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_6

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not update conversation participant by ID! ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not update conversation participant by ID! ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "conversation_participants"

    invoke-virtual {p0, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Could not insert conversation participant"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert conversation participant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Ljava/lang/Long;)V

    :cond_7
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/e;)V
    .locals 4

    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->h:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/e;Lcom/layer/sdk/internal/lsdkd/lsdka/e;)V
    .locals 4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->a:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->b:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->c:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_2
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->d:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_3
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->e:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_4
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->f:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_5
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->g:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_6
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->isFollowed()Z

    move-result v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->isFollowed()Z

    move-result v2

    if-eq v1, v2, :cond_7

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->h:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_7
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;-><init>()V

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;)V

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->b(Ljava/lang/Long;)V

    invoke-virtual {v0, p4}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)V

    invoke-virtual {v0, p5}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->c(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/h;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "local_keyed_values"

    const-string v2, "object_type=? AND object_id=? AND key=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->d()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "local_keyed_values"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert keyed value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Ljava/lang/Long;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "local_keyed_values"

    const-string v2, "database_identifier=?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update keyed value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/l;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "message_recipient_status"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v8, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert message recipient"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "message_recipient_status"

    const-string v4, "database_identifier=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->g(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "message_parts"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert message part"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/lang/Long;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "message_parts"

    const-string v2, "database_identifier=?"

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update message part!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/n;Landroid/content/ContentValues;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "presence"

    const-string v1, "user_id=?"

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not update presence: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not update presence: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/n;Lcom/layer/sdk/internal/lsdkd/lsdka/n;)V
    .locals 4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->b()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->b()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->g:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->i:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->g:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$b;->j:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdki/d$b;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;-><init>()V

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;)V

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/Long;)V

    invoke-virtual {v0, p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V

    invoke-virtual {v0, p4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "remote_keyed_values"

    const-string v2, "object_type=? AND object_id=? AND key=?"

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "remote_keyed_values"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert keyed value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/Long;)V

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "remote_keyed_values"

    const-string v1, "database_identifier"

    const-string v2, "object_type=? AND object_id=? AND key=?"

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/Long;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "remote_keyed_values"

    const-string v2, "database_identifier=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update keyed value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/f;I)V
    .locals 6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdke/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->e(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "response_versions"

    const-string v2, "response_name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdke/f;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "response_versions"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create response version with name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdke/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create response version with name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdke/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and version \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V
    .locals 6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/c;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot update a syncable change"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdki/c;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "syncable_changes"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert syncable change"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdki/c;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V
    .locals 8

    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;Z)V
    .locals 8

    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_1

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v2, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {p0, v4, v2, v0, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkk/m$g;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/layer/sdk/internal/lsdkk/m$h;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot persist local keyed value with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/layer/sdk/internal/lsdkk/m$e;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$h;->a()Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/layer/sdk/messaging/Message;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message;

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->c(Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message has no conversation database ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v3, "messages"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->k()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message has no message parts!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v3, "messages"

    const-string v4, "database_identifier=?"

    new-array v5, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update message!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/lang/Long;)V

    goto :goto_1

    :cond_5
    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/layer/sdk/messaging/Conversation;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Conversation;

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V

    invoke-static {p0, v0, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;Z)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;JLjava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Long;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdkk/m$c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;JLjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Suppressing attempt to create identity with an empty user ID"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Z)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Ljava/lang/Long;

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Z)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/e;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v3, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/Long;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/a/d;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/d;

    iget-object v0, v0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/d;

    sget-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/c$1;->b:[I

    iget-object v4, v0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    invoke-virtual {v4}, Lcom/layer/b/f/a/e;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process identity patch, unknown type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process identity patch, unknown type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/layer/b/f/a/d;->byI:Lcom/layer/b/f/a/e;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p0, v1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Lcom/layer/b/f/a/d;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v1, v0, v3, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Lcom/layer/sdk/internal/lsdkd/lsdka/e;Ljava/util/Map;Z)V

    goto :goto_2

    :pswitch_1
    iget-object v0, v0, Lcom/layer/b/f/a/d;->byJ:Lcom/layer/b/f/a/c;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-direct {v3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;-><init>(Lcom/layer/b/f/a/c;)V

    invoke-virtual {v3, v6}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d(Z)V

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Z)V

    iget-object v0, v0, Lcom/layer/b/f/a/c;->i:Ljava/util/Map;

    invoke-static {p0, v1, v3, v0, v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Lcom/layer/sdk/internal/lsdkd/lsdka/e;Ljava/util/Map;Z)V

    goto :goto_2

    :pswitch_2
    iget-object v0, v0, Lcom/layer/b/f/a/d;->b:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;",
            "Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_0

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Presence can only be updated for current user. So, cannot be larger than 1 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Presence can only be updated for current user. So, cannot be larger than 1 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No user-id set on presence object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No user-id set on presence object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Empty user id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    if-nez v1, :cond_7

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    if-ne p2, v1, :cond_6

    invoke-static {v0, v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/n;Z)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "presence"

    const-string v5, "database_identifier"

    invoke-virtual {p0, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$c;->g:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v5, Lcom/layer/sdk/internal/lsdki/d$a;->a:Lcom/layer/sdk/internal/lsdki/d$a;

    invoke-static {p0, v2, v5, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;)V

    :goto_3
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a(Ljava/lang/Long;)V

    goto :goto_2

    :cond_6
    invoke-static {v0, v8}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/n;Z)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "presence"

    const-string v5, "database_identifier"

    invoke-virtual {p0, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->d()Ljava/lang/Long;

    move-result-object v2

    sget-object v5, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    if-ne p2, v5, :cond_9

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    invoke-static {v0, v9}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/n;Z)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {p0, v0, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/n;Landroid/content/ContentValues;)V

    invoke-static {p0, v1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/n;Lcom/layer/sdk/internal/lsdkd/lsdka/n;)V

    move-object v1, v2

    goto :goto_3

    :cond_9
    invoke-static {v0, v8}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/n;Z)Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/n;Landroid/content/ContentValues;)V

    :cond_a
    move-object v1, v2

    goto :goto_3

    :cond_b
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Lcom/layer/sdk/internal/lsdkd/lsdka/e;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    :cond_0
    invoke-static {p2, p4}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Z)Landroid/content/ContentValues;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/d$a;->a:Lcom/layer/sdk/internal/lsdki/d$a;

    invoke-static {p0, v2, v3, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;)V

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, p3, v1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/lang/Long;Z)V

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Ljava/lang/Long;)V

    invoke-static {p0, v2, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/Long;)V

    invoke-static {p0, v0, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/e;Lcom/layer/sdk/internal/lsdkd/lsdka/e;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/lang/Long;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$g;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/m$g;-><init>()V

    if-nez p3, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-static {p0, v0, p2, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    if-nez p1, :cond_0

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p2, v4, v5, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;JLjava/util/Collection;)V

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {p2, v4, v5, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Ljava/lang/Long;JLjava/util/Map$Entry;)Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o;)V

    goto :goto_2

    :cond_0
    new-instance v3, Lcom/layer/sdk/internal/lsdkk/m$g;

    invoke-direct {v3}, Lcom/layer/sdk/internal/lsdkk/m$g;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v7, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    invoke-virtual {v3, v1, v7}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkk/m$g;Lcom/layer/sdk/internal/lsdkk/m$g;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p2, v4, v5, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;JLjava/util/Collection;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d(Z)V

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Z)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "followed"

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->isFollowed()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "syncable_change"

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/e;)V

    :cond_1
    return-void
.end method

.method private static a(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "metadata."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v1, v0}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v1, v0}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-direct {v0, p2}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const-string v1, "display_name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "first_name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "last_name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "phone_number"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "email_address"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "public_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "avatar_url"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->g(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2dddcdaf -> :sswitch_4
        -0x247fbcc6 -> :sswitch_3
        -0x18029e77 -> :sswitch_6
        -0x9987146 -> :sswitch_1
        0x604443e8 -> :sswitch_0
        0x71892389 -> :sswitch_5
        0x77fdce94 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/layer/b/d/c;->xm()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/b/d/c;I)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "event_content_parts"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert event content part"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v3, "event_content_parts"

    const-string v4, "event_content_part_id=? AND event_database_identifier=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update event content part!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Z)V
    .locals 10

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/layer/b/d/h;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    move-object v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, p1, v0, v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;Z)I

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$c;->e:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v6, Lcom/layer/sdk/internal/lsdki/d$a;->c:Lcom/layer/sdk/internal/lsdki/d$a;

    invoke-static {p0, v0, v6, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;)V

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1, v0, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->a(Lcom/layer/b/d/h;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v5

    if-eqz p3, :cond_6

    move-object v2, v3

    :goto_4
    if-nez v2, :cond_7

    const-string v0, "stream_members"

    invoke-virtual {p0, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not insert stream member"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p0, p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    invoke-static {p0, p1, v0, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;Z)I

    move-object v0, v2

    :cond_8
    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    if-ne p2, v2, :cond_5

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$c;->e:Lcom/layer/sdk/internal/lsdki/d$c;

    sget-object v5, Lcom/layer/sdk/internal/lsdki/d$a;->a:Lcom/layer/sdk/internal/lsdki/d$a;

    invoke-static {p0, v2, v5, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$c;Lcom/layer/sdk/internal/lsdki/d$a;Ljava/lang/Long;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/e;)V
    .locals 8

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v2, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkk/m$g;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/layer/sdk/internal/lsdkk/m$h;

    if-nez v1, :cond_3

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot persist local keyed value with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot persist local keyed value with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/layer/sdk/internal/lsdkk/m$e;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$h;->a()Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)V
    .locals 3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->l()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->l()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->l()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->b(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h;)V

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)V
    .locals 3

    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b(Ljava/lang/Long;)V

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)V

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/layer/sdk/messaging/MessagePart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V

    goto :goto_0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Z)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/layer/sdk/internal/lsdke/lsdkc/c$b;->wy()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, ","

    const-string v2, "?"

    invoke-static {v4, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "identities"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "database_identifier IN ("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Could not update identities"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not update identities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method
