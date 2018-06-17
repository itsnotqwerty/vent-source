.class public final Lio/intercom/okhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED_STRING:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([^ \"=]*)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentLength(Lio/intercom/okhttp3/Headers;)J
    .locals 2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lio/intercom/okhttp3/Response;)J
    .locals 2

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->contentLength(Lio/intercom/okhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lio/intercom/okhttp3/Response;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->code()I

    move-result v2

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
    invoke-static {p0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->contentLength(Lio/intercom/okhttp3/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p0, v3}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static hasVaryAll(Lio/intercom/okhttp3/Headers;)Z
    .locals 2

    invoke-static {p0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->varyFields(Lio/intercom/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lio/intercom/okhttp3/Response;)Z
    .locals 1

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->hasVaryAll(Lio/intercom/okhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method public static parseChallenges(Lio/intercom/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v13, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lio/intercom/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sget-object v3, Lio/intercom/okhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object v6, v7

    move-object v8, v7

    move v5, v2

    :goto_1
    invoke-virtual {v12, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    const-string v3, "realm"

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, v6

    move-object v3, v8

    :goto_2
    if-eqz v3, :cond_1

    if-nez v2, :cond_4

    :cond_1
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    move-object v6, v2

    move-object v8, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    const-string v3, "charset"

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    move-object v3, v8

    goto :goto_2

    :cond_3
    move-object v2, v6

    move-object v3, v8

    :cond_4
    if-eqz v3, :cond_0

    new-instance v0, Lio/intercom/okhttp3/Challenge;

    invoke-direct {v0, v11, v3}, Lio/intercom/okhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lio/intercom/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Lio/intercom/okhttp3/Challenge;->withCharset(Ljava/nio/charset/Charset;)Lio/intercom/okhttp3/Challenge;

    move-result-object v0

    :cond_5
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v9

    :cond_7
    move-object v2, v6

    move-object v3, v8

    goto :goto_2
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

.method public static receiveHeaders(Lio/intercom/okhttp3/CookieJar;Lio/intercom/okhttp3/HttpUrl;Lio/intercom/okhttp3/Headers;)V
    .locals 2

    sget-object v0, Lio/intercom/okhttp3/CookieJar;->NO_COOKIES:Lio/intercom/okhttp3/CookieJar;

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lio/intercom/okhttp3/Cookie;->parseAll(Lio/intercom/okhttp3/HttpUrl;Lio/intercom/okhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, p1, v0}, Lio/intercom/okhttp3/CookieJar;->saveFromResponse(Lio/intercom/okhttp3/HttpUrl;Ljava/util/List;)V

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

.method public static varyFields(Lio/intercom/okhttp3/Headers;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/Headers;",
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

    invoke-virtual {p0}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    const-string v3, "Vary"

    invoke-virtual {p0, v1}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

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

.method private static varyFields(Lio/intercom/okhttp3/Response;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->varyFields(Lio/intercom/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Headers;
    .locals 6

    invoke-static {p1}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->varyFields(Lio/intercom/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v2}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lio/intercom/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    goto :goto_0
.end method

.method public static varyHeaders(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Headers;
    .locals 2

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->networkResponse()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static varyMatches(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/Request;)Z
    .locals 3

    invoke-static {p0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->varyFields(Lio/intercom/okhttp3/Response;)Ljava/util/Set;

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

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lio/intercom/okhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lio/intercom/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
