.class final Lcom/c/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final bMS:Ljava/lang/Object;

.field private static final bMT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final bMU:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final bMV:Lcom/c/a/y;


# instance fields
.field awX:Ljava/lang/Exception;

.field final bMF:Lcom/c/a/t;

.field final bMJ:I

.field bMK:I

.field bMP:Lcom/c/a/a;

.field final bMW:I

.field final bMX:Lcom/c/a/i;

.field final bMY:Lcom/c/a/d;

.field final bMZ:Lcom/c/a/aa;

.field final bNa:Lcom/c/a/w;

.field final bNb:Lcom/c/a/y;

.field bNc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field bNd:Landroid/graphics/Bitmap;

.field bNe:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field bNf:Lcom/c/a/t$d;

.field bNg:I

.field bNh:I

.field bNi:I

.field final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/c/a/c;->bMS:Ljava/lang/Object;

    new-instance v0, Lcom/c/a/c$1;

    invoke-direct {v0}, Lcom/c/a/c$1;-><init>()V

    sput-object v0, Lcom/c/a/c;->bMT:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/c/a/c;->bMU:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/c/a/c$2;

    invoke-direct {v0}, Lcom/c/a/c$2;-><init>()V

    sput-object v0, Lcom/c/a/c;->bMV:Lcom/c/a/y;

    return-void
.end method

.method private constructor <init>(Lcom/c/a/t;Lcom/c/a/i;Lcom/c/a/d;Lcom/c/a/aa;Lcom/c/a/a;Lcom/c/a/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/c/a/c;->bMU:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/c/a/c;->bMW:I

    iput-object p1, p0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iput-object p2, p0, Lcom/c/a/c;->bMX:Lcom/c/a/i;

    iput-object p3, p0, Lcom/c/a/c;->bMY:Lcom/c/a/d;

    iput-object p4, p0, Lcom/c/a/c;->bMZ:Lcom/c/a/aa;

    iput-object p5, p0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    iget-object v0, p5, Lcom/c/a/a;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/c/a/c;->key:Ljava/lang/String;

    iget-object v0, p5, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    iput-object v0, p0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    iget-object v0, p5, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    iget v0, v0, Lcom/c/a/w;->bNi:I

    iput v0, p0, Lcom/c/a/c;->bNi:I

    iget v0, p5, Lcom/c/a/a;->bMJ:I

    iput v0, p0, Lcom/c/a/c;->bMJ:I

    iget v0, p5, Lcom/c/a/a;->bMK:I

    iput v0, p0, Lcom/c/a/c;->bMK:I

    iput-object p6, p0, Lcom/c/a/c;->bNb:Lcom/c/a/y;

    invoke-virtual {p6}, Lcom/c/a/y;->getRetryCount()I

    move-result v0

    iput v0, p0, Lcom/c/a/c;->bNh:I

    return-void
.end method

.method private As()Landroid/graphics/Bitmap;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/c/a/c;->bMJ:I

    invoke-static {v3}, Lcom/c/a/p;->dY(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMY:Lcom/c/a/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/c/a/d;->dN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bMZ:Lcom/c/a/aa;

    invoke-virtual {v3}, Lcom/c/a/aa;->AB()V

    sget-object v3, Lcom/c/a/t$d;->bOn:Lcom/c/a/t$d;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/c/a/c;->bNf:Lcom/c/a/t$d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v3, v3, Lcom/c/a/t;->bOj:Z

    if-eqz v3, :cond_0

    const-string v3, "Hunter"

    const-string v4, "decoded"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    invoke-virtual {v5}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from cache"

    invoke-static {v3, v4, v5, v6}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/c/a/c;->bNh:I

    if-nez v3, :cond_f

    sget-object v3, Lcom/c/a/q;->bNV:Lcom/c/a/q;

    iget v3, v3, Lcom/c/a/q;->index:I

    :goto_1
    iput v3, v4, Lcom/c/a/w;->bMK:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bNb:Lcom/c/a/y;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/c/a/c;->bMK:I

    invoke-virtual {v3, v4, v5}, Lcom/c/a/y;->a(Lcom/c/a/w;I)Lcom/c/a/y$a;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v2, v3, Lcom/c/a/y$a;->bNf:Lcom/c/a/t$d;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/c/a/c;->bNf:Lcom/c/a/t$d;

    iget v2, v3, Lcom/c/a/y$a;->bOW:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/c/a/c;->bNg:I

    iget-object v2, v3, Lcom/c/a/y$a;->avo:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    iget-object v3, v3, Lcom/c/a/y$a;->bNE:Ljava/io/InputStream;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    new-instance v4, Lcom/c/a/n;

    invoke-direct {v4, v3}, Lcom/c/a/n;-><init>(Ljava/io/InputStream;)V

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Lcom/c/a/n;->dX(I)J

    move-result-wide v6

    invoke-static {v2}, Lcom/c/a/y;->d(Lcom/c/a/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {v5}, Lcom/c/a/y;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v8

    invoke-static {v4}, Lcom/c/a/ag;->n(Ljava/io/InputStream;)Z

    move-result v9

    invoke-virtual {v4, v6, v7}, Lcom/c/a/n;->Q(J)V

    if-eqz v9, :cond_10

    invoke-static {v4}, Lcom/c/a/ag;->i(Ljava/io/InputStream;)[B

    move-result-object v4

    if-eqz v8, :cond_2

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v2, Lcom/c/a/w;->bOG:I

    iget v7, v2, Lcom/c/a/w;->bOH:I

    invoke-static {v6, v7, v5, v2}, Lcom/c/a/y;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/c/a/w;)V

    :cond_2
    const/4 v2, 0x0

    array-length v6, v4

    invoke-static {v4, v2, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_3
    invoke-static {v3}, Lcom/c/a/ag;->m(Ljava/io/InputStream;)V

    :cond_4
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v3, v3, Lcom/c/a/t;->bOj:Z

    if-eqz v3, :cond_5

    const-string v3, "Hunter"

    const-string v4, "decoded"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    invoke-virtual {v5}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bMZ:Lcom/c/a/aa;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/c/a/aa;->a(Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    invoke-virtual {v3}, Lcom/c/a/w;->Ax()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/c/a/w;->Ay()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_6
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/c/a/c;->bNg:I

    if-eqz v3, :cond_0

    :cond_7
    sget-object v12, Lcom/c/a/c;->bMS:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    invoke-virtual {v3}, Lcom/c/a/w;->Ax()Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/c/a/c;->bNg:I

    if-eqz v3, :cond_d

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/c/a/c;->bNg:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-boolean v14, v5, Lcom/c/a/w;->bOK:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Lcom/c/a/w;->Ax()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget v15, v5, Lcom/c/a/w;->bOG:I

    iget v0, v5, Lcom/c/a/w;->bOH:I

    move/from16 v16, v0

    iget v6, v5, Lcom/c/a/w;->bOL:F

    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-eqz v10, :cond_9

    iget-boolean v10, v5, Lcom/c/a/w;->bOO:Z

    if-eqz v10, :cond_13

    iget v10, v5, Lcom/c/a/w;->bOM:F

    iget v11, v5, Lcom/c/a/w;->bON:F

    invoke-virtual {v7, v6, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_9
    :goto_3
    iget-boolean v6, v5, Lcom/c/a/w;->bOI:Z

    if-eqz v6, :cond_15

    int-to-float v5, v15

    int-to-float v6, v9

    div-float v11, v5, v6

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v8

    div-float v10, v5, v6

    cmpl-float v5, v11, v10

    if-lez v5, :cond_14

    int-to-float v4, v8

    div-float v5, v10, v11

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v6, v4

    sub-int v4, v8, v6

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v10, v6

    div-float v10, v5, v10

    move v5, v9

    :goto_4
    move/from16 v0, v16

    invoke-static {v14, v9, v8, v15, v0}, Lcom/c/a/c;->a(ZIIII)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_a
    :goto_5
    if-eqz v13, :cond_b

    int-to-float v8, v13

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_b
    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v3

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v3, v3, Lcom/c/a/t;->bOj:Z

    if-eqz v3, :cond_d

    const-string v3, "Hunter"

    const-string v4, "transformed"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    invoke-virtual {v5}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    invoke-virtual {v3}, Lcom/c/a/w;->Ay()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    iget-object v3, v3, Lcom/c/a/w;->bOF:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/c/a/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v3, v3, Lcom/c/a/t;->bOj:Z

    if-eqz v3, :cond_e

    const-string v3, "Hunter"

    const-string v4, "transformed"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    invoke-virtual {v5}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from custom transformations"

    invoke-static {v3, v4, v5, v6}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/c;->bMZ:Lcom/c/a/aa;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Lcom/c/a/aa;->a(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/c/a/c;->bMK:I

    goto/16 :goto_1

    :cond_10
    if-eqz v8, :cond_11

    const/4 v8, 0x0

    :try_start_2
    invoke-static {v4, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v8, v2, Lcom/c/a/w;->bOG:I

    iget v9, v2, Lcom/c/a/w;->bOH:I

    invoke-static {v8, v9, v5, v2}, Lcom/c/a/y;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/c/a/w;)V

    invoke-virtual {v4, v6, v7}, Lcom/c/a/n;->Q(J)V

    :cond_11
    const/4 v2, 0x0

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string v4, "Failed to decode stream."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v3}, Lcom/c/a/ag;->m(Ljava/io/InputStream;)V

    throw v2

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_13
    :try_start_3
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_14
    int-to-float v3, v9

    div-float v5, v11, v10

    mul-float/2addr v3, v5

    float-to-double v0, v3

    move-wide/from16 v18, v0

    :try_start_4
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v5, v0

    sub-int v3, v9, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v15

    int-to-float v11, v5

    div-float v11, v6, v11

    move v6, v8

    goto/16 :goto_4

    :cond_15
    iget-boolean v5, v5, Lcom/c/a/w;->bOJ:Z

    if-eqz v5, :cond_18

    int-to-float v5, v15

    int-to-float v6, v9

    div-float/2addr v5, v6

    move/from16 v0, v16

    int-to-float v6, v0

    int-to-float v10, v8

    div-float/2addr v6, v10

    cmpg-float v10, v5, v6

    if-gez v10, :cond_17

    :goto_6
    move/from16 v0, v16

    invoke-static {v14, v9, v8, v15, v0}, Lcom/c/a/c;->a(ZIIII)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v7, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_16
    move v6, v8

    move v5, v9

    goto/16 :goto_5

    :cond_17
    move v5, v6

    goto :goto_6

    :cond_18
    if-nez v15, :cond_19

    if-eqz v16, :cond_1b

    :cond_19
    if-ne v15, v9, :cond_1a

    move/from16 v0, v16

    if-eq v0, v8, :cond_1b

    :cond_1a
    if-eqz v15, :cond_1c

    int-to-float v5, v15

    int-to-float v6, v9

    div-float/2addr v5, v6

    move v6, v5

    :goto_7
    if-eqz v16, :cond_1d

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v10, v8

    div-float/2addr v5, v10

    :goto_8
    move/from16 v0, v16

    invoke-static {v14, v9, v8, v15, v0}, Lcom/c/a/c;->a(ZIIII)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Matrix;->preScale(FF)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1b
    move v6, v8

    move v5, v9

    goto/16 :goto_5

    :cond_1c
    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v8

    div-float/2addr v5, v6

    move v6, v5

    goto :goto_7

    :cond_1d
    int-to-float v5, v15

    int-to-float v10, v9

    div-float/2addr v5, v10

    goto :goto_8
.end method

.method private static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/a/ae;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move-object v2, p1

    :goto_0
    if-ge v3, v4, :cond_4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/ae;

    :try_start_0
    invoke-interface {v0, v2}, Lcom/c/a/ae;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Transformation "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/c/a/ae;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/ae;

    invoke-interface {v0}, Lcom/c/a/ae;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/c/a/t;->bNY:Landroid/os/Handler;

    new-instance v4, Lcom/c/a/c$3;

    invoke-direct {v4, v0, v2}, Lcom/c/a/c$3;-><init>(Lcom/c/a/ae;Ljava/lang/RuntimeException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    sget-object v0, Lcom/c/a/t;->bNY:Landroid/os/Handler;

    new-instance v3, Lcom/c/a/c$4;

    invoke-direct {v3, v2}, Lcom/c/a/c$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    goto :goto_2

    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v2, Lcom/c/a/t;->bNY:Landroid/os/Handler;

    new-instance v3, Lcom/c/a/c$5;

    invoke-direct {v3, v0}, Lcom/c/a/c$5;-><init>(Lcom/c/a/ae;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    goto :goto_2

    :cond_2
    if-eq p1, v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/c/a/t;->bNY:Landroid/os/Handler;

    new-instance v3, Lcom/c/a/c$6;

    invoke-direct {v3, v0}, Lcom/c/a/c$6;-><init>(Lcom/c/a/ae;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v2, p1

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method static a(Lcom/c/a/t;Lcom/c/a/i;Lcom/c/a/d;Lcom/c/a/aa;Lcom/c/a/a;)Lcom/c/a/c;
    .locals 7

    iget-object v1, p4, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    iget-object v2, p0, Lcom/c/a/t;->bOd:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/c/a/y;

    invoke-virtual {v6, v1}, Lcom/c/a/y;->a(Lcom/c/a/w;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lcom/c/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/c/a/c;-><init>(Lcom/c/a/t;Lcom/c/a/i;Lcom/c/a/d;Lcom/c/a/aa;Lcom/c/a/a;Lcom/c/a/y;)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/c/a/c;

    sget-object v6, Lcom/c/a/c;->bMV:Lcom/c/a/y;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/c/a/c;-><init>(Lcom/c/a/t;Lcom/c/a/i;Lcom/c/a/d;Lcom/c/a/aa;Lcom/c/a/a;Lcom/c/a/y;)V

    goto :goto_1
.end method

.method private static a(ZIIII)Z
    .locals 1

    if-eqz p0, :cond_0

    if-gt p1, p3, :cond_0

    if-le p2, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/c/a/a;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    iget v0, v0, Lcom/c/a/w;->bNi:I

    iget v3, p0, Lcom/c/a/c;->bNi:I

    if-ne v0, v3, :cond_6

    sget v3, Lcom/c/a/t$e;->bOs:I

    iget-object v0, p0, Lcom/c/a/c;->bNc:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/c;->bNc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    iget-object v1, v1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    iget v1, v1, Lcom/c/a/w;->bNi:I

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/c/a/c;->bNc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_5

    iget-object v0, p0, Lcom/c/a/c;->bNc:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    iget-object v0, v0, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    iget v0, v0, Lcom/c/a/w;->bNi:I

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v1, -0x1

    if-le v4, v5, :cond_8

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/c/a/c;->bNc:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/c/a/c;->bNc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    iput v1, p0, Lcom/c/a/c;->bNi:I

    :cond_6
    iget-object v0, p0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v0, v0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_7

    const-string v0, "Hunter"

    const-string v1, "removed"

    iget-object v2, p1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from "

    invoke-static {p0, v3}, Lcom/c/a/ag;->a(Lcom/c/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v1, v3

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_0
.end method

.method final cancel()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/c/a/c;->bNc:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/c/a/c;->bNc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/c/a/c;->bNe:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/c/a/c;->bNe:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/c/a/c;->bNe:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/c;->bNe:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 28

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bNa:Lcom/c/a/w;

    iget-object v3, v2, Lcom/c/a/w;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_0
    sget-object v2, Lcom/c/a/c;->bMT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    const/16 v4, 0x8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v2, v2, Lcom/c/a/t;->bOj:Z

    if-eqz v2, :cond_0

    const-string v2, "Hunter"

    const-string v3, "executing"

    invoke-static/range {p0 .. p0}, Lcom/c/a/ag;->f(Lcom/c/a/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/c/a/c;->As()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/c/a/c;->bNd:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bNd:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMX:Lcom/c/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/c/a/i;->b(Lcom/c/a/c;)V
    :try_end_0
    .catch Lcom/c/a/j$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/c/a/r$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget v2, v2, Lcom/c/a/w;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMX:Lcom/c/a/i;

    iget-object v3, v2, Lcom/c/a/i;->handler:Landroid/os/Handler;

    iget-object v2, v2, Lcom/c/a/i;->handler:Landroid/os/Handler;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lcom/c/a/j$b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/c/a/r$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    iget-boolean v3, v2, Lcom/c/a/j$b;->bNF:Z

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/c/a/j$b;->responseCode:I

    const/16 v4, 0x1f8

    if-eq v3, v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/c/a/c;->awX:Ljava/lang/Exception;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMX:Lcom/c/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/c/a/i;->b(Lcom/c/a/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/c/a/c;->awX:Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMX:Lcom/c/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/c/a/i;->a(Lcom/c/a/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/c/a/c;->awX:Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMX:Lcom/c/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/c/a/i;->a(Lcom/c/a/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_5
    new-instance v27, Ljava/io/StringWriter;

    invoke-direct/range {v27 .. v27}, Ljava/io/StringWriter;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/c/a/c;->bMZ:Lcom/c/a/aa;

    move-object/from16 v24, v0

    new-instance v3, Lcom/c/a/ab;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/c/a/aa;->bMY:Lcom/c/a/d;

    invoke-interface {v4}, Lcom/c/a/d;->maxSize()I

    move-result v4

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/c/a/aa;->bMY:Lcom/c/a/d;

    invoke-interface {v5}, Lcom/c/a/d;->size()I

    move-result v5

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/c/a/aa;->bOY:J

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/c/a/aa;->bOZ:J

    move-object/from16 v0, v24

    iget-wide v10, v0, Lcom/c/a/aa;->bPa:J

    move-object/from16 v0, v24

    iget-wide v12, v0, Lcom/c/a/aa;->bPb:J

    move-object/from16 v0, v24

    iget-wide v14, v0, Lcom/c/a/aa;->bPc:J

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/c/a/aa;->bPd:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/c/a/aa;->bPe:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/c/a/aa;->bPf:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/c/a/aa;->bPg:I

    move/from16 v22, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/c/a/aa;->bPh:I

    move/from16 v23, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/c/a/aa;->bPi:I

    move/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-direct/range {v3 .. v26}, Lcom/c/a/ab;-><init>(IIJJJJJJJJIIIJ)V

    new-instance v4, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "===============BEGIN PICASSO STATS ==============="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "Memory Cache Stats"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  Max Cache Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/c/a/ab;->maxSize:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Cache Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/c/a/ab;->size:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Cache % Full: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/c/a/ab;->size:I

    int-to-float v5, v5

    iget v6, v3, Lcom/c/a/ab;->maxSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Cache Hits: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/c/a/ab;->bOY:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Cache Misses: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/c/a/ab;->bOZ:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "Network Stats"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  Download Count: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/c/a/ab;->bPg:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Total Download Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/c/a/ab;->bPa:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Average Download Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/c/a/ab;->bPd:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "Bitmap Stats"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  Total Bitmaps Decoded: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/c/a/ab;->bPh:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Total Bitmap Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/c/a/ab;->bPb:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Total Transformed Bitmaps: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/c/a/ab;->bPi:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Total Transformed Bitmap Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/c/a/ab;->bPc:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Average Bitmap Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/c/a/ab;->bPe:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Average Transformed Bitmap Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/c/a/ab;->bPf:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v3, "===============END PICASSO STATS ==============="

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v27 .. v27}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/c/a/c;->awX:Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMX:Lcom/c/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/c/a/i;->b(Lcom/c/a/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v2

    :try_start_6
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/c/a/c;->awX:Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/a/c;->bMX:Lcom/c/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/c/a/i;->b(Lcom/c/a/c;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Picasso-Idle"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method
