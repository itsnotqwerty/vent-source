.class public Lcom/layer/sdk/internal/lsdki/lsdka/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/lsdka/a$c;,
        Lcom/layer/sdk/internal/lsdki/lsdka/a$a;,
        Lcom/layer/sdk/internal/lsdki/lsdka/a$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$c;Landroid/database/sqlite/SQLiteDatabase;Z)I
    .locals 19

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "InboundRecon: Start model conversions"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null transaction"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v4, Lcom/layer/sdk/internal/lsdke/a;

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->c()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/layer/sdk/internal/lsdke/a;-><init>(Lcom/layer/sdk/internal/lsdki/lsdka/a$b;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdke/a;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "InboundRecon: Deleted invalid changes"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdke/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v4, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "InboundRecon: Processed mutations"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdke/a;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v4, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdke/a;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "InboundRecon: Processed identities"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p1

    invoke-static/range {v3 .. v9}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;ZLjava/util/Set;Lcom/layer/sdk/internal/lsdki/lsdka/a$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "InboundRecon: Processed streams"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "InboundRecon: Completing due to more streams to process"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    return v3

    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdke/a;->c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x1f4

    if-lt v3, v5, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v8, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "InboundRecon: Processed events"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_9
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdke/a;->d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x1f4

    if-lt v3, v5, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_a
    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object v14, v7

    invoke-static/range {v10 .. v15}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "InboundRecon: Processed extra events"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdke/a;->g(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1, v5}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "InboundRecon: Processed remote keyed values"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdke/a;->e(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->c(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "InboundRecon: Processed presence"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdke/a;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_e
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "InboundRecon: Deleted synced changes"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_f
    if-eqz p3, :cond_11

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {p1 .. p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    :cond_11
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "InboundRecon: Marked messages delivered"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_12
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    goto/16 :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 9

    const/4 v1, 0x1

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p4, :cond_d

    sget-object v0, Lcom/layer/b/f/c/f;->bDJ:Lcom/layer/b/f/c/f;

    invoke-virtual {p3}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {p1, p2, v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    iget-object v5, v0, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    sget-object v6, Lcom/layer/b/f/c/g;->bDL:Lcom/layer/b/f/c/g;

    if-ne v5, v6, :cond_0

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Initially marking conversation deleted due to: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->d(Lcom/layer/b/d/h;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/a;

    invoke-static {p3}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/h;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/a;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    :goto_1
    iget-object v5, p3, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Long;)V

    invoke-virtual {p3}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/UUID;)V

    iget-boolean v5, p3, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e(Z)V

    invoke-static {p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/b/d/h;)Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V

    invoke-static {p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/b/d/h;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/Integer;)V

    invoke-static {p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->c(Lcom/layer/b/d/h;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Integer;)V

    invoke-virtual {p3}, Lcom/layer/b/d/h;->zg()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p3, Lcom/layer/b/f/c/m;->n:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/Date;)V

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v3, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Z)V

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->n()V

    :cond_2
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v3, v4

    :goto_3
    return-object v3

    :cond_3
    invoke-static {p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->e(Lcom/layer/b/d/h;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {p3}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/h;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v5, v4, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;-><init>(Landroid/net/Uri;Ljava/lang/Long;Z)V

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {p3}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/h;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    goto :goto_1

    :cond_5
    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Stream.created_at not set on server. Setting Conversation.created_at to current_timestamp. Stream = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/Date;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p3}, Lcom/layer/b/d/h;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p3, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-nez v0, :cond_9

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p3, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    :cond_9
    iget-object v0, p3, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p3, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->r()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "blocking conversation creation between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    move-object v3, v4

    goto/16 :goto_3

    :cond_b
    iget-object v0, p3, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;-><init>()V

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b(Ljava/lang/Long;)V

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c(Ljava/lang/Long;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/util/List;)Z

    goto :goto_4

    :cond_c
    iget-object v0, p3, Lcom/layer/b/f/c/m;->g:Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method

.method private static a(Lcom/layer/b/d/h;)Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;
    .locals 2

    iget-object v0, p0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/d/h;->bwI:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->SYNC_PENDING:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->NO_MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    goto :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdke/a;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdke/a;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;)",
            "Ljava/util/Collection",
            "<+",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdke/a;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    iget-object v0, v0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-static {p2, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {p2, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2, v1}, Lcom/layer/sdk/internal/lsdke/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdki/d;->b()Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdki/d$c;->f:Lcom/layer/sdk/internal/lsdki/d$c;

    if-eq v0, v1, :cond_9

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot process non-identity changes. Change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot process non-identity changes. Change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_a
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->b:[I

    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdki/d;->d()Lcom/layer/sdk/internal/lsdki/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_5
    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_1
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getId()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdki/d;->e()Lcom/layer/sdk/internal/lsdki/d$b;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No known field for identity update. Change: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No known field for identity update. Change: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v3, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->brd:[I

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/d$b;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No known field for identity update. Change: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No known field for identity update. Change: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    :goto_6
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_4
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_5
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_6
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_7
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_8
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_9
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->isFollowed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_a
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot delete an identity. Change: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot delete an identity. Change: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p1, p2, v9}, Lcom/layer/sdk/internal/lsdke/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto :goto_7

    :cond_10
    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->b()Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdki/d$c;->b:Lcom/layer/sdk/internal/lsdki/d$c;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process non-mutation changes. Change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/i;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    sget-object v5, Lcom/layer/b/f/c/g;->bDL:Lcom/layer/b/f/c/g;

    if-eq v2, v5, :cond_3

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot process mutation of this type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/layer/b/d/i;->wV()Ljava/util/UUID;

    move-result-object v2

    iget v5, v1, Lcom/layer/b/f/c/p;->bpD:I

    sget-object v6, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->bqe:[I

    iget-object v1, v1, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    invoke-virtual {v1}, Lcom/layer/b/f/c/f;->ordinal()I

    move-result v1

    aget v1, v6, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Integer;)Lcom/layer/b/d/c;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    sget-object v5, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    if-eq v2, v5, :cond_5

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/c;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Lcom/layer/sdk/internal/lsdkd/f;->c(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Z)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v2, v5, v6}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    :cond_7
    :goto_1
    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p1, p2, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/h;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v6

    if-nez v6, :cond_9

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto/16 :goto_0

    :cond_9
    if-nez v5, :cond_a

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    sget-object v5, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_MY_DEVICES:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-boolean v7, Lcom/layer/sdk/internal/lsdkd/f;->a:Z

    invoke-virtual {v1, v2, v6, v5, v7}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/LayerClient$DeletionMode;Z)V

    goto :goto_1

    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Integer;)Lcom/layer/b/d/c;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    sget-object v5, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    if-eq v2, v5, :cond_d

    :cond_b
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring conversation deletion mutation; target event is not a message: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    :cond_d
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/k;->a(Lcom/layer/b/d/c;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Z)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :cond_e
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getPosition()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_f

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v8

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v9

    sget-object v10, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_MY_DEVICES:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-boolean v11, Lcom/layer/sdk/internal/lsdkd/f;->a:Z

    invoke-virtual {v8, v9, v1, v10, v11}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/LayerClient$DeletionMode;Z)V

    goto :goto_3

    :cond_f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_10
    if-nez v2, :cond_11

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_12
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    new-instance v20, Ljava/util/LinkedHashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layer/b/d/h;

    iget-object v3, v3, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v4}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layer/b/d/c;

    iget-object v5, v3, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_3
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->b()Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v3

    sget-object v4, Lcom/layer/sdk/internal/lsdki/d$c;->a:Lcom/layer/sdk/internal/lsdki/d$c;

    if-eq v3, v4, :cond_4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot process non-event changes in processEvents. Change: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/layer/b/d/c;

    if-eqz v6, :cond_6

    invoke-virtual {v8, v6}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v6, :cond_7

    iget-object v4, v6, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_7
    sget-object v4, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->b:[I

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->d()Lcom/layer/sdk/internal/lsdki/d$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/layer/sdk/internal/lsdki/d$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-nez v6, :cond_8

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-static/range {v3 .. v10}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    if-lez v3, :cond_9

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object v15, v8

    move-object/from16 v17, v9

    invoke-static/range {v11 .. v18}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/Set;Ljava/util/HashMap;Ljava/util/HashSet;)V

    :cond_9
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v4

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Ljava/util/Collection;)V

    :cond_a
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->l()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v5

    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdkd/h;->g()Lcom/layer/sdk/internal/lsdkc/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->l()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v5

    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdkd/h;->g()Lcom/layer/sdk/internal/lsdkc/a;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/layer/sdk/internal/lsdkc/a;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener;)Z

    goto :goto_4

    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layer/b/d/c;

    iget-object v5, v3, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v5}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v3, v3, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->clear()V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1
    if-nez v6, :cond_10

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v6}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)V

    return-object v19

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;ZLjava/util/Set;Lcom/layer/sdk/internal/lsdki/lsdka/a$c;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$c;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$a;->c:Lcom/layer/sdk/internal/lsdki/d$a;

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, p1, p2, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    iget-object v0, v0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$a;->b:Lcom/layer/sdk/internal/lsdki/d$a;

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {p0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/layer/sdk/internal/lsdki/d$a;->a:Lcom/layer/sdk/internal/lsdki/d$a;

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {p5}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_6
    invoke-interface {p1, p2, v4}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    invoke-static {p0, p1, p2, v4, v5}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v0

    sget-object v3, Lcom/layer/sdk/internal/lsdki/a$e;->b:Lcom/layer/sdk/internal/lsdki/a$e;

    if-ne v0, v3, :cond_a

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->e()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_a

    const/4 v0, 0x1

    :goto_4
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v3

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Ljava/util/Collection;Z)V

    invoke-interface {p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;ZLjava/util/Set;Lcom/layer/sdk/internal/lsdki/lsdka/a$c;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v8

    :cond_a
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;ZLjava/util/Set;Lcom/layer/sdk/internal/lsdki/lsdka/a$c;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$c;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/16 v1, 0x1f4

    move-object/from16 v0, p2

    invoke-interface {p1, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_0

    invoke-interface/range {p5 .. p5}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    :cond_0
    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/layer/sdk/internal/lsdki/d;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface/range {p5 .. p5}, Lcom/layer/sdk/internal/lsdki/lsdka/a$c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->bqK:[I

    invoke-virtual {v10}, Lcom/layer/sdk/internal/lsdki/d;->b()Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/d$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process event changes in processStreams. Change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process event changes in processStreams. Change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream change should have been processed already. Change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream change should have been processed already. Change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    invoke-virtual {v10}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v3

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->b:[I

    invoke-virtual {v10}, Lcom/layer/sdk/internal/lsdki/d;->d()Lcom/layer/sdk/internal/lsdki/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/d$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p2

    invoke-interface {p1, v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {p1, v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    move-object v1, p0

    move/from16 v5, p3

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/Long;Ljava/lang/String;ZLcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot update a stream member. Change: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". streamMemberId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    move-object/from16 v0, p2

    invoke-interface {p1, v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c()Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {p1, v0, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v7

    if-nez v7, :cond_9

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No conversation found for stream. Change: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". participant: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p2

    invoke-interface {p1, v0, v12}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    return-object v11

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

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/Set;Ljava/util/HashMap;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layer/b/d/c;

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->bsw:[I

    iget-object v1, v3, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v1}, Lcom/layer/b/f/c/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event in eventsTargetingInsertions. Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v3, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;Ljava/util/Set;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeliveryReceiptsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v3

    sget-object v4, Lcom/layer/sdk/messaging/Message$RecipientStatus;->DELIVERED:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-virtual {v4, v3}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-virtual {v4, v3}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->c()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v2

    iget-object v2, v2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/messaging/Message$RecipientStatus;->DELIVERED:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Lcom/layer/sdk/messaging/Message$RecipientStatus;Ljava/lang/Integer;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v3

    new-array v4, v1, [Lcom/layer/sdk/internal/lsdkd/d;

    aput-object p2, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->e(Lcom/layer/b/d/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Channel became a Conversation! stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Conversation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Channel became a Conversation! stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Conversation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/util/UUID;)V

    iget-object v1, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Long;)V

    iget-boolean v1, p1, Lcom/layer/b/f/c/m;->h:Z

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f(Z)V

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/h;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Landroid/net/Uri;)V

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/b/d/h;)Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/b/d/h;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Integer;)V

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->c(Lcom/layer/b/d/h;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Ljava/lang/Integer;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    new-array v3, v5, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->q()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/Long;Ljava/lang/String;ZLcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-direct {v0, p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b(Ljava/lang/Long;)V

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c(Ljava/lang/Long;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/util/List;)Z

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v1

    new-array v2, v4, [Lcom/layer/sdk/internal/lsdkd/d;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->d()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p5, p6, v0, p2}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p3, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-wide v2, p3, Lcom/layer/b/f/c/d;->bCM:J

    iget-object v1, p3, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/layer/sdk/internal/lsdkd/f;->b(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    sget-object v4, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Lcom/layer/sdk/messaging/Message$RecipientStatus;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/d;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/d;

    invoke-virtual {v1, v3, v0}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;Ljava/util/Set;Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/b/d/c;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p3, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    iget v1, p3, Lcom/layer/b/f/c/d;->bCG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Integer;)Lcom/layer/b/d/c;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, v2, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    sget-object v1, Lcom/layer/b/f/c/e;->bDu:Lcom/layer/b/f/c/e;

    invoke-virtual {v0, v1}, Lcom/layer/b/f/c/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    sget-object v1, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    invoke-virtual {v0, v1}, Lcom/layer/b/f/c/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Illegal state : Ignoring event: Cannot process a receipt for EventType. Event client-id:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/layer/b/d/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". MessageEvent client-id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/layer/b/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/c;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkd/m;->b(Lcom/layer/b/d/c;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v0, v2, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->bsw:[I

    iget-object v1, p3, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v1}, Lcom/layer/b/f/c/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot process receipt for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot process receipt for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->DELIVERED:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-object v1, v0

    :goto_2
    iget-object v4, p3, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    if-nez v4, :cond_5

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null recipient creator ID in recipient event. Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null recipient creator ID in recipient event. Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-object v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->l()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/h;)V

    :goto_3
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal state : Ignoring event: Cannot process a receipt for CHANNEL Message. Event client-id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/layer/b/d/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Message client-id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/layer/b/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {v0, v3, v7}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    goto :goto_3

    :cond_7
    iget-object v2, p3, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, p3, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/layer/sdk/messaging/Message$RecipientStatus;->PENDING:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    :cond_9
    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v5

    invoke-virtual {v2}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v2

    if-le v5, v2, :cond_0

    iget v2, p3, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Lcom/layer/sdk/messaging/Message$RecipientStatus;Ljava/lang/Integer;)V

    invoke-virtual {p5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    new-array v3, v6, [Lcom/layer/sdk/internal/lsdkd/d;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto/16 :goto_0

    :cond_a
    move-object v3, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/b/d/c;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->bsw:[I

    iget-object v2, p3, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v2}, Lcom/layer/b/f/c/e;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    invoke-static/range {p0 .. p7}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;Ljava/util/Set;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;Ljava/util/Set;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-direct {v0, p5}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b(Ljava/lang/Long;)V

    invoke-virtual {v0, p4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c(Ljava/lang/Long;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Ljava/util/List;)Z

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v1

    new-array v2, v4, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p2, v0, p5}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return v4
.end method

.method private static a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v3

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v4

    sget-object v5, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_PARTICIPANTS:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-boolean v6, Lcom/layer/sdk/internal/lsdkd/f;->a:Z

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/LayerClient$DeletionMode;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_PARTICIPANTS:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-boolean v4, Lcom/layer/sdk/internal/lsdkd/f;->a:Z

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/LayerClient$DeletionMode;Z)V

    goto :goto_0
.end method

.method private static b(Lcom/layer/b/d/h;)I
    .locals 1

    invoke-virtual {p0}, Lcom/layer/b/d/h;->yu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v0}, Lcom/layer/b/f/c/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget v0, v0, Lcom/layer/b/f/c/h;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/d/h;->c()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/m;->a(Ljava/util/UUID;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/layer/b/d/h;->ys()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/d/h;->wV()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/m;->a(Ljava/util/UUID;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    goto :goto_0
.end method

.method private static b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->b()Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v1

    sget-object v4, Lcom/layer/sdk/internal/lsdki/d$c;->c:Lcom/layer/sdk/internal/lsdki/d$c;

    if-eq v1, v4, :cond_1

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->b()Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changes in processRemoteKeyedValues"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->b()Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " changes in processRemoteKeyedValues"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    move-result-object v4

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->bsy:[I

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing remote keyed value type not implemented. Object type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing remote keyed value type not implemented. Object type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c()Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v6

    sget-object v7, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->d()Lcom/layer/sdk/internal/lsdki/d$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdki/d$a;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    :cond_5
    :goto_1
    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->h()Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v5, v7, v4}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    invoke-virtual {v6, v1, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto :goto_1

    :cond_6
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring REMOTE_KEYED_VALUES Update with null value. remoteKeyedValue:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " .streamDbId: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". conversationUri: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". ConversationImpl "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    sget-object v6, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->d()Lcom/layer/sdk/internal/lsdki/d$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdki/d$a;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    :cond_7
    :goto_2
    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdki/d;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v5, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->h()Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    invoke-virtual {v1, v5, v6}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v4

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto :goto_2

    :cond_8
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring REMOTE_KEYED_VALUES Update with null value. remoteKeyedValue:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ". identityUri: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". IdentityImpl "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    new-instance v5, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v4

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto/16 :goto_2

    :cond_9
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->bsw:[I

    iget-object v1, p3, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v1}, Lcom/layer/b/f/c/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v4

    :sswitch_1
    iget-object v0, p3, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p3, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find conversation for stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    invoke-virtual {p3}, Lcom/layer/b/d/c;->xE()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot update a message event with no seq. Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p3, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-interface {p1, p2, v0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/layer/sdk/internal/lsdkd/f;->c(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    move-result-object v0

    iget v1, p3, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/lang/Integer;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p3, Lcom/layer/b/f/c/d;->e:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d(Ljava/util/Date;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    new-array v3, v4, [Lcom/layer/sdk/internal/lsdkd/d;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->q()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private static b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/c;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashMap;Ljava/util/Set;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/layer/b/d/c;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v4}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;)Lcom/layer/b/d/h;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->r()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "blocking message from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    sget-object v4, Lcom/layer/b/f/c/f;->bDI:Lcom/layer/b/f/c/f;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    move-object/from16 v0, p3

    iget v8, v0, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v4, v6, v8}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layer/b/d/i;

    iget-object v4, v4, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    sget-object v6, Lcom/layer/b/f/c/g;->bDL:Lcom/layer/b/f/c/g;

    if-ne v4, v6, :cond_4

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Initially marking message deleted due to Event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_MY_DEVICES:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    const/4 v4, 0x1

    move v5, v4

    :cond_4
    const/4 v6, 0x0

    sget-object v4, Lcom/layer/b/f/c/f;->bDJ:Lcom/layer/b/f/c/f;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v4, v8}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layer/b/d/i;

    invoke-virtual {v4}, Lcom/layer/b/d/i;->wV()Ljava/util/UUID;

    move-result-object v10

    iget v11, v4, Lcom/layer/b/f/c/p;->bpD:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v10, v11}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Integer;)Lcom/layer/b/d/c;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v11, v10, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    sget-object v12, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    if-eq v11, v12, :cond_7

    :cond_6
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v11

    if-eqz v11, :cond_5

    sget-object v11, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Ignoring stream deletion mutation; target event could not be found or is not a message. Mutation: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " . mutationTargetMessageEvent: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-static {v10}, Lcom/layer/sdk/internal/lsdkd/lsdka/k;->a(Lcom/layer/b/d/c;)J

    move-result-wide v10

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v4, v12, v10

    if-gez v4, :cond_1b

    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_2
    move-object v6, v4

    goto :goto_1

    :cond_9
    invoke-static/range {p3 .. p3}, Lcom/layer/sdk/internal/lsdkd/lsdka/k;->a(Lcom/layer/b/d/c;)J

    move-result-wide v14

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v14, v10

    if-gtz v4, :cond_b

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Initially marking message deleted due to Stream: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_MY_DEVICES:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    const/4 v5, 0x1

    :cond_b
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v7, v4}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    :cond_c
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/b/d/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    move-object v13, v4

    if-nez v5, :cond_f

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Resurrecting conversation due to new message insertion: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Z)V

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v9, 0x0

    aput-object v13, v8, v9

    invoke-virtual {v4, v6, v8}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    :cond_f
    invoke-static {v7}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->d(Lcom/layer/b/d/h;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static/range {p3 .. p3}, Lcom/layer/sdk/internal/lsdkd/m;->b(Lcom/layer/b/d/c;)Landroid/net/Uri;

    move-result-object v4

    move-object v10, v4

    :goto_3
    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v10, v8}, Lcom/layer/sdk/internal/lsdkd/f;->c(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    move-result-object v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->q()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v5

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-static/range {p3 .. p3}, Lcom/layer/sdk/internal/lsdkd/m;->a(Lcom/layer/b/d/c;)Landroid/net/Uri;

    move-result-object v4

    move-object v10, v4

    goto :goto_3

    :cond_11
    if-eqz v6, :cond_14

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/b;

    const/4 v6, 0x0

    invoke-direct {v4, v10, v6}, Lcom/layer/sdk/internal/lsdkd/lsdka/b;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    move-object v11, v4

    :goto_4
    move-object/from16 v0, p3

    iget v4, v0, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/Integer;)V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    invoke-virtual {v11, v4, v6}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/Long;)V

    invoke-virtual {v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Landroid/net/Uri;)V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v11, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Ljava/lang/Long;)V

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/layer/b/f/c/d;->e:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/util/Date;)V

    new-instance v4, Ljava/util/Date;

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/layer/b/f/c/d;->e:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/util/Date;)V

    invoke-virtual {v11, v14, v15}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(J)V

    if-eqz v5, :cond_12

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d(Z)V

    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s()V

    :cond_12
    invoke-virtual {v11}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/layer/b/d/c;->xm()Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v12, v4

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/layer/b/f/c/a;

    invoke-virtual {v5}, Lcom/layer/b/f/c/a;->j()Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v5, Lcom/layer/b/f/c/a;->e:J

    const-wide/16 v16, 0x3e8

    mul-long v8, v8, v16

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_6
    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/layer/sdk/internal/lsdkd/m;->a(Landroid/net/Uri;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, v5, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    iget-wide v0, v5, Lcom/layer/b/f/c/a;->b:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v7, v8, v9, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;-><init>(Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v4, v10}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Landroid/net/Uri;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/util/Date;)V

    invoke-virtual {v5}, Lcom/layer/b/f/c/a;->f()Z

    move-result v7

    if-eqz v7, :cond_17

    sget-object v8, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v5}, Lcom/layer/b/f/c/a;->yf()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a([B)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    :goto_7
    iget-object v5, v5, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->l()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v5

    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdkd/h;->g()Lcom/layer/sdk/internal/lsdkc/a;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5, v4}, Lcom/layer/sdk/internal/lsdkc/a;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Lcom/layer/sdk/internal/lsdkc/a$c;

    move-result-object v5

    sget-object v6, Lcom/layer/sdk/internal/lsdkc/a$c;->b:Lcom/layer/sdk/internal/lsdkc/a$c;

    if-ne v5, v6, :cond_13

    move-object/from16 v0, p7

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto/16 :goto_5

    :cond_14
    invoke-static {v7}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->e(Lcom/layer/b/d/h;)Z

    move-result v4

    if-eqz v4, :cond_15

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v10, v6, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;-><init>(Landroid/net/Uri;Ljava/lang/Long;Z)V

    move-object v11, v4

    goto/16 :goto_4

    :cond_15
    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    const/4 v6, 0x0

    invoke-direct {v4, v10, v6}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    move-object v11, v4

    goto/16 :goto_4

    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_17
    sget-object v8, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    goto :goto_7

    :cond_18
    invoke-virtual {v11, v14}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/util/List;)V

    :cond_19
    invoke-virtual/range {p3 .. p3}, Lcom/layer/b/d/c;->yv()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    sget-object v7, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->bsx:[I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/layer/b/f/c/k;

    invoke-virtual {v5}, Lcom/layer/b/f/c/k;->ordinal()I

    move-result v5

    aget v5, v7, v5

    packed-switch v5, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    sget-object v5, Lcom/layer/sdk/messaging/Message$RecipientStatus;->DELIVERED:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    :goto_9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p3

    iget v7, v0, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v4, v5, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Lcom/layer/sdk/messaging/Message$RecipientStatus;Ljava/lang/Integer;)V

    goto :goto_8

    :pswitch_1
    sget-object v5, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    goto :goto_9

    :cond_1a
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p0 .. p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->q()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v4

    invoke-virtual {v13}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/layer/b/f/c/d;->d:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v4, v5}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;I)Ljava/util/LinkedHashSet;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1b
    move-object v4, v6

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_PARTICIPANTS:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-boolean v4, Lcom/layer/sdk/internal/lsdkd/f;->a:Z

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/LayerClient$DeletionMode;Z)V

    :cond_1
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->q()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static c(Lcom/layer/b/d/h;)I
    .locals 1

    invoke-virtual {p0}, Lcom/layer/b/d/h;->yu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v0}, Lcom/layer/b/f/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget v0, v0, Lcom/layer/b/f/c/h;->b:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$b;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$a;",
            "Lcom/layer/sdk/internal/lsdki/lsdka/a$b;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/layer/sdk/internal/lsdki/d;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    if-nez v1, :cond_7

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Identity not found for presence object. SyncedChange: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Presence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ". Identity: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    sget-object v7, Lcom/layer/sdk/internal/lsdki/lsdka/a$1;->b:[I

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/d;->d()Lcom/layer/sdk/internal/lsdki/d$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/layer/sdk/internal/lsdki/d$a;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :goto_6
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_0
    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/n;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v0, v7, v8}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto :goto_6

    :pswitch_1
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/d;->e()Lcom/layer/sdk/internal/lsdki/d$b;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/internal/lsdki/d$b;->j:Lcom/layer/sdk/internal/lsdki/d$b;

    if-ne v7, v8, :cond_8

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Ljava/util/Date;)V

    :goto_7
    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v0, v7, v8}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/d;->e()Lcom/layer/sdk/internal/lsdki/d$b;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/internal/lsdki/d$b;->i:Lcom/layer/sdk/internal/lsdki/d$b;

    if-ne v7, v8, :cond_9

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->b()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V

    goto :goto_7

    :cond_9
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown synced_change column. SyncedChange: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Presence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown synced_change column. SyncedChange: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Presence: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Identity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Ljava/util/Date;)V

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdki/lsdka/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v0, v7, v8}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    goto/16 :goto_6

    :cond_b
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, p2, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a$b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static d(Lcom/layer/b/d/h;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/layer/b/d/h;->yk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    sget-object v1, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Lcom/layer/b/d/h;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/layer/b/d/h;->yk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    sget-object v1, Lcom/layer/b/f/c/o;->bFv:Lcom/layer/b/f/c/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
