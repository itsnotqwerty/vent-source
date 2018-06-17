.class public final Lokhttp3/internal/c/e;
.super Ljava/lang/Object;


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c/e;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Lokhttp3/k;Lokhttp3/q;Lokhttp3/p;)V
    .locals 1

    sget-object v0, Lokhttp3/k;->cYM:Lokhttp3/k;

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lokhttp3/j;->a(Lokhttp3/q;Lokhttp3/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lokhttp3/k;->Md()V

    goto :goto_0
.end method

.method public static a(Lokhttp3/y;Lokhttp3/p;Lokhttp3/w;)Z
    .locals 4

    iget-object v0, p0, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-static {v0}, Lokhttp3/internal/c/e;->d(Lokhttp3/p;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/p;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p2, Lokhttp3/w;->cZo:Lokhttp3/p;

    invoke-virtual {v3, v0}, Lokhttp3/p;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lokhttp3/internal/c;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Lokhttp3/p;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/p;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v4, v1, 0x2

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    const-string v3, "Vary"

    invoke-virtual {p0, v1}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_0
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static f(Lokhttp3/y;)J
    .locals 2

    iget-object v0, p0, Lokhttp3/y;->cZo:Lokhttp3/p;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lokhttp3/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c/e;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Lokhttp3/y;)Z
    .locals 2

    iget-object v0, p0, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-static {v0}, Lokhttp3/internal/c/e;->d(Lokhttp3/p;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static h(Lokhttp3/y;)Lokhttp3/p;
    .locals 7

    iget-object v0, p0, Lokhttp3/y;->cZv:Lokhttp3/y;

    iget-object v0, v0, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v1, v0, Lokhttp3/w;->cZo:Lokhttp3/p;

    iget-object v0, p0, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-static {v0}, Lokhttp3/internal/c/e;->d(Lokhttp3/p;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lokhttp3/p$a;

    invoke-direct {v0}, Lokhttp3/p$a;-><init>()V

    invoke-virtual {v0}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lokhttp3/p$a;

    invoke-direct {v3}, Lokhttp3/p$a;-><init>()V

    const/4 v0, 0x0

    iget-object v4, v1, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    :goto_1
    if-ge v0, v4, :cond_2

    invoke-virtual {v1, v0}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v0}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lokhttp3/p$a;->X(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Lokhttp3/y;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v2, v2, Lokhttp3/w;->method:Ljava/lang/String;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lokhttp3/y;->code:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lokhttp3/internal/c/e;->f(Lokhttp3/y;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    :goto_0
    return p1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    long-to-int p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
