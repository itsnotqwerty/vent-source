.class public final Lcom/b/a/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/u$a;
    }
.end annotation


# static fields
.field private static final a:[C


# instance fields
.field final b:Ljava/lang/String;

.field private final bzR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bzS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/b/a/u;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(Lcom/b/a/u$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/u$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/u;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/u$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/u;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/u$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/u;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/u$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/u;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/b/a/u$a;->a()I

    move-result v0

    iput v0, p0, Lcom/b/a/u;->f:I

    iget-object v0, p1, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-static {v0}, Lcom/b/a/u;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/u;->bzR:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/u$a;->bzR:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/b/a/u$a;->bzR:Ljava/util/List;

    invoke-static {v0}, Lcom/b/a/u;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/b/a/u;->bzS:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/u$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/b/a/u$a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/b/a/u;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/b/a/u$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/u;->j:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private synthetic constructor <init>(Lcom/b/a/u$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/u;-><init>(Lcom/b/a/u$a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move p2, v0

    :cond_0
    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x25

    if-ne v0, v2, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-eqz p5, :cond_a

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_a

    :cond_1
    new-instance v3, Lb/c;

    invoke-direct {v3}, Lb/c;-><init>()V

    invoke-virtual {v3, p0, p1, v1}, Lb/c;->n(Ljava/lang/String;II)Lb/c;

    const/4 v0, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eqz p4, :cond_2

    const/16 v1, 0x9

    if-eq v4, v1, :cond_3

    const/16 v1, 0xa

    if-eq v4, v1, :cond_3

    const/16 v1, 0xc

    if-eq v4, v1, :cond_3

    const/16 v1, 0xd

    if-eq v4, v1, :cond_3

    :cond_2
    if-eqz p5, :cond_5

    const/16 v1, 0x2b

    if-ne v4, v1, :cond_5

    if-eqz p4, :cond_4

    const-string v1, "%20"

    :goto_2
    invoke-virtual {v3, v1}, Lb/c;->fl(Ljava/lang/String;)Lb/c;

    :cond_3
    :goto_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    :cond_4
    const-string v1, "%2B"

    goto :goto_2

    :cond_5
    const/16 v1, 0x20

    if-lt v4, v1, :cond_6

    const/16 v1, 0x7f

    if-ge v4, v1, :cond_6

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_6

    const/16 v1, 0x25

    if-ne v4, v1, :cond_8

    if-nez p4, :cond_8

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    :cond_7
    invoke-virtual {v0, v4}, Lb/c;->fE(I)Lb/c;

    :goto_4
    invoke-virtual {v0}, Lb/c;->xi()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lb/c;->KX()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Lb/c;->fF(I)Lb/c;

    sget-object v5, Lcom/b/a/u;->a:[C

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Lb/c;->fF(I)Lb/c;

    sget-object v5, Lcom/b/a/u;->a:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v5, v1

    invoke-virtual {v3, v1}, Lb/c;->fF(I)Lb/c;

    goto :goto_4

    :cond_8
    invoke-virtual {v3, v4}, Lb/c;->fE(I)Lb/c;

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lb/c;->Le()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_a
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v1, v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/b/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v4, :cond_1

    if-le v3, v1, :cond_2

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-lez v2, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static d(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/b/a/u;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dD(Ljava/lang/String;)I
    .locals 1

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    :goto_0
    return v0

    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static dJ(Ljava/lang/String;)Lcom/b/a/u;
    .locals 12

    new-instance v9, Lcom/b/a/u$a;

    invoke-direct {v9}, Lcom/b/a/u$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    add-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_3
    sub-int v0, v8, v2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_6

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_6

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "https"

    iput-object v0, v9, Lcom/b/a/u$a;->a:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x6

    :goto_5
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v4, v0

    :goto_6
    if-ge v4, v8, :cond_e

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_e

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :sswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    move v8, v2

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v2, 0x1

    :goto_7
    if-ge v0, v8, :cond_a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-lt v1, v3, :cond_7

    const/16 v3, 0x7a

    if-le v1, v3, :cond_9

    :cond_7
    const/16 v3, 0x41

    if-lt v1, v3, :cond_8

    const/16 v3, 0x5a

    if-le v1, v3, :cond_9

    :cond_8
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_9

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_9

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_9

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_2

    const/4 v0, -0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, -0x1

    goto :goto_4

    :cond_b
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "http"

    iput-object v0, v9, Lcom/b/a/u$a;->a:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x5

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_8

    :cond_e
    add-int/2addr v1, v0

    move v6, v2

    move v7, v3

    :goto_9
    const-string v0, "@/\\?#"

    invoke-static {p0, v1, v8, v0}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    if-eq v10, v8, :cond_f

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_a
    sparse-switch v0, :sswitch_data_2

    goto :goto_9

    :sswitch_2
    invoke-static {p0, v1, v10}, Lcom/b/a/u$a;->g(Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v10, :cond_13

    invoke-static {p0, v1, v0}, Lcom/b/a/u$a;->h(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/b/a/u$a;->d:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v10}, Lcom/b/a/u$a;->i(Ljava/lang/String;II)I

    move-result v0

    iput v0, v9, Lcom/b/a/u$a;->bpD:I

    iget v0, v9, Lcom/b/a/u$a;->bpD:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    const/4 v0, -0x1

    goto :goto_a

    :sswitch_3
    if-nez v6, :cond_12

    const-string v0, ":"

    invoke-static {p0, v1, v10, v0}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/b/a/u$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    iput-object v0, v9, Lcom/b/a/u$a;->b:Ljava/lang/String;

    if-eq v2, v10, :cond_11

    const/4 v6, 0x1

    add-int/lit8 v1, v2, 0x1

    const-string v3, " \"\':;<=>@[]\\^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v10

    invoke-static/range {v0 .. v5}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/b/a/u$a;->c:Ljava/lang/String;

    :cond_11
    const/4 v2, 0x1

    move v0, v6

    :goto_b
    add-int/lit8 v1, v10, 0x1

    move v6, v0

    move v7, v2

    goto :goto_9

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/b/a/u$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v3, " \"\':;<=>@[]\\^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v10

    invoke-static/range {v0 .. v5}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/b/a/u$a;->c:Ljava/lang/String;

    move v0, v6

    move v2, v7

    goto :goto_b

    :cond_13
    invoke-static {p0, v1, v0}, Lcom/b/a/u$a;->h(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/b/a/u$a;->d:Ljava/lang/String;

    iget-object v0, v9, Lcom/b/a/u$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/u;->dD(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/b/a/u$a;->bpD:I

    :cond_14
    iget-object v0, v9, Lcom/b/a/u$a;->d:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_15
    const-string v0, "?#"

    invoke-static {p0, v10, v8, v0}, Lcom/b/a/u;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    invoke-virtual {v9, p0, v10, v0}, Lcom/b/a/u$a;->f(Ljava/lang/String;II)V

    if-ge v0, v8, :cond_19

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_19

    const-string v1, "#"

    invoke-static {p0, v0, v8, v1}, Lcom/b/a/u;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/u;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/b/a/u$a;->bzR:Ljava/util/List;

    :goto_c
    if-ge v2, v8, :cond_16

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_16

    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v8

    invoke-static/range {v0 .. v5}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/b/a/u$a;->h:Ljava/lang/String;

    :cond_16
    iget-object v0, v9, Lcom/b/a/u$a;->a:Ljava/lang/String;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v0, v9, Lcom/b/a/u$a;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/b/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Lcom/b/a/u;-><init>(Lcom/b/a/u$a;B)V

    goto/16 :goto_8

    :cond_19
    move v2, v0

    goto :goto_c

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1 -> :sswitch_2
        0x23 -> :sswitch_2
        0x2f -> :sswitch_2
        0x3f -> :sswitch_2
        0x40 -> :sswitch_3
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method static e(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x25

    const/4 v5, -0x1

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_2

    new-instance v1, Lb/c;

    invoke-direct {v1}, Lb/c;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lb/c;->n(Ljava/lang/String;II)Lb/c;

    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    if-ne v2, v6, :cond_0

    add-int/lit8 v3, v0, 0x2

    if-ge v3, p2, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/b/a/u;->d(C)I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/b/a/u;->d(C)I

    move-result v4

    if-eq v3, v5, :cond_0

    if-eq v4, v5, :cond_0

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lb/c;->fF(I)Lb/c;

    add-int/lit8 v0, v0, 0x2

    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Lb/c;->fE(I)Lb/c;

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lb/c;->Le()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static f(Ljava/net/URL;)Lcom/b/a/u;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/u;->dJ(Ljava/lang/String;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final Ad()Ljava/net/URI;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/b/a/u;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not valid as a java.net.URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/u;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/b/a/u;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/b/a/u;

    iget-object v0, p1, Lcom/b/a/u;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/u;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/u;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final wC()Ljava/net/URL;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/b/a/u;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
