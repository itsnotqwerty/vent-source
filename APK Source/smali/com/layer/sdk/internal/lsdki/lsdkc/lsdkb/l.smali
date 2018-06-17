.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;
.super Lcom/layer/a/a;


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final c:Lcom/layer/b/d/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->c:Lcom/layer/b/d/k;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 10

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->e()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->k(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v8, v0, Lcom/layer/b/d/i;->bwP:Ljava/lang/Long;

    invoke-interface {v5, v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/layer/b/d/h;->xG()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/layer/b/d/i;->a(Ljava/util/UUID;)V

    iget-object v5, v0, Lcom/layer/b/d/i;->bwO:Ljava/lang/Long;

    if-eqz v5, :cond_a

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v8, v3, v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/c;

    move-result-object v5

    :goto_1
    sget-object v8, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l$1;->bqe:[I

    iget-object v9, v0, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {v9}, Lcom/layer/b/f/c/f;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/layer/b/d/i;->dH(I)Lcom/layer/b/f/c/p;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_2
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v2, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lcom/layer/b/d/c;->xE()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v5, v5, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {v0, v5}, Lcom/layer/b/d/i;->dH(I)Lcom/layer/b/f/c/p;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    if-nez v5, :cond_3

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Mutation for event deletion doesn\'t have event. Mutation: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/b/d/i;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Mutation for event deletion doesn\'t have event. Mutation: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/b/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v5}, Lcom/layer/b/d/c;->xE()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v5, v5, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {v0, v5}, Lcom/layer/b/d/i;->dH(I)Lcom/layer/b/f/c/p;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->c(Ljava/lang/Iterable;)V

    :cond_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    new-instance v4, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->c:Lcom/layer/b/d/k;

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-direct {v4, v5, v6, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;-><init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/i;)V

    new-array v0, v2, [Lcom/layer/a/c/d;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->b()Lcom/layer/a/c/a;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->a([Lcom/layer/a/c/d;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->a(I)V

    move v0, v1

    :goto_4
    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v3

    if-ne v3, v2, :cond_8

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;->a(Lcom/layer/a/c/d;)V

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto/16 :goto_2

    :cond_a
    move-object v5, v4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
