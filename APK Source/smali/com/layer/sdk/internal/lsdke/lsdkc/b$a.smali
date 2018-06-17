.class public Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static e(Landroid/database/Cursor;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/layer/b/d/i;

    invoke-direct {v1}, Lcom/layer/b/d/i;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/b/d/i;->a(Ljava/util/UUID;)V

    :cond_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/layer/b/d/i;->dH(I)Lcom/layer/b/f/c/p;

    :cond_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/layer/b/f/c/g;->dB(I)Lcom/layer/b/f/c/g;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/f/c/p;->bFy:Lcom/layer/b/f/c/g;

    :cond_2
    invoke-interface {p0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/layer/b/f/c/f;->dA(I)Lcom/layer/b/f/c/f;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/f/c/p;->bFz:Lcom/layer/b/f/c/f;

    :cond_3
    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/d/i;->k:Ljava/lang/String;

    :cond_4
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/d/i;->l:Ljava/lang/String;

    :cond_5
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/d/i;->bwP:Ljava/lang/Long;

    :cond_6
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/layer/b/d/i;->bwO:Ljava/lang/Long;

    :cond_7
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/layer/b/d/i;->dI(I)Lcom/layer/b/f/c/p;

    :cond_8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method static f(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v4, Lcom/layer/b/d/h;

    invoke-direct {v4}, Lcom/layer/b/d/h;-><init>()V

    new-instance v5, Lcom/layer/b/f/c/h;

    invoke-direct {v5}, Lcom/layer/b/f/c/h;-><init>()V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/o;->dG(I)Lcom/layer/b/f/c/o;

    move-result-object v0

    iput-object v0, v4, Lcom/layer/b/f/c/m;->bEJ:Lcom/layer/b/f/c/o;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/b/d/h;->u([B)Lcom/layer/b/f/c/m;

    :cond_0
    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/layer/b/d/h;->dE(I)Lcom/layer/b/f/c/m;

    :cond_1
    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/b/d/h;->b(Ljava/util/UUID;)V

    :cond_2
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    :cond_3
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    :cond_4
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/layer/b/d/h;->O(J)Lcom/layer/b/f/c/m;

    :cond_5
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_16

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/layer/b/d/h;->aK(Z)Lcom/layer/b/f/c/m;

    :cond_6
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/b/d/h;->v([B)Lcom/layer/b/f/c/m;

    :cond_7
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/layer/b/f/c/h;->b:I

    invoke-virtual {v5}, Lcom/layer/b/f/c/h;->xV()V

    move v0, v1

    :goto_2
    const/16 v6, 0xb

    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_8

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/layer/b/f/c/h;->a:I

    invoke-virtual {v5}, Lcom/layer/b/f/c/h;->xP()V

    move v0, v1

    :cond_8
    const/16 v6, 0xc

    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_9

    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/layer/b/f/c/h;->d:J

    invoke-virtual {v5}, Lcom/layer/b/f/c/h;->yX()V

    move v0, v1

    :cond_9
    const/16 v6, 0xd

    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_a

    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/layer/b/f/c/h;->bpD:I

    invoke-virtual {v5, v1}, Lcom/layer/b/f/c/h;->e(Z)V

    move v0, v1

    :cond_a
    const/16 v6, 0xe

    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_b

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/layer/b/f/c/h;->c:I

    invoke-virtual {v5}, Lcom/layer/b/f/c/h;->xQ()V

    move v0, v1

    :cond_b
    const/16 v6, 0xf

    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_c

    const/16 v6, 0xf

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    :cond_c
    const/16 v6, 0x10

    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_d

    const/16 v6, 0x10

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/layer/b/d/h;->bwI:Ljava/lang/Integer;

    :cond_d
    if-eqz v0, :cond_e

    iput-object v5, v4, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :cond_e
    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_3
    iput-boolean v0, v4, Lcom/layer/b/d/h;->y:Z

    :cond_f
    const/16 v0, 0x12

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/layer/b/d/h;->dF(I)Lcom/layer/b/f/c/m;

    :cond_10
    const/16 v0, 0x13

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x13

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/layer/b/d/h;->bwJ:Ljava/lang/Integer;

    :cond_11
    const/16 v0, 0x14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/layer/b/d/h;->bwK:Ljava/lang/Integer;

    :cond_12
    const/16 v0, 0x15

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x15

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/layer/b/d/h;->bwL:Ljava/lang/Integer;

    :cond_13
    const/16 v0, 0x16

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x16

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/layer/b/f/c/m;->bEN:I

    invoke-virtual {v4}, Lcom/layer/b/f/c/m;->zf()V

    :cond_14
    const/16 v0, 0x17

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x17

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/layer/b/f/c/m;->n:J

    invoke-virtual {v4}, Lcom/layer/b/f/c/m;->zh()V

    :cond_15
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    move v0, v2

    goto/16 :goto_1

    :cond_17
    move v0, v2

    goto :goto_3

    :cond_18
    return-object v3

    :cond_19
    move v0, v2

    goto/16 :goto_2
.end method

.method static g(Landroid/database/Cursor;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static h(Landroid/database/Cursor;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x6

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v6, Lcom/layer/b/d/c;

    invoke-direct {v6, v9}, Lcom/layer/b/d/c;-><init>(B)V

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/e;->dz(I)Lcom/layer/b/f/c/e;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    :cond_0
    invoke-interface {p0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    :cond_1
    invoke-interface {p0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/layer/b/d/c;->dv(I)Lcom/layer/b/f/c/d;

    :cond_2
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/layer/b/d/c;->M(J)Lcom/layer/b/f/c/d;

    :cond_3
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/layer/b/d/c;->dw(I)Lcom/layer/b/f/c/d;

    :cond_4
    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/layer/b/d/c;->dx(I)Lcom/layer/b/f/c/d;

    :cond_5
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v6, v0}, Lcom/layer/b/d/c;->b(B)Lcom/layer/b/f/c/d;

    :cond_6
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/b/f/c/d;->j:Ljava/lang/String;

    :cond_7
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/layer/b/d/c;->dy(I)Lcom/layer/b/f/c/d;

    :cond_8
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    :cond_9
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/layer/b/d/c;->b(Ljava/util/UUID;)V

    :cond_a
    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/b/f/c/d;->bCH:Ljava/lang/String;

    :cond_b
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/layer/b/f/c/d;->n:J

    invoke-virtual {v6}, Lcom/layer/b/f/c/d;->yt()V

    :cond_c
    const/16 v0, 0xe

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v0, 0xe

    :try_start_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/k;->dD(I)Lcom/layer/b/f/c/k;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_d

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_e
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to deserialize receipt status blob for legacy event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    :try_start_4
    iput-object v2, v6, Lcom/layer/b/f/c/d;->bCI:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_11
    const/16 v0, 0xf

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0xf

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/layer/b/d/c;->N(J)Lcom/layer/b/f/c/d;

    :cond_12
    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    :cond_13
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    return-object v5

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method static i(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/f/c/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/layer/b/f/c/a;

    invoke-direct {v1}, Lcom/layer/b/f/c/a;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/layer/b/f/c/a;->t([B)Lcom/layer/b/f/c/a;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/layer/b/f/c/a;->e:J

    invoke-virtual {v1}, Lcom/layer/b/f/c/a;->yg()V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/layer/b/f/c/a;->L(J)Lcom/layer/b/f/c/a;

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method static j(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/c;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/layer/sdk/internal/lsdki/c;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdki/c;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/c;->a(Ljava/lang/Long;)V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/c;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/c;->b(Ljava/lang/Long;)V

    :cond_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdki/c$a;->a(I)Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/c;->a(Lcom/layer/sdk/internal/lsdki/c$a;)V

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static k(Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdki/d;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/layer/sdk/internal/lsdki/d;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdki/d;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/d;->a(Ljava/lang/Long;)V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/d;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/d;->b(Ljava/lang/Long;)V

    :cond_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdki/d$a;->a(I)Lcom/layer/sdk/internal/lsdki/d$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/d;->a(Lcom/layer/sdk/internal/lsdki/d$a;)V

    :cond_2
    invoke-interface {p0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdki/d;->b(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static l(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/o;->dG(I)Lcom/layer/b/f/c/o;

    move-result-object v0

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/layer/sdk/internal/lsdke/lsdkc/b$51;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/b/f/c/o;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    :goto_1
    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Long;)V

    :cond_0
    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/UUID;)V

    :cond_1
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e(Z)V

    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/Integer;)V

    :cond_2
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Integer;)V

    :cond_3
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->fromValue(I)Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V

    :cond_4
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/Date;

    const/16 v5, 0x9

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/Date;)V

    :cond_5
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Z)V

    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/a;

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/a;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-direct {v0, v1, v5, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;-><init>(Landroid/net/Uri;Ljava/lang/Long;Z)V

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_4

    :cond_9
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static m(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x5

    const/4 v1, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;-><init>()V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Ljava/lang/Long;)V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b(Ljava/lang/Long;)V

    :cond_0
    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->c(Ljava/lang/Long;)V

    :cond_1
    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Ljava/lang/Integer;)V

    :cond_3
    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->d(Ljava/lang/Long;)V

    :cond_4
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Z)V

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(J)V

    :cond_5
    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v5, "Found empty participant-id in a conversation"

    invoke-static {v0, v5}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    return-object v3
.end method

.method static n(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/layer/b/f/c/o;->dG(I)Lcom/layer/b/f/c/o;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v6, Lcom/layer/sdk/internal/lsdke/lsdkc/b$51;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/b/f/c/o;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    :goto_1
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/Long;)V

    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/util/Date;)V

    :cond_0
    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Date;

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/util/Date;)V

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/Integer;)V

    :cond_3
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Ljava/lang/Long;)V

    :cond_4
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(J)V

    :goto_2
    const/4 v2, 0x0

    const/16 v6, 0xa

    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_5

    const/16 v2, 0xa

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Z)V

    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d(Z)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/b;

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/b;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-direct {v0, v1, v2, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;-><init>(Landroid/net/Uri;Ljava/lang/Long;Z)V

    goto/16 :goto_1

    :cond_6
    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v0, v6, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(J)V

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_3

    :cond_8
    move v1, v4

    goto :goto_4

    :cond_9
    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static o(Landroid/database/Cursor;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-direct {v5, v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->f(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->g(Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h(Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d(Z)V

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    return-object v3
.end method

.method public static p(Landroid/database/Cursor;)Ljava/util/LinkedHashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->findByValue(I)Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v2

    :goto_2
    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/Date;

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    :goto_3
    new-instance v6, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-direct {v6, v0, v2, v3, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;-><init>(Ljava/lang/String;Lcom/layer/sdk/messaging/Presence$PresenceStatus;Ljava/util/Date;Ljava/lang/Long;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v4

    :cond_1
    move-object v3, v1

    goto :goto_3

    :cond_2
    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static q(Landroid/database/Cursor;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v6, v0

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v8, v0

    :goto_3
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_4
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    move-object v10, v0

    :goto_5
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/Date;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_6
    const-wide/16 v4, 0x0

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v12, v4

    :goto_7
    const/4 v3, 0x0

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v3, Ljava/util/Date;

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    :cond_2
    const/4 v5, 0x0

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    const/4 v0, 0x1

    :goto_8
    move v5, v0

    :cond_3
    const/4 v4, 0x0

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->fromOrdinal(I)Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v4

    :cond_4
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v6, v7, v9, v12}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;-><init>(Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/lang/Long;)V

    if-eqz v11, :cond_6

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/io/File;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    :goto_9
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    invoke-virtual {v0, v10}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a([B)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    goto :goto_9

    :cond_7
    return-object v14

    :cond_8
    move-wide v12, v4

    goto :goto_7

    :cond_9
    move-object v11, v0

    goto :goto_6

    :cond_a
    move-object v10, v0

    goto/16 :goto_5

    :cond_b
    move-object v9, v0

    goto/16 :goto_4

    :cond_c
    move-object v8, v0

    goto/16 :goto_3

    :cond_d
    move-object v7, v0

    goto/16 :goto_2

    :cond_e
    move-object v6, v0

    goto/16 :goto_1
.end method

.method static r(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/l;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a(Ljava/lang/Long;)V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->b(Ljava/lang/Long;)V

    :cond_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->values()[Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a(Lcom/layer/sdk/messaging/Message$RecipientStatus;)V

    :cond_2
    invoke-interface {p0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->a(Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static s(Landroid/database/Cursor;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;-><init>()V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Ljava/lang/Long;)V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;)V

    :cond_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->b(Ljava/lang/Long;)V

    :cond_1
    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->a(I)Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)V

    :cond_2
    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->c(Ljava/lang/Long;)V

    :cond_5
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    return-object v3
.end method

.method static t(Landroid/database/Cursor;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;-><init>()V

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/Long;)V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;)V

    :cond_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/Long;)V

    :cond_1
    invoke-interface {p0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->a(I)Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V

    :cond_2
    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c(Ljava/lang/Long;)V

    :cond_5
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    return-object v3
.end method

.method static u(Landroid/database/Cursor;)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method static v(Landroid/database/Cursor;)J
    .locals 2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
