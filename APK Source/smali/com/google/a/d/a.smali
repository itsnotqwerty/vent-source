.class public Lcom/google/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final bkd:[C


# instance fields
.field public bgE:Z

.field private bia:I

.field private bib:[Ljava/lang/String;

.field private bic:[I

.field private final bke:[C

.field private bkf:I

.field private bkg:I

.field bkh:I

.field private bki:J

.field private bkj:I

.field private bkk:Ljava/lang/String;

.field private bkl:[I

.field private final in:Ljava/io/Reader;

.field private limit:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/d/a;->bkd:[C

    new-instance v0, Lcom/google/a/d/a$1;

    invoke-direct {v0}, Lcom/google/a/d/a$1;-><init>()V

    sput-object v0, Lcom/google/a/b/f;->bhv:Lcom/google/a/b/f;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    const/16 v3, 0x20

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/a/d/a;->bgE:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/a/d/a;->bke:[C

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    iput v1, p0, Lcom/google/a/d/a;->limit:I

    iput v1, p0, Lcom/google/a/d/a;->bkf:I

    iput v1, p0, Lcom/google/a/d/a;->bkg:I

    iput v1, p0, Lcom/google/a/d/a;->bkh:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iput v1, p0, Lcom/google/a/d/a;->bia:I

    iget-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/d/a;->bia:I

    const/4 v2, 0x6

    aput v2, v0, v1

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/d/a;->bib:[Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iput-object p1, p0, Lcom/google/a/d/a;->in:Ljava/io/Reader;

    return-void
.end method

.method private a(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private aH(Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/a/d/a;->bke:[C

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iget v0, p0, Lcom/google/a/d/a;->limit:I

    :goto_0
    if-ne v1, v0, :cond_0

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iget v0, p0, Lcom/google/a/d/a;->limit:I

    :cond_0
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v5, v1

    if-ne v1, v8, :cond_1

    iget v1, p0, Lcom/google/a/d/a;->bkf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/d/a;->bkf:I

    iput v4, p0, Lcom/google/a/d/a;->bkg:I

    move v1, v4

    goto :goto_0

    :cond_1
    const/16 v6, 0x20

    if-eq v1, v6, :cond_d

    const/16 v6, 0xd

    if-eq v1, v6, :cond_d

    const/16 v6, 0x9

    if-eq v1, v6, :cond_d

    const/16 v6, 0x2f

    if-ne v1, v6, :cond_9

    iput v4, p0, Lcom/google/a/d/a;->pos:I

    if-ne v4, v0, :cond_2

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    iget v4, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/a/d/a;->pos:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    aget-char v0, v5, v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    goto :goto_1

    :sswitch_0
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    const-string v1, "*/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v0, v4

    iget v6, p0, Lcom/google/a/d/a;->limit:I

    if-le v0, v6, :cond_3

    invoke-direct {p0, v4}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/google/a/d/a;->bke:[C

    iget v6, p0, Lcom/google/a/d/a;->pos:I

    aget-char v0, v0, v6

    if-ne v0, v8, :cond_5

    iget v0, p0, Lcom/google/a/d/a;->bkf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->bkf:I

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->bkg:I

    :cond_4
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_6

    iget-object v6, p0, Lcom/google/a/d/a;->bke:[C

    iget v7, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v7, v0

    aget-char v6, v6, v7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_4
    if-nez v0, :cond_8

    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/google/a/d/a;->limit:I

    goto/16 :goto_0

    :sswitch_1
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    invoke-direct {p0}, Lcom/google/a/d/a;->vO()V

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iget v0, p0, Lcom/google/a/d/a;->limit:I

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x23

    if-ne v1, v0, :cond_a

    iput v4, p0, Lcom/google/a/d/a;->pos:I

    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    invoke-direct {p0}, Lcom/google/a/d/a;->vO()V

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iget v0, p0, Lcom/google/a/d/a;->limit:I

    goto/16 :goto_0

    :cond_a
    iput v4, p0, Lcom/google/a/d/a;->pos:I

    move v0, v1

    goto/16 :goto_1

    :cond_b
    if-eqz p1, :cond_c

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "End of input"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_d
    move v1, v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private b(C)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x10

    iget-object v4, p0, Lcom/google/a/d/a;->bke:[C

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/a/d/a;->pos:I

    iget v5, p0, Lcom/google/a/d/a;->limit:I

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_6

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v4, v1

    if-ne v1, p1, :cond_2

    iput v3, p0, Lcom/google/a/d/a;->pos:I

    sub-int v1, v3, v2

    add-int/lit8 v1, v1, -0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v0, v4, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/16 v6, 0x5c

    if-ne v1, v6, :cond_4

    iput v3, p0, Lcom/google/a/d/a;->pos:I

    sub-int v1, v3, v2

    add-int/lit8 v1, v1, -0x1

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v3, v0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_3
    invoke-virtual {v0, v4, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/a/d/a;->vP()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v6, 0xa

    if-ne v1, v6, :cond_5

    iget v1, p0, Lcom/google/a/d/a;->bkf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/d/a;->bkf:I

    iput v3, p0, Lcom/google/a/d/a;->bkg:I

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    sub-int v0, v1, v2

    mul-int/lit8 v3, v0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_7
    sub-int v3, v1, v2

    invoke-virtual {v0, v4, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/a/d/a;->dg(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private c(C)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/a/d/a;->bke:[C

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    iget v3, p0, Lcom/google/a/d/a;->limit:I

    :goto_1
    if-ge v0, v3, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v2, v0

    if-ne v0, p1, :cond_1

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    return-void

    :cond_1
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_2

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    invoke-direct {p0}, Lcom/google/a/d/a;->vP()C

    goto :goto_0

    :cond_2
    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/google/a/d/a;->bkf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->bkf:I

    iput v1, p0, Lcom/google/a/d/a;->bkg:I

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/google/a/d/a;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private df(I)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/a/d/a;->bia:I

    iget-object v1, p0, Lcom/google/a/d/a;->bkl:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/a/d/a;->bia:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/a/d/a;->bkl:[I

    iget v4, p0, Lcom/google/a/d/a;->bia:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/a/d/a;->bic:[I

    iget v4, p0, Lcom/google/a/d/a;->bia:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/a/d/a;->bib:[Ljava/lang/String;

    iget v4, p0, Lcom/google/a/d/a;->bia:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iput-object v1, p0, Lcom/google/a/d/a;->bic:[I

    iput-object v2, p0, Lcom/google/a/d/a;->bib:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/d/a;->bia:I

    aput p1, v0, v1

    return-void
.end method

.method private dg(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/a/d/a;->bke:[C

    iget v2, p0, Lcom/google/a/d/a;->bkg:I

    iget v3, p0, Lcom/google/a/d/a;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/a/d/a;->bkg:I

    iget v2, p0, Lcom/google/a/d/a;->limit:I

    iget v3, p0, Lcom/google/a/d/a;->pos:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/google/a/d/a;->limit:I

    iget v3, p0, Lcom/google/a/d/a;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/a/d/a;->limit:I

    iget v2, p0, Lcom/google/a/d/a;->pos:I

    iget v3, p0, Lcom/google/a/d/a;->limit:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput v0, p0, Lcom/google/a/d/a;->pos:I

    :cond_0
    iget-object v2, p0, Lcom/google/a/d/a;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/a/d/a;->limit:I

    array-length v4, v1

    iget v5, p0, Lcom/google/a/d/a;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v3, p0, Lcom/google/a/d/a;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/a/d/a;->limit:I

    iget v2, p0, Lcom/google/a/d/a;->bkf:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/a/d/a;->bkg:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/a/d/a;->limit:I

    if-lez v2, :cond_1

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/d/a;->pos:I

    iget v2, p0, Lcom/google/a/d/a;->bkg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/d/a;->bkg:I

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget v2, p0, Lcom/google/a/d/a;->limit:I

    if-lt v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iput v0, p0, Lcom/google/a/d/a;->limit:I

    goto :goto_0
.end method

.method private dq(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/a/d/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private vK()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/a/d/a;->bke:[C

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v2, "true"

    const-string v1, "TRUE"

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_8

    iget v6, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/a/d/a;->limit:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/a/d/a;->dg(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v0, v3

    :goto_2
    return v0

    :cond_1
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v2, "false"

    const-string v1, "FALSE"

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    :cond_4
    const-string v2, "null"

    const-string v1, "NULL"

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/google/a/d/a;->bke:[C

    iget v7, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/google/a/d/a;->limit:I

    if-lt v1, v2, :cond_9

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/google/a/d/a;->dg(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/google/a/d/a;->bke:[C

    iget v2, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/a/d/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    goto :goto_2

    :cond_a
    iget v1, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto :goto_2
.end method

.method private vL()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v11, p0, Lcom/google/a/d/a;->bke:[C

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iget v0, p0, Lcom/google/a/d/a;->limit:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    add-int v2, v1, v10

    if-ne v2, v0, :cond_1

    array-length v0, v11

    if-ne v10, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iget v0, p0, Lcom/google/a/d/a;->limit:I

    :cond_1
    add-int v2, v1, v10

    aget-char v2, v11, v2

    sparse-switch v2, :sswitch_data_0

    const/16 v8, 0x30

    if-lt v2, v8, :cond_2

    const/16 v8, 0x39

    if-le v2, v8, :cond_9

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_0
    if-nez v3, :cond_3

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v5, v3

    :goto_2
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v3, v2, :cond_4

    const/4 v2, 0x6

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x5

    if-ne v3, v2, :cond_5

    const/4 v2, 0x6

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x2

    if-eq v3, v2, :cond_6

    const/4 v2, 0x4

    if-ne v3, v2, :cond_7

    :cond_6
    const/4 v2, 0x5

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_8

    const/4 v2, 0x3

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    const/4 v8, 0x1

    if-eq v3, v8, :cond_a

    if-nez v3, :cond_b

    :cond_a
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    const/4 v2, 0x2

    goto :goto_2

    :cond_b
    const/4 v8, 0x2

    if-ne v3, v8, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_c

    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_d

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_e

    cmp-long v2, v8, v6

    if-gez v2, :cond_e

    :cond_d
    const/4 v2, 0x1

    :goto_3
    and-int/2addr v4, v2

    move v2, v3

    move-wide v6, v8

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    goto :goto_3

    :cond_f
    const/4 v2, 0x3

    if-ne v3, v2, :cond_10

    const/4 v2, 0x4

    goto :goto_2

    :cond_10
    const/4 v2, 0x5

    if-eq v3, v2, :cond_11

    const/4 v2, 0x6

    if-ne v3, v2, :cond_19

    :cond_11
    const/4 v2, 0x7

    goto :goto_2

    :cond_12
    const/4 v0, 0x2

    if-ne v3, v0, :cond_16

    if-eqz v4, :cond_16

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_13

    if-eqz v5, :cond_16

    :cond_13
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_14

    if-nez v5, :cond_16

    :cond_14
    if-eqz v5, :cond_15

    :goto_4
    iput-wide v6, p0, Lcom/google/a/d/a;->bki:J

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto/16 :goto_1

    :cond_15
    neg-long v6, v6

    goto :goto_4

    :cond_16
    const/4 v0, 0x2

    if-eq v3, v0, :cond_17

    const/4 v0, 0x4

    if-eq v3, v0, :cond_17

    const/4 v0, 0x7

    if-ne v3, v0, :cond_18

    :cond_17
    iput v10, p0, Lcom/google/a/d/a;->bkj:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto/16 :goto_1

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_19
    move v2, v3

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private vM()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/a/d/a;->limit:I

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/a/d/a;->bke:[C

    iget v4, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    :cond_0
    :goto_1
    :sswitch_1
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/a/d/a;->bke:[C

    iget v3, p0, Lcom/google/a/d/a;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_2
    iget v2, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/a/d/a;->bke:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->dg(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_3
    iget-object v3, p0, Lcom/google/a/d/a;->bke:[C

    iget v4, p0, Lcom/google/a/d/a;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/a/d/a;->dg(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/a/d/a;->bke:[C

    iget v3, p0, Lcom/google/a/d/a;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private vN()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/a/d/a;->bgE:Z

    if-nez v0, :cond_0

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private vO()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    iget v1, p0, Lcom/google/a/d/a;->limit:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/a/d/a;->bke:[C

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/d/a;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/a/d/a;->bkf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->bkf:I

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    iput v0, p0, Lcom/google/a/d/a;->bkg:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private vP()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    iget v1, p0, Lcom/google/a/d/a;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->bke:[C

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/d/a;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_0
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/a/d/a;->limit:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v2, v1, 0x4

    :goto_0
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/google/a/d/a;->bke:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-gt v3, v4, :cond_3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_1

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/a/d/a;->bke:[C

    iget v4, p0, Lcom/google/a/d/a;->pos:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v1, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    :goto_2
    :sswitch_1
    return v0

    :sswitch_2
    const/16 v0, 0x9

    goto :goto_2

    :sswitch_3
    const/16 v0, 0x8

    goto :goto_2

    :sswitch_4
    const/16 v0, 0xa

    goto :goto_2

    :sswitch_5
    const/16 v0, 0xd

    goto :goto_2

    :sswitch_6
    const/16 v0, 0xc

    goto :goto_2

    :sswitch_7
    iget v1, p0, Lcom/google/a/d/a;->bkf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/d/a;->bkf:I

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iput v1, p0, Lcom/google/a/d/a;->bkg:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_7
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_6
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->df(I)V

    iget-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    iput v2, p0, Lcom/google/a/d/a;->bkh:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->df(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->bia:I

    iget-object v0, p0, Lcom/google/a/d/a;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public endArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->bia:I

    iget-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->bia:I

    iget-object v0, p0, Lcom/google/a/d/a;->bib:[Ljava/lang/String;

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/a/d/a;->bkl:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/a/d/a;->bic:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/a/d/a;->bib:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/a/d/a;->bib:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v1

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v1, p0, Lcom/google/a/d/a;->bic:[I

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput v4, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/a/d/a;->bki:J

    long-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/a/d/a;->bke:[C

    iget v2, p0, Lcom/google/a/d/a;->pos:I

    iget v3, p0, Lcom/google/a/d/a;->bkj:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    iget v1, p0, Lcom/google/a/d/a;->bkj:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    :cond_2
    :goto_1
    iput v5, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/a/d/a;->bgE:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    new-instance v2, Lcom/google/a/d/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/a/d/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-eq v0, v2, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    goto :goto_2

    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/google/a/d/a;->vM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    goto :goto_1

    :cond_8
    if-eq v0, v5, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    iput v4, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v2, p0, Lcom/google/a/d/a;->bic:[I

    iget v3, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/a/d/a;->bki:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/google/a/d/a;->bki:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/a/d/a;->bki:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v6, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v1, p0, Lcom/google/a/d/a;->bic:[I

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/a/d/a;->bke:[C

    iget v2, p0, Lcom/google/a/d/a;->pos:I

    iget v3, p0, Lcom/google/a/d/a;->bkj:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    iget v1, p0, Lcom/google/a/d/a;->bkj:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq v0, v2, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    if-ne v0, v3, :cond_7

    :cond_4
    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/google/a/d/a;->vM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v1, p0, Lcom/google/a/d/a;->bic:[I

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x27

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/16 v0, 0x22

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    iput v6, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v1, p0, Lcom/google/a/d/a;->bic:[I

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_0
.end method

.method public nextLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput v6, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/a/d/a;->bki:J

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/a/d/a;->bke:[C

    iget v2, p0, Lcom/google/a/d/a;->pos:I

    iget v3, p0, Lcom/google/a/d/a;->bkj:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    iget v1, p0, Lcom/google/a/d/a;->bkj:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_7

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_6

    :cond_3
    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lcom/google/a/d/a;->vM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v2, p0, Lcom/google/a/d/a;->bic:[I

    iget v3, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_5

    const/16 v0, 0x27

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/16 v0, 0x22

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    iput v6, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v2, p0, Lcom/google/a/d/a;->bic:[I

    iget v3, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/a/d/a;->vM()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v1, p0, Lcom/google/a/d/a;->bib:[Ljava/lang/String;

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/a/d/a;->vM()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/a/d/a;->bkh:I

    iget-object v1, p0, Lcom/google/a/d/a;->bic:[I

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/a/d/a;->bkk:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/google/a/d/a;->bki:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/a/d/a;->bke:[C

    iget v2, p0, Lcom/google/a/d/a;->pos:I

    iget v3, p0, Lcom/google/a/d/a;->bkj:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iget v2, p0, Lcom/google/a/d/a;->bkj:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipValue()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    iget v2, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v2

    :cond_1
    if-ne v2, v6, :cond_3

    invoke-direct {p0, v5}, Lcom/google/a/d/a;->df(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    iput v1, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/d/a;->bic:[I

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/a/d/a;->bib:[Ljava/lang/String;

    iget v1, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    :cond_3
    if-ne v2, v5, :cond_4

    invoke-direct {p0, v6}, Lcom/google/a/d/a;->df(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    :cond_7
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/google/a/d/a;->limit:I

    if-ge v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/a/d/a;->bke:[C

    iget v4, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v4, v2

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    :sswitch_1
    iget v3, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/a/d/a;->pos:I

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/a/d/a;->pos:I

    invoke-direct {p0, v5}, Lcom/google/a/d/a;->dg(I)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_9
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    :cond_a
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/a/d/a;->c(C)V

    goto :goto_0

    :cond_b
    const/16 v3, 0x9

    if-eq v2, v3, :cond_c

    const/16 v3, 0xd

    if-ne v2, v3, :cond_d

    :cond_c
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/a/d/a;->c(C)V

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/a/d/a;->pos:I

    iget v3, p0, Lcom/google/a/d/a;->bkj:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/a/d/a;->pos:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final vJ()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x7

    const/4 v7, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iget v5, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v5, v5, -0x1

    aget v5, v0, v5

    if-ne v5, v3, :cond_2

    iget-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iget v6, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v0, v6

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/a/d/a;->aH(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    invoke-direct {p0}, Lcom/google/a/d/a;->vK()I

    move-result v0

    if-eqz v0, :cond_14

    :cond_1
    :goto_1
    return v0

    :cond_2
    if-ne v5, v2, :cond_3

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->aH(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_1
    iput v1, p0, Lcom/google/a/d/a;->bkh:I

    move v0, v1

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-eq v5, v0, :cond_4

    if-ne v5, v7, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iget v4, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v4, v4, -0x1

    aput v1, v0, v4

    if-ne v5, v7, :cond_5

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->aH(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_3
    iput v2, p0, Lcom/google/a/d/a;->bkh:I

    move v0, v2

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    :cond_5
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/google/a/d/a;->aH(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/a/d/a;->pos:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto :goto_1

    :sswitch_6
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto :goto_1

    :sswitch_8
    if-eq v5, v7, :cond_6

    iput v2, p0, Lcom/google/a/d/a;->bkh:I

    move v0, v2

    goto :goto_1

    :cond_6
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    if-ne v5, v1, :cond_a

    iget-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iget v6, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v0, v6

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->aH(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    iget v6, p0, Lcom/google/a/d/a;->limit:I

    if-lt v0, v6, :cond_9

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    iget-object v0, p0, Lcom/google/a/d/a;->bke:[C

    iget v6, p0, Lcom/google/a/d/a;->pos:I

    aget-char v0, v0, v6

    const/16 v6, 0x3e

    if-ne v0, v6, :cond_0

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x6

    if-ne v5, v0, :cond_e

    iget-boolean v0, p0, Lcom/google/a/d/a;->bgE:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->aH(Z)I

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    sget-object v6, Lcom/google/a/d/a;->bkd:[C

    array-length v6, v6

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/a/d/a;->limit:I

    if-le v0, v6, :cond_b

    sget-object v0, Lcom/google/a/d/a;->bkd:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dg(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_2
    sget-object v6, Lcom/google/a/d/a;->bkd:[C

    array-length v6, v6

    if-ge v0, v6, :cond_c

    iget-object v6, p0, Lcom/google/a/d/a;->bke:[C

    iget v7, p0, Lcom/google/a/d/a;->pos:I

    add-int/2addr v7, v0

    aget-char v6, v6, v7

    sget-object v7, Lcom/google/a/d/a;->bkd:[C

    aget-char v7, v7, v0

    if-ne v6, v7, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/google/a/d/a;->pos:I

    sget-object v6, Lcom/google/a/d/a;->bkd:[C

    array-length v6, v6

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    :cond_d
    iget-object v0, p0, Lcom/google/a/d/a;->bkl:[I

    iget v6, p0, Lcom/google/a/d/a;->bia:I

    add-int/lit8 v6, v6, -0x1

    aput v4, v0, v6

    goto/16 :goto_0

    :cond_e
    if-ne v5, v4, :cond_10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->aH(Z)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_f

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto/16 :goto_1

    :cond_f
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x8

    if-ne v5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_9
    if-ne v5, v3, :cond_11

    iput v1, p0, Lcom/google/a/d/a;->bkh:I

    move v0, v1

    goto/16 :goto_1

    :cond_11
    :sswitch_a
    if-eq v5, v3, :cond_12

    if-ne v5, v2, :cond_13

    :cond_12
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    iget v0, p0, Lcom/google/a/d/a;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->pos:I

    iput v4, p0, Lcom/google/a/d/a;->bkh:I

    move v0, v4

    goto/16 :goto_1

    :cond_13
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_b
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto/16 :goto_1

    :sswitch_c
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto/16 :goto_1

    :sswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto/16 :goto_1

    :sswitch_e
    iput v3, p0, Lcom/google/a/d/a;->bkh:I

    move v0, v3

    goto/16 :goto_1

    :cond_14
    invoke-direct {p0}, Lcom/google/a/d/a;->vL()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/a/d/a;->bke:[C

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->dq(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    invoke-direct {p0}, Lcom/google/a/d/a;->vN()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/a/d/a;->bkh:I

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public vv()Lcom/google/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/a/d/a;->bkh:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/a;->vJ()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/a/d/b;->bko:Lcom/google/a/d/b;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/a/d/b;->bkp:Lcom/google/a/d/b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/a/d/b;->bkm:Lcom/google/a/d/b;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/a/d/b;->bkn:Lcom/google/a/d/b;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/a/d/b;->bkq:Lcom/google/a/d/b;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/a/d/b;->bkt:Lcom/google/a/d/b;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/a/d/b;->bku:Lcom/google/a/d/b;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/a/d/b;->bkr:Lcom/google/a/d/b;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/google/a/d/b;->bks:Lcom/google/a/d/b;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/google/a/d/b;->bkv:Lcom/google/a/d/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method final vy()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/a/d/a;->bkf:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/a/d/a;->pos:I

    iget v2, p0, Lcom/google/a/d/a;->bkg:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " column "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/d/a;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
