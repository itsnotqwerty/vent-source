.class public Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    iget-object v2, v0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v0, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    iget-object v1, v0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iput-object v1, v0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    sget-object v3, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    invoke-virtual {v1, v3}, Lcom/layer/b/f/c/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    sget-object v5, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-static {p0, v4, v1, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v3, v0, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method static d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/util/List;)Z

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/Map;)V

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Z)V

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->n()V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/util/Map;)V

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-static {p0, v1, v5, v6}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message has null Conversation DB ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_1

    invoke-static {p0, v5}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Landroid/net/Uri;)V

    invoke-static {p0, v4}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null parts: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s()V

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method static synthetic f(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MessagePart has null Message DB ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_1

    invoke-static {p0, v4}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->r(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/n;)V

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static synthetic i(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$c;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
