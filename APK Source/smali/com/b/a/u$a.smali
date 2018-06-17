.class public final Lcom/b/a/u$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final bLT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bpD:I

.field bzR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/u$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/u$a;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/u$a;->bpD:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static g(Ljava/lang/String;II)I
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    :sswitch_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method static h(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Lcom/b/a/u;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/b/a/u$a;->h(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/b/a/u$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "\u0000\t\n\r #%/:?@[\\]"

    invoke-static {v1, v3, v2, v4}, Lcom/b/a/u;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 10

    const/16 v0, 0x10

    new-array v8, v0, [B

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v4, v1, 0x2

    if-gt v4, p1, :cond_3

    const-string v4, "::"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0, v1, v4, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x2

    add-int/lit8 v1, v3, 0x2

    if-ne v0, p1, :cond_16

    move v2, v1

    move v3, v1

    :cond_2
    :goto_2
    const/16 v0, 0x10

    if-eq v3, v0, :cond_14

    const/4 v0, -0x1

    if-ne v2, v0, :cond_13

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_15

    const-string v4, ":"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v4, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v0, v1, 0x1

    :goto_3
    const/4 v1, 0x0

    move v4, v0

    :goto_4
    if-ge v4, p1, :cond_10

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/b/a/u;->d(C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    const-string v4, "."

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v4, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_f

    add-int/lit8 v6, v3, -0x2

    move v5, v6

    :goto_5
    if-ge v0, p1, :cond_c

    const/16 v1, 0x10

    if-ne v5, v1, :cond_5

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-eq v5, v6, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    :cond_7
    const/4 v1, 0x0

    move v4, v0

    :goto_7
    if-ge v4, p1, :cond_a

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-lt v7, v9, :cond_a

    const/16 v9, 0x39

    if-gt v7, v9, :cond_a

    if-nez v1, :cond_8

    if-eq v0, v4, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x30

    const/16 v7, 0xff

    if-le v1, v7, :cond_9

    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    sub-int v0, v4, v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v5, 0x1

    int-to-byte v0, v1

    aput-byte v0, v8, v5

    move v5, v7

    move v0, v4

    goto :goto_5

    :cond_c
    add-int/lit8 v0, v6, 0x4

    if-eq v5, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v1, v3, 0x2

    move v3, v1

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_10
    sub-int v5, v4, v0

    if-eqz v5, :cond_11

    const/4 v6, 0x4

    if-le v5, v6, :cond_12

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v8, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v8, v5

    move v1, v4

    goto/16 :goto_0

    :cond_13
    sub-int v0, v3, v2

    rsub-int/lit8 v0, v0, 0x10

    sub-int v1, v3, v2

    invoke-static {v8, v2, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v0, v3, 0x10

    add-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {v8, v2, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_14
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    move v0, v1

    goto/16 :goto_3

    :cond_16
    move v2, v1

    move v3, v1

    goto/16 :goto_3
.end method

.method static i(Ljava/lang/String;II)I
    .locals 7

    const/4 v6, -0x1

    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    iget v0, p0, Lcom/b/a/u$a;->bpD:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/u$a;->bpD:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/u$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/u;->dD(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method final f(Ljava/lang/String;II)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-ge v1, p3, :cond_0

    const-string v0, "/\\"

    invoke-static {p1, v1, p3, v0}, Lcom/b/a/u;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-ge v2, p3, :cond_8

    move v6, v4

    :goto_1
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/b/a/u;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "%2e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    move v0, v4

    :goto_2
    if-nez v0, :cond_5

    const-string v0, ".."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "%2e."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".%2e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "%2e%2e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    move v0, v4

    :goto_3
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    iget-object v1, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    iget-object v1, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    iget-object v1, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, p2

    goto/16 :goto_0

    :cond_8
    move v6, v5

    goto/16 :goto_1

    :cond_9
    move v0, v5

    goto :goto_2

    :cond_a
    move v0, v5

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    iget-object v3, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    iget-object v3, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/b/a/u$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/u$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/u$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/b/a/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/u$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/u$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/b/a/u$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/u$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/u$a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/u$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/b/a/u;->dD(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/b/a/u$a;->bLT:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/u;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/b/a/u$a;->bzR:Ljava/util/List;

    if-eqz v1, :cond_4

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/u$a;->bzR:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/u;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_4
    iget-object v1, p0, Lcom/b/a/u$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/u$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/b/a/u$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
