.class final Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkc/lsdka/b;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;)Lcom/layer/sdk/internal/lsdkc/lsdka/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

.field final synthetic bqB:Lcom/layer/sdk/internal/lsdkc/lsdka/b;

.field final synthetic bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b;Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqB:Lcom/layer/sdk/internal/lsdkc/lsdka/b;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->b(Ljava/io/File;)V

    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->g()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/k$a;->e:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v4, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$1;-><init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;Ljava/io/File;Lcom/layer/sdk/internal/lsdkd/h;)V

    invoke-static {v0, v2, v3, v4}, Lcom/layer/sdk/internal/lsdkd/l;->a(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/k$a;Lcom/layer/sdk/internal/lsdkd/l$a;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Failed to transact partSetFileCacheHelper"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/io/File;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqB:Lcom/layer/sdk/internal/lsdkc/lsdka/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->b()Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    :goto_0
    cmp-long v0, v12, v4

    if-ltz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->b(Ljava/io/File;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqB:Lcom/layer/sdk/internal/lsdkc/lsdka/b;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-wide v6, v4

    invoke-interface/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;JJ)V

    :goto_1
    return-void

    :cond_0
    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->e(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->b()Lcom/layer/b/d/k;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->d()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->e()I

    move-result v3

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->f()I

    move-result v6

    new-instance v7, Lcom/layer/b/d/k$f;

    invoke-direct {v7, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    const/16 v10, 0xc8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v7

    new-instance v8, Lcom/layer/b/d/k$2;

    invoke-direct {v8, v0, v2, v3, v6}, Lcom/layer/b/d/k$2;-><init>(Lcom/layer/b/d/k;Ljava/util/UUID;II)V

    invoke-virtual {v7, v8}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/a;

    iget-object v2, v0, Lcom/layer/b/f/c/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    iget-wide v6, v0, Lcom/layer/b/f/c/a;->e:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->g()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/internal/lsdkd/k$a;->e:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v9, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$2;

    invoke-direct {v9, p0, v2, v3, v6}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$2;-><init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;Ljava/lang/String;Ljava/util/Date;Lcom/layer/sdk/internal/lsdkd/h;)V

    invoke-static {v0, v7, v8, v9}, Lcom/layer/sdk/internal/lsdkd/l;->a(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/k$a;Lcom/layer/sdk/internal/lsdkd/l$a;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v6, "Failed to transact partSetUrlDataCacheHelper"

    invoke-static {v0, v6}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/util/Date;)V

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqz:Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->c()Lcom/layer/sdk/internal/lsdkc/d;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;

    move-object v8, p0

    move-object/from16 v9, p1

    move-wide v10, v4

    move-object v14, v1

    invoke-direct/range {v7 .. v14}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;-><init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;Ljava/io/File;JJLcom/layer/sdk/internal/lsdkc/lsdka/a$a;)V

    move-object v8, v0

    move-object v9, v2

    move-wide v10, v4

    move-object v14, v7

    invoke-virtual/range {v8 .. v14}, Lcom/layer/sdk/internal/lsdkc/d;->a(Ljava/lang/String;JJLcom/layer/sdk/internal/lsdkc/d$a;)V

    goto/16 :goto_1

    :cond_4
    invoke-interface {v6}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    goto :goto_2
.end method
