.class public final Lcom/b/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/g$a;
    }
.end annotation


# static fields
.field public static final bGb:Lcom/b/a/g;

.field public static final bGc:Lcom/b/a/g;


# instance fields
.field public final bCG:I

.field public final bEN:I

.field public final bGd:Z

.field private final bqZ:Z

.field c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field private final g:I

.field public final h:Z

.field public final i:Z

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/32 v4, 0x7fffffff

    const/4 v2, 0x1

    new-instance v0, Lcom/b/a/g$a;

    invoke-direct {v0}, Lcom/b/a/g$a;-><init>()V

    iput-boolean v2, v0, Lcom/b/a/g$a;->a:Z

    invoke-virtual {v0}, Lcom/b/a/g$a;->zq()Lcom/b/a/g;

    move-result-object v0

    sput-object v0, Lcom/b/a/g;->bGb:Lcom/b/a/g;

    new-instance v1, Lcom/b/a/g$a;

    invoke-direct {v1}, Lcom/b/a/g$a;-><init>()V

    iput-boolean v2, v1, Lcom/b/a/g$a;->f:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, v1, Lcom/b/a/g$a;->d:I

    invoke-virtual {v1}, Lcom/b/a/g$a;->zq()Lcom/b/a/g;

    move-result-object v0

    sput-object v0, Lcom/b/a/g;->bGc:Lcom/b/a/g;

    return-void

    :cond_0
    long-to-int v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Lcom/b/a/g$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/b/a/g$a;->a:Z

    iput-boolean v0, p0, Lcom/b/a/g;->d:Z

    iget-boolean v0, p1, Lcom/b/a/g$a;->b:Z

    iput-boolean v0, p0, Lcom/b/a/g;->e:Z

    iget v0, p1, Lcom/b/a/g$a;->c:I

    iput v0, p0, Lcom/b/a/g;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/g;->g:I

    iput-boolean v1, p0, Lcom/b/a/g;->h:Z

    iput-boolean v1, p0, Lcom/b/a/g;->i:Z

    iput-boolean v1, p0, Lcom/b/a/g;->bGd:Z

    iget v0, p1, Lcom/b/a/g$a;->d:I

    iput v0, p0, Lcom/b/a/g;->bCG:I

    iget v0, p1, Lcom/b/a/g$a;->bpD:I

    iput v0, p0, Lcom/b/a/g;->bEN:I

    iget-boolean v0, p1, Lcom/b/a/g$a;->f:Z

    iput-boolean v0, p0, Lcom/b/a/g;->m:Z

    iget-boolean v0, p1, Lcom/b/a/g$a;->g:Z

    iput-boolean v0, p0, Lcom/b/a/g;->bqZ:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/g$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/g;-><init>(Lcom/b/a/g$a;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/b/a/g;->d:Z

    iput-boolean p2, p0, Lcom/b/a/g;->e:Z

    iput p3, p0, Lcom/b/a/g;->f:I

    iput p4, p0, Lcom/b/a/g;->g:I

    iput-boolean p5, p0, Lcom/b/a/g;->h:Z

    iput-boolean p6, p0, Lcom/b/a/g;->i:Z

    iput-boolean p7, p0, Lcom/b/a/g;->bGd:Z

    iput p8, p0, Lcom/b/a/g;->bCG:I

    iput p9, p0, Lcom/b/a/g;->bEN:I

    iput-boolean p10, p0, Lcom/b/a/g;->m:Z

    iput-boolean p11, p0, Lcom/b/a/g;->bqZ:Z

    iput-object p12, p0, Lcom/b/a/g;->c:Ljava/lang/String;

    return-void
.end method

.method public static b(Lcom/b/a/t;)Lcom/b/a/g;
    .locals 22

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/4 v2, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/t;->a:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    div-int/lit8 v19, v16, 0x2

    move/from16 v18, v14

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/b/a/t;->dV(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/b/a/t;->dW(I)Ljava/lang/String;

    move-result-object v14

    const-string v17, "Cache-Control"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    if-eqz v2, :cond_1

    const/4 v15, 0x0

    :goto_1
    const/16 v16, 0x0

    move/from16 v17, v3

    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_11

    const-string v3, "=,;"

    move/from16 v0, v16

    invoke-static {v14, v0, v3}, Lcom/b/a/a/a/d;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v14, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-eq v3, v0, :cond_0

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v21, 0x2c

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v21, 0x3b

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/16 v16, 0x0

    :goto_3
    const-string v21, "no-cache"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v17, 0x1

    move/from16 v16, v3

    goto :goto_2

    :cond_1
    move-object v2, v14

    goto :goto_1

    :cond_2
    const-string v17, "Pragma"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-static {v14, v3}, Lcom/b/a/a/a/d;->f(Ljava/lang/String;I)I

    move-result v16

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x22

    move/from16 v0, v21

    if-ne v3, v0, :cond_4

    add-int/lit8 v3, v16, 0x1

    const-string v16, "\""

    move-object/from16 v0, v16

    invoke-static {v14, v3, v0}, Lcom/b/a/a/a/d;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v3, v21, 0x1

    goto :goto_3

    :cond_4
    const-string v3, ",;"

    move/from16 v0, v16

    invoke-static {v14, v0, v3}, Lcom/b/a/a/a/d;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v14, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    :cond_5
    const-string v21, "no-store"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    const/4 v4, 0x1

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_6
    const-string v21, "max-age"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/b/a/a/a/d;->g(Ljava/lang/String;I)I

    move-result v5

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_7
    const-string v21, "s-maxage"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/4 v6, -0x1

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/b/a/a/a/d;->g(Ljava/lang/String;I)I

    move-result v6

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_8
    const-string v21, "private"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/4 v7, 0x1

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_9
    const-string v21, "public"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/4 v8, 0x1

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_a
    const-string v21, "must-revalidate"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/4 v9, 0x1

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_b
    const-string v21, "max-stale"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    const v10, 0x7fffffff

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/b/a/a/a/d;->g(Ljava/lang/String;I)I

    move-result v10

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_c
    const-string v21, "min-fresh"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/4 v11, -0x1

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/b/a/a/a/d;->g(Ljava/lang/String;I)I

    move-result v11

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_d
    const-string v16, "only-if-cached"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/4 v12, 0x1

    move/from16 v16, v3

    goto/16 :goto_2

    :cond_e
    const-string v16, "no-transform"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/4 v13, 0x1

    :cond_f
    move/from16 v16, v3

    goto/16 :goto_2

    :cond_10
    move/from16 v17, v3

    :cond_11
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move/from16 v3, v17

    goto/16 :goto_0

    :cond_12
    if-nez v15, :cond_13

    const/4 v14, 0x0

    :goto_4
    new-instance v2, Lcom/b/a/g;

    invoke-direct/range {v2 .. v14}, Lcom/b/a/g;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v2

    :cond_13
    move-object v14, v2

    goto :goto_4
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/b/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/b/a/g;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/b/a/g;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/b/a/g;->f:I

    if-eq v1, v3, :cond_3

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/g;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/b/a/g;->g:I

    if-eq v1, v3, :cond_4

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/g;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lcom/b/a/g;->h:Z

    if-eqz v1, :cond_5

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lcom/b/a/g;->i:Z

    if-eqz v1, :cond_6

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Lcom/b/a/g;->bGd:Z

    if-eqz v1, :cond_7

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lcom/b/a/g;->bCG:I

    if-eq v1, v3, :cond_8

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/g;->bCG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Lcom/b/a/g;->bEN:I

    if-eq v1, v3, :cond_9

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/g;->bEN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Lcom/b/a/g;->m:Z

    if-eqz v1, :cond_a

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lcom/b/a/g;->bqZ:Z

    if-eqz v1, :cond_b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/b/a/g;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
