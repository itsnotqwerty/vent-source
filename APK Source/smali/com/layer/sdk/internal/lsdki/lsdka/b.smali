.class public Lcom/layer/sdk/internal/lsdki/lsdka/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/lsdka/b$a;,
        Lcom/layer/sdk/internal/lsdki/lsdka/b$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdka/b;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;)I
    .locals 2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->v()V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->b(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->c(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->b(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Ljava/util/UUID;)Lcom/layer/b/d/c;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/layer/b/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/layer/b/d/c;-><init>(B)V

    invoke-virtual {v0, p3}, Lcom/layer/b/d/c;->b(Ljava/util/UUID;)V

    iget-object v1, p2, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    iput-object v1, v0, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/layer/b/d/h;->xG()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    :cond_1
    iget v1, p2, Lcom/layer/b/f/c/m;->d:I

    invoke-virtual {v0, v1}, Lcom/layer/b/d/c;->dw(I)Lcom/layer/b/f/c/d;

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v1

    iget-object v2, p2, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-interface {v1, p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/layer/b/d/c;->dx(I)Lcom/layer/b/f/c/d;

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/lang/Long;)Lcom/layer/b/d/h;
    .locals 4

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v1

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-interface {v1, p0, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1, p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/b$a;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v5

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/c;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->b()Lcom/layer/sdk/internal/lsdki/c$b;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdki/c$b;->a:Lcom/layer/sdk/internal/lsdki/c$b;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/c$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->d()Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/c$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v5, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_0
    :try_start_3
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/m;->c(Landroid/net/Uri;)Ljava/util/UUID;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v5, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v5, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    :try_start_4
    new-instance v4, Lcom/layer/b/d/h;

    invoke-direct {v4}, Lcom/layer/b/d/h;-><init>()V

    invoke-virtual {v4, v2}, Lcom/layer/b/d/h;->b(Ljava/util/UUID;)V

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v4, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->i()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v2, v4, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/layer/b/d/h;->aK(Z)Lcom/layer/b/f/c/m;

    iget-boolean v2, v4, Lcom/layer/b/f/c/m;->h:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-interface {v5, v3, v4, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Lcom/layer/b/d/h;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/h;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Landroid/net/Uri;)V

    iget-object v4, v2, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v1, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Long;)V

    move-object v4, v2

    :goto_2
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v3, v4, v10}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v3, v2, v10}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_4
    invoke-interface {v5, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_2
    :try_start_5
    iget-object v2, v4, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Long;)V

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->a:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-interface {v5, v3, v4, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    iget-object v2, v4, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Long;)V

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v9, 0x0

    aput-object v1, v4, v9

    invoke-virtual {v6, v2, v4}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    :goto_5
    invoke-interface {v5, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v2

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, v2, Lcom/layer/b/f/c/m;->h:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v5, v3, v2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)V

    :cond_5
    invoke-interface {v5, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-interface {v5, v3, v2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)V

    goto :goto_5

    :cond_6
    invoke-interface {v5, v3, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :cond_7
    return-object v7

    :catchall_1
    move-exception v0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)Z
    .locals 4

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Ljava/util/UUID;)Lcom/layer/b/d/c;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/layer/b/f/c/e;->bDz:Lcom/layer/b/f/c/e;

    iput-object v2, v1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/layer/b/d/c;->N(J)Lcom/layer/b/f/c/d;

    invoke-interface {v0, p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Z
    .locals 10

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v2

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v3

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Not creating message event due to content still uploading"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/m;->c(Landroid/net/Uri;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Ljava/util/UUID;)Lcom/layer/b/d/c;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Not creating message event due to stream not being ready"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    iput-object v0, v4, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j()Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    move-object v1, v0

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->isContentReady()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping message send as MessagePart is not ready : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". MessagePart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    new-instance v7, Lcom/layer/b/f/c/a;

    invoke-direct {v7}, Lcom/layer/b/f/c/a;-><init>()V

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/layer/b/f/c/a;->t([B)Lcom/layer/b/f/c/a;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/layer/b/f/c/a;->L(J)Lcom/layer/b/f/c/a;

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iput-object v5, v4, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    :cond_7
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v1

    sget-object v5, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-interface {v2, p0, v0, v1, v5}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iput-object v1, v4, Lcom/layer/b/f/c/d;->l:Ljava/util/Map;

    :cond_9
    invoke-interface {v2, p0, v4}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    iget-object v0, v4, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event DB ID is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, v4, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {p3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d(Ljava/lang/Long;)V

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v3, v0, v1}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/i;Lcom/layer/sdk/messaging/Message$RecipientStatus;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Ljava/util/UUID;)Lcom/layer/b/d/c;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bsw:[I

    invoke-virtual {p4}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/layer/b/d/c;->dy(I)Lcom/layer/b/f/c/d;

    iget v2, v1, Lcom/layer/b/f/c/d;->bCG:I

    iget v3, v1, Lcom/layer/b/f/c/d;->f:I

    if-le v2, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event\'s target seq is greater than preceding seq. StreamId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MessageId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Event Seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TargetSeq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/layer/b/f/c/d;->bCG:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PrecedingSeq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/layer/b/f/c/d;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set recipient status to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v2, Lcom/layer/b/f/c/e;->bDr:Lcom/layer/b/f/c/e;

    iput-object v2, v1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    goto :goto_1

    :pswitch_2
    sget-object v2, Lcom/layer/b/f/c/e;->bDs:Lcom/layer/b/f/c/e;

    iput-object v2, v1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/sdk/internal/lsdki/c;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)Z
    .locals 4

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p0, p1, p3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Ljava/util/UUID;)Lcom/layer/b/d/c;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/layer/b/f/c/e;->bDo:Lcom/layer/b/f/c/e;

    iput-object v2, v1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {p4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    invoke-virtual {p4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, p0, p3, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c(Ljava/lang/Long;)V

    iget-object v3, v1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {p4, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->d(Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v3

    iget-object v1, v1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-interface {v0, p0, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/b$a;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v3

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/c;

    :try_start_0
    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    sget-object v7, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->brd:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->b()Lcom/layer/sdk/internal/lsdki/c$b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdki/c$b;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_0
    :try_start_2
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v1, v7}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->n(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-interface {v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_0
    :try_start_3
    sget-object v8, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqK:[I

    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->e()Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    move-result-object v8

    sget-object v9, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-virtual {v8, v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->d()Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v1, v8}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v8

    invoke-static {v1, p0, v8}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-interface {v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_2
    :try_start_5
    new-instance v9, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-direct {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;-><init>()V

    sget-object v10, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    invoke-virtual {v9, v10}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;)V

    iget-object v8, v8, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v9, v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/Long;)V

    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->e()Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->a()I

    move-result v8

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->a(I)Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V

    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->b()Z

    move-result v7

    invoke-virtual {v9, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Z)V

    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c(Ljava/lang/Long;)V

    invoke-interface {v3, v1, v9}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o;)V

    invoke-interface {v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    invoke-interface {v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :pswitch_2
    :try_start_6
    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->e()Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-virtual {v7, v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_3
    :try_start_7
    invoke-interface {v3, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Syncable changes on identity metadata are not supported."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Syncable changes on identity metadata are not supported."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    return-object v5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;)V
    .locals 10

    const/4 v4, 0x0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v5

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    invoke-interface {v6, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->j(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqe:[I

    iget-object v2, v0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {v2}, Lcom/layer/b/f/c/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown mutation target: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_1
    invoke-interface {v6, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :pswitch_0
    :try_start_2
    iget-object v1, v0, Lcom/layer/b/d/i;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget-object v2, v0, Lcom/layer/b/d/i;->l:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v4

    :goto_2
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v1

    iget-object v1, v1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    iput-object v1, v0, Lcom/layer/b/d/i;->bwP:Ljava/lang/Long;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/layer/b/d/i;->bwO:Ljava/lang/Long;

    :goto_3
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/layer/b/d/i;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v2

    check-cast v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/layer/b/d/i;->bwO:Ljava/lang/Long;

    goto :goto_3

    :pswitch_1
    iget-object v1, v0, Lcom/layer/b/d/i;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/c;

    move-result-object v1

    iget-object v2, v1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    iput-object v2, v0, Lcom/layer/b/d/i;->bwP:Ljava/lang/Long;

    iget-object v1, v1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    iput-object v1, v0, Lcom/layer/b/d/i;->bwO:Ljava/lang/Long;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v6, v3, v7}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;)V

    :cond_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v6, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Ljava/util/UUID;)Lcom/layer/b/d/c;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/layer/b/d/c;->xE()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1, p0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {p2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream ID mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v4, Lcom/layer/b/f/c/e;->bDn:Lcom/layer/b/f/c/e;

    iput-object v4, v2, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    iget v4, v3, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {v2, v4}, Lcom/layer/b/d/c;->dy(I)Lcom/layer/b/f/c/d;

    invoke-interface {v1, p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    invoke-interface {v1, p0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    goto :goto_0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/sdk/internal/lsdki/c;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)Z
    .locals 3

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p0, p1, p3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Ljava/util/UUID;)Lcom/layer/b/d/c;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/layer/b/f/c/e;->bDp:Lcom/layer/b/f/c/e;

    iput-object v2, v1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {p4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)V

    invoke-virtual {p4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, p3, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v2

    iget-object v1, v1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-interface {v0, p0, v2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/b$a;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->a()Lcom/layer/sdk/internal/lsdki/lsdka/b$b;

    move-result-object v4

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/c;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->e()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->brd:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->b()Lcom/layer/sdk/internal/lsdki/c$b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdki/c$b;->ordinal()I

    move-result v8

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_b

    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    :goto_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_0
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Conversation changes should already be handled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_4
    invoke-interface {v4, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :pswitch_1
    :try_start_3
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_0
    :try_start_4
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c()Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3, p0, v8}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    :try_start_5
    invoke-virtual {v8}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_2
    :try_start_6
    sget-object v9, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->d()Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/layer/sdk/internal/lsdki/c$a;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$a;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_3
    :try_start_7
    invoke-static {v3, p0, v0, v8, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/sdk/internal/lsdki/c;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)Z

    move-result v1

    goto :goto_2

    :pswitch_3
    invoke-static {v3, p0, v8, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_4
    invoke-static {v3, p0, v0, v8, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/sdk/internal/lsdki/c;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local keyed values should already be handled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_5
    :try_start_8
    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3, p0, v8}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v8

    if-nez v8, :cond_6

    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_6
    :try_start_9
    sget-object v9, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->d()Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/layer/sdk/internal/lsdki/c$a;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_7
    invoke-static {v3, p0, v8, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_8
    invoke-static {v3, p0, v8, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->p(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    move-result-object v8

    if-nez v8, :cond_7

    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_7
    :try_start_a
    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g()Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_9
    :try_start_b
    invoke-virtual {v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v9

    invoke-static {v3, p0, v9}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v9

    if-nez v9, :cond_a

    invoke-interface {v4, v3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/c;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-interface {v4, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/b$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_a
    :try_start_c
    sget-object v10, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/c;->d()Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/c$a;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->d()Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v8

    invoke-static {v3, p0, v9, v1, v8}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/lsdka/b$a;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdkd/lsdka/i;Lcom/layer/sdk/messaging/Message$RecipientStatus;)Z

    move-result v1

    goto/16 :goto_2

    :pswitch_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot UPDATE a message recipient status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot DELETE a message recipient status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    :cond_c
    return-object v6

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
