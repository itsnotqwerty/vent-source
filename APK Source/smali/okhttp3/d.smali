.class public final Lokhttp3/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/d$a;
    }
.end annotation


# static fields
.field public static final cWt:Lokhttp3/d;

.field public static final cWu:Lokhttp3/d;


# instance fields
.field headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final immutable:Z

.field public final isPrivate:Z

.field public final isPublic:Z

.field public final maxAgeSeconds:I

.field public final maxStaleSeconds:I

.field public final minFreshSeconds:I

.field public final mustRevalidate:Z

.field public final noCache:Z

.field public final noStore:Z

.field private final noTransform:Z

.field public final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/32 v4, 0x7fffffff

    const/4 v2, 0x1

    new-instance v0, Lokhttp3/d$a;

    invoke-direct {v0}, Lokhttp3/d$a;-><init>()V

    iput-boolean v2, v0, Lokhttp3/d$a;->noCache:Z

    invoke-virtual {v0}, Lokhttp3/d$a;->LZ()Lokhttp3/d;

    move-result-object v0

    sput-object v0, Lokhttp3/d;->cWt:Lokhttp3/d;

    new-instance v1, Lokhttp3/d$a;

    invoke-direct {v1}, Lokhttp3/d$a;-><init>()V

    iput-boolean v2, v1, Lokhttp3/d$a;->onlyIfCached:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, v1, Lokhttp3/d$a;->maxStaleSeconds:I

    invoke-virtual {v1}, Lokhttp3/d$a;->LZ()Lokhttp3/d;

    move-result-object v0

    sput-object v0, Lokhttp3/d;->cWu:Lokhttp3/d;

    return-void

    :cond_0
    long-to-int v0, v2

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/d$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp3/d$a;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/d;->noCache:Z

    iget-boolean v0, p1, Lokhttp3/d$a;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/d;->noStore:Z

    iget v0, p1, Lokhttp3/d$a;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/d;->maxAgeSeconds:I

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/d;->sMaxAgeSeconds:I

    iput-boolean v1, p0, Lokhttp3/d;->isPrivate:Z

    iput-boolean v1, p0, Lokhttp3/d;->isPublic:Z

    iput-boolean v1, p0, Lokhttp3/d;->mustRevalidate:Z

    iget v0, p1, Lokhttp3/d$a;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/d;->maxStaleSeconds:I

    iget v0, p1, Lokhttp3/d$a;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/d;->minFreshSeconds:I

    iget-boolean v0, p1, Lokhttp3/d$a;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/d;->onlyIfCached:Z

    iget-boolean v0, p1, Lokhttp3/d$a;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/d;->noTransform:Z

    iget-boolean v0, p1, Lokhttp3/d$a;->immutable:Z

    iput-boolean v0, p0, Lokhttp3/d;->immutable:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/d;->noCache:Z

    iput-boolean p2, p0, Lokhttp3/d;->noStore:Z

    iput p3, p0, Lokhttp3/d;->maxAgeSeconds:I

    iput p4, p0, Lokhttp3/d;->sMaxAgeSeconds:I

    iput-boolean p5, p0, Lokhttp3/d;->isPrivate:Z

    iput-boolean p6, p0, Lokhttp3/d;->isPublic:Z

    iput-boolean p7, p0, Lokhttp3/d;->mustRevalidate:Z

    iput p8, p0, Lokhttp3/d;->maxStaleSeconds:I

    iput p9, p0, Lokhttp3/d;->minFreshSeconds:I

    iput-boolean p10, p0, Lokhttp3/d;->onlyIfCached:Z

    iput-boolean p11, p0, Lokhttp3/d;->noTransform:Z

    iput-boolean p12, p0, Lokhttp3/d;->immutable:Z

    iput-object p13, p0, Lokhttp3/d;->headerValue:Ljava/lang/String;

    return-void
.end method

.method public static a(Lokhttp3/p;)Lokhttp3/d;
    .locals 23

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

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/4 v2, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    div-int/lit8 v20, v17, 0x2

    move/from16 v19, v15

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v15

    const-string v18, "Cache-Control"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    if-eqz v2, :cond_1

    const/16 v16, 0x0

    :goto_1
    const/16 v17, 0x0

    move/from16 v18, v3

    :goto_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    const-string v3, "=,;"

    move/from16 v0, v17

    invoke-static {v15, v0, v3}, Lokhttp3/internal/c/e;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v15, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v22, 0x2c

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v22, 0x3b

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/16 v17, 0x0

    :goto_3
    const-string v22, "no-cache"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v18, 0x1

    move/from16 v17, v3

    goto :goto_2

    :cond_1
    move-object v2, v15

    goto :goto_1

    :cond_2
    const-string v18, "Pragma"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-static {v15, v3}, Lokhttp3/internal/c/e;->skipWhitespace(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_4

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v22, 0x22

    move/from16 v0, v22

    if-ne v3, v0, :cond_4

    add-int/lit8 v3, v17, 0x1

    const-string v17, "\""

    move-object/from16 v0, v17

    invoke-static {v15, v3, v0}, Lokhttp3/internal/c/e;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v3, v22, 0x1

    goto :goto_3

    :cond_4
    const-string v3, ",;"

    move/from16 v0, v17

    invoke-static {v15, v0, v3}, Lokhttp3/internal/c/e;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v15, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    :cond_5
    const-string v22, "no-store"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/4 v4, 0x1

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_6
    const-string v22, "max-age"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lokhttp3/internal/c/e;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_7
    const-string v22, "s-maxage"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    const/4 v6, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lokhttp3/internal/c/e;->parseSeconds(Ljava/lang/String;I)I

    move-result v6

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_8
    const-string v22, "private"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    const/4 v7, 0x1

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_9
    const-string v22, "public"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    const/4 v8, 0x1

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_a
    const-string v22, "must-revalidate"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/4 v9, 0x1

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_b
    const-string v22, "max-stale"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    const v10, 0x7fffffff

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lokhttp3/internal/c/e;->parseSeconds(Ljava/lang/String;I)I

    move-result v10

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_c
    const-string v22, "min-fresh"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lokhttp3/internal/c/e;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_d
    const-string v17, "only-if-cached"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/4 v12, 0x1

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_e
    const-string v17, "no-transform"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/4 v13, 0x1

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_f
    const-string v17, "immutable"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v14, 0x1

    :cond_10
    move/from16 v17, v3

    goto/16 :goto_2

    :cond_11
    move/from16 v18, v3

    :cond_12
    add-int/lit8 v15, v19, 0x1

    move/from16 v19, v15

    move/from16 v3, v18

    goto/16 :goto_0

    :cond_13
    if-nez v16, :cond_14

    const/4 v15, 0x0

    :goto_4
    new-instance v2, Lokhttp3/d;

    invoke-direct/range {v2 .. v15}, Lokhttp3/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v2

    :cond_14
    move-object v15, v2

    goto :goto_4
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lokhttp3/d;->headerValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lokhttp3/d;->noCache:Z

    if-eqz v1, :cond_1

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lokhttp3/d;->noStore:Z

    if-eqz v1, :cond_2

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lokhttp3/d;->maxAgeSeconds:I

    if-eq v1, v3, :cond_3

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->maxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lokhttp3/d;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_4

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->sMaxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lokhttp3/d;->isPrivate:Z

    if-eqz v1, :cond_5

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lokhttp3/d;->isPublic:Z

    if-eqz v1, :cond_6

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Lokhttp3/d;->mustRevalidate:Z

    if-eqz v1, :cond_7

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lokhttp3/d;->maxStaleSeconds:I

    if-eq v1, v3, :cond_8

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->maxStaleSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Lokhttp3/d;->minFreshSeconds:I

    if-eq v1, v3, :cond_9

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->minFreshSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Lokhttp3/d;->onlyIfCached:Z

    if-eqz v1, :cond_a

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lokhttp3/d;->noTransform:Z

    if-eqz v1, :cond_b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-boolean v1, p0, Lokhttp3/d;->immutable:Z

    if-eqz v1, :cond_c

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_d

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lokhttp3/d;->headerValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
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
