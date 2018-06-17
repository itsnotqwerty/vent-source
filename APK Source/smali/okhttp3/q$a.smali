.class public final Lokhttp3/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/q$a$a;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field port:I

.field scheme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/q$a;->port:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/q;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 9

    const/4 v8, -0x1

    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/q;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

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
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
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

.method private resolvePath(Ljava/lang/String;II)V
    .locals 9

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
    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-ge v1, p3, :cond_0

    const-string v0, "/\\"

    invoke-static {p1, v1, p3, v0}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-ge v2, p3, :cond_8

    move v8, v4

    :goto_1
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p1

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Lokhttp3/q;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

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

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, p2

    goto/16 :goto_0

    :cond_8
    move v8, v5

    goto/16 :goto_1

    :cond_9
    move v0, v5

    goto :goto_2

    :cond_a
    move v0, v5

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    iget-object v3, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    iget-object v3, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v8, :cond_5

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method


# virtual methods
.method public final MC()Lokhttp3/q;
    .locals 2

    iget-object v0, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/q$a;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lokhttp3/q;

    invoke-direct {v0, p0}, Lokhttp3/q;-><init>(Lokhttp3/q$a;)V

    return-object v0
.end method

.method final a(Lokhttp3/q;Ljava/lang/String;)I
    .locals 13
    .param p1    # Lokhttp3/q;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Lokhttp3/internal/c;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v2, v0}, Lokhttp3/internal/c;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v11

    sub-int v0, v11, v2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_4

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "https"

    iput-object v0, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x6

    :goto_1
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_2
    if-ge v1, v11, :cond_e

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_e

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    :goto_3
    if-ge v0, v11, :cond_9

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-lt v1, v3, :cond_5

    const/16 v3, 0x7a

    if-le v1, v3, :cond_8

    :cond_5
    const/16 v3, 0x41

    if-lt v1, v3, :cond_6

    const/16 v3, 0x5a

    if-le v1, v3, :cond_8

    :cond_6
    const/16 v3, 0x30

    if-lt v1, v3, :cond_7

    const/16 v3, 0x39

    if-le v1, v3, :cond_8

    :cond_7
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_8

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_8

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_8

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, -0x1

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "http"

    iput-object v0, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    :cond_b
    sget v0, Lokhttp3/q$a$a;->cYU:I

    :goto_4
    return v0

    :cond_c
    if-eqz p1, :cond_d

    iget-object v0, p1, Lokhttp3/q;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    goto :goto_1

    :cond_d
    sget v0, Lokhttp3/q$a$a;->cYT:I

    goto :goto_4

    :cond_e
    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    if-eqz p1, :cond_f

    iget-object v1, p1, Lokhttp3/q;->scheme:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_f
    add-int v1, v2, v0

    :goto_5
    const-string v0, "@/\\?#"

    invoke-static {p2, v1, v11, v0}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_10

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_6
    sparse-switch v0, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-static {p2, v1, v10}, Lokhttp3/q$a;->portColonOffset(Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v10, :cond_14

    invoke-static {p2, v1, v0}, Lokhttp3/q$a;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/q$a;->host:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v10}, Lokhttp3/q$a;->parsePort(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lokhttp3/q$a;->port:I

    iget v0, p0, Lokhttp3/q$a;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    sget v0, Lokhttp3/q$a$a;->cYV:I

    goto :goto_4

    :cond_10
    const/4 v0, -0x1

    goto :goto_6

    :sswitch_1
    if-nez v8, :cond_13

    const/16 v0, 0x3a

    invoke-static {p2, v1, v10, v0}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v2

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/q;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    iput-object v0, p0, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    if-eq v2, v10, :cond_12

    const/4 v8, 0x1

    add-int/lit8 v1, v2, 0x1

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lokhttp3/q;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    :cond_12
    move v0, v8

    const/4 v1, 0x1

    move v2, v1

    :goto_7
    add-int/lit8 v1, v10, 0x1

    move v8, v0

    move v9, v2

    goto :goto_5

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lokhttp3/q;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    move v0, v8

    move v2, v9

    goto :goto_7

    :cond_14
    invoke-static {p2, v1, v0}, Lokhttp3/q$a;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q$a;->host:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/q;->defaultPort(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lokhttp3/q$a;->port:I

    :cond_15
    iget-object v0, p0, Lokhttp3/q$a;->host:Ljava/lang/String;

    if-nez v0, :cond_16

    sget v0, Lokhttp3/q$a$a;->cYW:I

    goto/16 :goto_4

    :cond_16
    move v2, v10

    :cond_17
    :goto_8
    const-string v0, "?#"

    invoke-static {p2, v2, v11, v0}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2, v2, v0}, Lokhttp3/q$a;->resolvePath(Ljava/lang/String;II)V

    if-ge v0, v11, :cond_1b

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1b

    const/16 v1, 0x23

    invoke-static {p2, v0, v11, v1}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v2

    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/q;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/q;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    :goto_9
    if-ge v2, v11, :cond_18

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_18

    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move v2, v11

    invoke-static/range {v0 .. v7}, Lokhttp3/q;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    :cond_18
    sget v0, Lokhttp3/q$a$a;->cYS:I

    goto/16 :goto_4

    :cond_19
    invoke-virtual {p1}, Lokhttp3/q;->encodedUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/q;->encodedPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/q;->host:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/q$a;->host:Ljava/lang/String;

    iget v0, p1, Lokhttp3/q;->port:I

    iput v0, p0, Lokhttp3/q$a;->port:I

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/q;->encodedPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v2, v11, :cond_1a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_17

    :cond_1a
    invoke-virtual {p1}, Lokhttp3/q;->encodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/q$a;->fv(Ljava/lang/String;)Lokhttp3/q$a;

    goto :goto_8

    :cond_1b
    move v2, v0

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method final effectivePort()I
    .locals 2

    iget v0, p0, Lokhttp3/q$a;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/q$a;->port:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/q;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final fv(Ljava/lang/String;)Lokhttp3/q$a;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/q;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/q;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lokhttp3/q$a;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/q$a;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lokhttp3/q$a;->effectivePort()I

    move-result v1

    iget-object v2, p0, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/q;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/q;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_4

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/q;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_4
    iget-object v1, p0, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, Lokhttp3/q$a;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
