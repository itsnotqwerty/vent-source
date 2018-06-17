.class public final Lokhttp3/internal/c;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_16_BE:Ljava/nio/charset/Charset;

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final UTF_32_BE:Ljava/nio/charset/Charset;

.field private static final UTF_32_LE:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

.field public static final cZH:Lokhttp3/z;

.field public static final cZI:Lokhttp3/x;

.field private static final cZJ:Ld/f;

.field private static final cZK:Ld/f;

.field private static final cZL:Ld/f;

.field private static final cZM:Ld/f;

.field private static final cZN:Ld/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [B

    sput-object v0, Lokhttp3/internal/c;->EMPTY_BYTE_ARRAY:[B

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/c;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sget-object v0, Lokhttp3/internal/c;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Lokhttp3/z;->O([B)Lokhttp3/z;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->cZH:Lokhttp3/z;

    const/4 v0, 0x0

    sget-object v1, Lokhttp3/internal/c;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0, v1}, Lokhttp3/x;->a(Lokhttp3/s;[B)Lokhttp3/x;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->cZI:Lokhttp3/x;

    const-string v0, "efbbbf"

    invoke-static {v0}, Ld/f;->fJ(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->cZJ:Ld/f;

    const-string v0, "feff"

    invoke-static {v0}, Ld/f;->fJ(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->cZK:Ld/f;

    const-string v0, "fffe"

    invoke-static {v0}, Ld/f;->fJ(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->cZL:Ld/f;

    const-string v0, "0000ffff"

    invoke-static {v0}, Ld/f;->fJ(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->cZM:Ld/f;

    const-string v0, "ffff0000"

    invoke-static {v0}, Ld/f;->fJ(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->cZN:Ld/f;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->UTF_16_BE:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->UTF_16_LE:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->UTF_32_BE:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->UTF_32_LE:Ljava/nio/charset/Charset;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->UTC:Ljava/util/TimeZone;

    new-instance v0, Lokhttp3/internal/c$1;

    invoke-direct {v0}, Lokhttp3/internal/c$1;-><init>()V

    sput-object v0, Lokhttp3/internal/c;->NATURAL_ORDER:Ljava/util/Comparator;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/c;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)I
    .locals 8

    const-wide/16 v6, 0x1d4c

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too large."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, v6, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    long-to-int v0, v0

    return v0
.end method

.method public static a(Lokhttp3/q;Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lokhttp3/q;->host:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_0

    iget v1, p0, Lokhttp3/q;->port:I

    iget-object v2, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/q;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/q;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lokhttp3/q;->host:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ld/s;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v0

    invoke-virtual {v0}, Ld/t;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v0

    invoke-virtual {v0}, Ld/t;->deadlineNanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    :goto_0
    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v4

    int-to-long v8, p1

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Ld/t;->aE(J)Ld/t;

    :try_start_0
    new-instance v4, Ld/c;

    invoke-direct {v4}, Ld/c;-><init>()V

    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v4, v8, v9}, Ld/s;->a(Ld/c;J)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ld/c;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v0

    invoke-virtual {v0}, Ld/t;->Nq()Ld/t;

    :goto_2
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v0

    invoke-virtual {v0}, Ld/t;->Nq()Ld/t;

    :goto_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ld/t;->aE(J)Ld/t;

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ld/t;->aE(J)Ld/t;

    goto :goto_2

    :catchall_0
    move-exception v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v0

    invoke-virtual {v0}, Ld/t;->Nq()Ld/t;

    :goto_5
    throw v4

    :cond_4
    invoke-interface {p0}, Ld/s;->MK()Ld/t;

    move-result-object v2

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ld/t;->aE(J)Ld/t;

    goto :goto_5
.end method

.method public static a(Ld/s;Ljava/util/concurrent/TimeUnit;)Z
    .locals 1

    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0, p1}, Lokhttp3/internal/c;->a(Ld/s;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x3a

    const/16 v8, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v3}, Lokhttp3/internal/c;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Lokhttp3/internal/c;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    array-length v0, v6

    if-ne v0, v8, :cond_a

    const/4 v3, -0x1

    move v0, v1

    move v2, v1

    :goto_2
    array-length v4, v6

    if-ge v0, v4, :cond_5

    move v5, v0

    :goto_3
    if-ge v5, v8, :cond_3

    aget-byte v4, v6, v5

    if-nez v4, :cond_3

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, v6, v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_3

    :cond_3
    sub-int v4, v5, v0

    if-le v4, v2, :cond_4

    const/4 v7, 0x4

    if-lt v4, v7, :cond_4

    move v2, v4

    move v3, v0

    :cond_4
    add-int/lit8 v0, v5, 0x2

    goto :goto_2

    :cond_5
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    :cond_6
    :goto_4
    array-length v4, v6

    if-ge v1, v4, :cond_9

    if-ne v1, v3, :cond_7

    invoke-virtual {v0, v9}, Ld/c;->fV(I)Ld/c;

    add-int/2addr v1, v2

    if-ne v1, v8, :cond_6

    invoke-virtual {v0, v9}, Ld/c;->fV(I)Ld/c;

    goto :goto_4

    :cond_7
    if-lez v1, :cond_8

    invoke-virtual {v0, v9}, Ld/c;->fV(I)Ld/c;

    :cond_8
    aget-byte v4, v6, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ld/c;->aB(J)Ld/c;

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ld/c;->Ky()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid IPv6 address: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_b
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lokhttp3/internal/c;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lokhttp3/internal/c;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    :cond_2
    const-string v4, " #%/:?@[\\]"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decodeHexDigit(C)I
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

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0x10

    new-array v8, v0, [B

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, -0x1

    move v4, p1

    :goto_0
    if-ge v4, p2, :cond_16

    const/16 v0, 0x10

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v4, 0x2

    if-gt v0, p2, :cond_2

    const-string v0, "::"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v0, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v1, v2, 0x2

    if-ne v3, p2, :cond_15

    move v0, v1

    move v2, v1

    :goto_2
    const/16 v1, 0x10

    if-eq v2, v1, :cond_13

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_14

    const-string v0, ":"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v0, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v3, v4, 0x1

    move v0, v1

    :goto_3
    const/4 v1, 0x0

    move v4, v3

    :goto_4
    if-ge v4, p2, :cond_f

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokhttp3/internal/c;->decodeHexDigit(C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    const-string v0, "."

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v0, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 v6, v2, -0x2

    move v5, v6

    move v0, v3

    :goto_5
    if-ge v0, p2, :cond_b

    const/16 v3, 0x10

    if-ne v5, v3, :cond_4

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-eq v5, v6, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :cond_6
    const/4 v3, 0x0

    move v4, v0

    :goto_7
    if-ge v4, p2, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-lt v7, v9, :cond_9

    const/16 v9, 0x39

    if-gt v7, v9, :cond_9

    if-nez v3, :cond_7

    if-eq v0, v4, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, -0x30

    const/16 v7, 0xff

    if-le v3, v7, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    sub-int v0, v4, v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    add-int/lit8 v7, v5, 0x1

    int-to-byte v0, v3

    aput-byte v0, v8, v5

    move v5, v7

    move v0, v4

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v6, 0x4

    if-eq v5, v0, :cond_c

    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v2, v2, 0x2

    move v0, v1

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    sub-int v5, v4, v3

    if-eqz v5, :cond_10

    const/4 v6, 0x4

    if-le v5, v6, :cond_11

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v5, v2, 0x1

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v8, v2

    add-int/lit8 v2, v5, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v8, v5

    move v1, v0

    goto/16 :goto_0

    :cond_12
    sub-int v1, v2, v0

    rsub-int/lit8 v1, v1, 0x10

    sub-int v3, v2, v0

    invoke-static {v8, v0, v8, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v1, v2, 0x10

    add-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v8, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_13
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

    :cond_14
    move v0, v1

    move v3, v4

    goto/16 :goto_3

    :cond_15
    move v0, v1

    move v2, v1

    goto/16 :goto_3

    :cond_16
    move v0, v1

    goto/16 :goto_2
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 2

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_1

    move p2, v0

    :cond_0
    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
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

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(JJ)V
    .locals 4

    const-wide/16 v2, 0x0

    or-long v0, v2, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, v2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, v2

    cmp-long v0, v0, p2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p1, v2

    array-length v6, p2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, p2, v0

    invoke-interface {p0, v5, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    array-length v5, p2

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v6, p2, v1

    invoke-interface {p0, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    :cond_0
    return p2

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 p1, v0, 0x1

    :cond_0
    return p1

    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lokhttp3/internal/c$2;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/c$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2}, Lokhttp3/internal/c;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    invoke-static {p0, v0, p2}, Lokhttp3/internal/c;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lokhttp3/internal/c;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
