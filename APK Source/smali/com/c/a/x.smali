.class public final Lcom/c/a/x;
.super Ljava/lang/Object;


# static fields
.field private static final bOQ:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final bMF:Lcom/c/a/t;

.field public bMI:Z

.field public bMJ:I

.field public bMK:I

.field public bML:I

.field public bMM:Landroid/graphics/drawable/Drawable;

.field public final bOR:Lcom/c/a/w$a;

.field public bOS:Z

.field public bOT:Z

.field public bOU:I

.field public bOV:Landroid/graphics/drawable/Drawable;

.field public tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/c/a/x;->bOQ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/x;->bOT:Z

    iput-object v1, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    new-instance v0, Lcom/c/a/w$a;

    invoke-direct {v0, v1, v1}, Lcom/c/a/w$a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    return-void
.end method

.method constructor <init>(Lcom/c/a/t;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/x;->bOT:Z

    iget-boolean v0, p1, Lcom/c/a/t;->shutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    new-instance v0, Lcom/c/a/w$a;

    iget-object v1, p1, Lcom/c/a/t;->bOh:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, v1}, Lcom/c/a/w$a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    return-void
.end method


# virtual methods
.method public final AA()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/c/a/x;->bOU:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    iget-object v0, v0, Lcom/c/a/t;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/c/a/x;->bOU:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/x;->bOV:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final B(F)Lcom/c/a/x;
    .locals 1

    iget-object v0, p0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    iput p1, v0, Lcom/c/a/w$a;->bOL:F

    return-object p0
.end method

.method public final R(J)Lcom/c/a/w;
    .locals 21

    sget-object v2, Lcom/c/a/x;->bOQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/c/a/w$a;->bOJ:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/c/a/w$a;->bOI:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Center crop and center inside can not be used together."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/c/a/w$a;->bOI:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/c/a/w$a;->bOG:I

    if-nez v2, :cond_1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/c/a/w$a;->bOH:I

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Center crop requires calling resize with positive width and height."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/c/a/w$a;->bOJ:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/c/a/w$a;->bOG:I

    if-nez v2, :cond_2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/c/a/w$a;->bOH:I

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Center inside requires calling resize with positive width and height."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, v17

    iget v2, v0, Lcom/c/a/w$a;->bNi:I

    if-nez v2, :cond_3

    sget v2, Lcom/c/a/t$e;->bOt:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/c/a/w$a;->bNi:I

    :cond_3
    new-instance v2, Lcom/c/a/w;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/c/a/w$a;->uri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/c/a/w$a;->resourceId:I

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/c/a/w$a;->bOE:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/c/a/w$a;->bOF:Ljava/util/List;

    move-object/from16 v0, v17

    iget v7, v0, Lcom/c/a/w$a;->bOG:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/c/a/w$a;->bOH:I

    move-object/from16 v0, v17

    iget-boolean v9, v0, Lcom/c/a/w$a;->bOI:Z

    move-object/from16 v0, v17

    iget-boolean v10, v0, Lcom/c/a/w$a;->bOJ:Z

    move-object/from16 v0, v17

    iget-boolean v11, v0, Lcom/c/a/w$a;->bOK:Z

    move-object/from16 v0, v17

    iget v12, v0, Lcom/c/a/w$a;->bOL:F

    move-object/from16 v0, v17

    iget v13, v0, Lcom/c/a/w$a;->bOM:F

    move-object/from16 v0, v17

    iget v14, v0, Lcom/c/a/w$a;->bON:F

    move-object/from16 v0, v17

    iget-boolean v15, v0, Lcom/c/a/w$a;->bOO:Z

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/c/a/w$a;->bOP:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/c/a/w$a;->bNi:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/c/a/w;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;IB)V

    move/from16 v0, v19

    iput v0, v2, Lcom/c/a/w;->id:I

    move-wide/from16 v0, p1

    iput-wide v0, v2, Lcom/c/a/w;->bOD:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    iget-boolean v3, v3, Lcom/c/a/t;->bOj:Z

    if-eqz v3, :cond_4

    const-string v4, "Main"

    const-string v5, "created"

    invoke-virtual {v2}, Lcom/c/a/w;->Av()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/c/a/w;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    iget-object v5, v4, Lcom/c/a/t;->bOb:Lcom/c/a/t$f;

    invoke-interface {v5, v2}, Lcom/c/a/t$f;->c(Lcom/c/a/w;)Lcom/c/a/w;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Request transformer "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/c/a/t;->bOb:Lcom/c/a/t$f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    if-eq v5, v2, :cond_6

    move/from16 v0, v19

    iput v0, v5, Lcom/c/a/w;->id:I

    move-wide/from16 v0, p1

    iput-wide v0, v5, Lcom/c/a/w;->bOD:J

    if-eqz v3, :cond_6

    const-string v2, "Main"

    const-string v3, "changed"

    invoke-virtual {v5}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "into "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v5
.end method

.method public final a(Lcom/c/a/ae;)Lcom/c/a/x;
    .locals 3

    iget-object v0, p0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/c/a/ae;->key()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/c/a/w$a;->bOF:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/c/a/w$a;->bOF:Ljava/util/List;

    :cond_2
    iget-object v0, v0, Lcom/c/a/w$a;->bOF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Landroid/widget/ImageView;Lcom/c/a/e;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/c/a/ag;->AC()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    invoke-virtual {v0}, Lcom/c/a/w$a;->Az()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    invoke-virtual {v0, p1}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/c/a/x;->bOT:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/c/a/x;->AA()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/c/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/c/a/x;->bOS:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    iget v1, v0, Lcom/c/a/w$a;->bOG:I

    if-nez v1, :cond_3

    iget v0, v0, Lcom/c/a/w$a;->bOH:I

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_6

    if-nez v1, :cond_8

    :cond_6
    iget-boolean v0, p0, Lcom/c/a/x;->bOT:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/c/a/x;->AA()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/c/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v0, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    new-instance v1, Lcom/c/a/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/c/a/h;-><init>(Lcom/c/a/x;Landroid/widget/ImageView;Lcom/c/a/e;)V

    iget-object v0, v0, Lcom/c/a/t;->bOf:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    invoke-virtual {v4, v0, v1}, Lcom/c/a/w$a;->aD(II)Lcom/c/a/w$a;

    :cond_9
    invoke-virtual {p0, v2, v3}, Lcom/c/a/x;->R(J)Lcom/c/a/w;

    move-result-object v10

    invoke-static {v10}, Lcom/c/a/ag;->e(Lcom/c/a/w;)Ljava/lang/String;

    move-result-object v8

    iget v0, p0, Lcom/c/a/x;->bMJ:I

    invoke-static {v0}, Lcom/c/a/p;->dY(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    invoke-virtual {v0, v8}, Lcom/c/a/t;->dP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    invoke-virtual {v0, p1}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    iget-object v1, v0, Lcom/c/a/t;->context:Landroid/content/Context;

    sget-object v3, Lcom/c/a/t$d;->bOn:Lcom/c/a/t$d;

    iget-boolean v4, p0, Lcom/c/a/x;->bMI:Z

    iget-object v0, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    iget-boolean v5, v0, Lcom/c/a/t;->bOi:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/c/a/u;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/c/a/t$d;ZZ)V

    iget-object v0, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    iget-boolean v0, v0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_a

    const-string v0, "Main"

    const-string v1, "completed"

    invoke-virtual {v10}, Lcom/c/a/w;->Av()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/c/a/t$d;->bOn:Lcom/c/a/t$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/c/a/e;->onSuccess()V

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, p0, Lcom/c/a/x;->bOT:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/c/a/x;->AA()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/c/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    new-instance v0, Lcom/c/a/l;

    iget-object v1, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    iget v4, p0, Lcom/c/a/x;->bMJ:I

    iget v5, p0, Lcom/c/a/x;->bMK:I

    iget v6, p0, Lcom/c/a/x;->bML:I

    iget-object v7, p0, Lcom/c/a/x;->bMM:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/c/a/x;->tag:Ljava/lang/Object;

    iget-boolean v11, p0, Lcom/c/a/x;->bMI:Z

    move-object v2, p1

    move-object v3, v10

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Lcom/c/a/l;-><init>(Lcom/c/a/t;Landroid/widget/ImageView;Lcom/c/a/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/c/a/e;Z)V

    iget-object v1, p0, Lcom/c/a/x;->bMF:Lcom/c/a/t;

    invoke-virtual {v1, v0}, Lcom/c/a/t;->c(Lcom/c/a/a;)V

    goto/16 :goto_0
.end method

.method public final aE(II)Lcom/c/a/x;
    .locals 1

    iget-object v0, p0, Lcom/c/a/x;->bOR:Lcom/c/a/w$a;

    invoke-virtual {v0, p1, p2}, Lcom/c/a/w$a;->aD(II)Lcom/c/a/w$a;

    return-object p0
.end method

.method public final al(Ljava/lang/Object;)Lcom/c/a/x;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/x;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/c/a/x;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public final ee(I)Lcom/c/a/x;
    .locals 2

    iget-boolean v0, p0, Lcom/c/a/x;->bOT:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/c/a/x;->bOV:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/c/a/x;->bOU:I

    return-object p0
.end method
