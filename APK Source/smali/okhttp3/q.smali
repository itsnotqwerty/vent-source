.class public final Lokhttp3/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/q$a;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C


# instance fields
.field private final fragment:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final port:I

.field public final queryNamesAndValues:Ljava/util/List;
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

.field public final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/q;->HEX_DIGITS:[C

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

.method constructor <init>(Lokhttp3/q$a;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    invoke-static {v0, v3}, Lokhttp3/q;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q;->username:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v3}, Lokhttp3/q;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q;->password:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/q$a;->host:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/q;->host:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/q$a;->effectivePort()I

    move-result v0

    iput v0, p0, Lokhttp3/q;->port:I

    iget-object v0, p1, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v3}, Lokhttp3/q;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q;->pathSegments:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lokhttp3/q;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/q;->queryNamesAndValues:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    invoke-static {v0, v3}, Lokhttp3/q;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lokhttp3/q;->fragment:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 7

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_d

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v2, 0x20

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x80

    if-lt v0, v2, :cond_0

    if-nez p7, :cond_2

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x25

    if-ne v0, v2, :cond_1

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    invoke-static {p0, v1, p2}, Lokhttp3/q;->percentEncoded(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_c

    if-eqz p6, :cond_c

    :cond_2
    new-instance v3, Ld/c;

    invoke-direct {v3}, Ld/c;-><init>()V

    invoke-virtual {v3, p0, p1, v1}, Ld/c;->o(Ljava/lang/String;II)Ld/c;

    const/4 v0, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_b

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eqz p4, :cond_3

    const/16 v1, 0x9

    if-eq v4, v1, :cond_4

    const/16 v1, 0xa

    if-eq v4, v1, :cond_4

    const/16 v1, 0xc

    if-eq v4, v1, :cond_4

    const/16 v1, 0xd

    if-eq v4, v1, :cond_4

    :cond_3
    const/16 v1, 0x2b

    if-ne v4, v1, :cond_6

    if-eqz p6, :cond_6

    if-eqz p4, :cond_5

    const-string v1, "+"

    :goto_2
    invoke-virtual {v3, v1}, Ld/c;->fE(Ljava/lang/String;)Ld/c;

    :cond_4
    :goto_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    :cond_5
    const-string v1, "%2B"

    goto :goto_2

    :cond_6
    const/16 v1, 0x20

    if-lt v4, v1, :cond_8

    const/16 v1, 0x7f

    if-eq v4, v1, :cond_8

    const/16 v1, 0x80

    if-lt v4, v1, :cond_7

    if-nez p7, :cond_8

    :cond_7
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_8

    const/16 v1, 0x25

    if-ne v4, v1, :cond_a

    if-eqz p4, :cond_8

    if-eqz p5, :cond_a

    invoke-static {p0, v2, p2}, Lokhttp3/q;->percentEncoded(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    if-nez v0, :cond_9

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    :cond_9
    invoke-virtual {v0, v4}, Ld/c;->fU(I)Ld/c;

    :goto_4
    invoke-virtual {v0}, Ld/c;->Kr()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ld/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ld/c;->fV(I)Ld/c;

    sget-object v5, Lokhttp3/q;->HEX_DIGITS:[C

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ld/c;->fV(I)Ld/c;

    sget-object v5, Lokhttp3/q;->HEX_DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v5, v1

    invoke-virtual {v3, v1}, Ld/c;->fV(I)Ld/c;

    goto :goto_4

    :cond_a
    invoke-virtual {v3, v4}, Ld/c;->fU(I)Ld/c;

    goto :goto_3

    :cond_b
    invoke-virtual {v3}, Ld/c;->Ky()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v1, v0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lokhttp3/q;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultPort(Ljava/lang/String;)I
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

.method public static fu(Ljava/lang/String;)Lokhttp3/q;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lokhttp3/q$a;

    invoke-direct {v1}, Lokhttp3/q$a;-><init>()V

    invoke-virtual {v1, v0, p0}, Lokhttp3/q$a;->a(Lokhttp3/q;Ljava/lang/String;)I

    move-result v2

    sget v3, Lokhttp3/q$a$a;->cYS:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lokhttp3/q$a;->MC()Lokhttp3/q;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
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

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
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

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x2b

    const/16 v6, 0x25

    const/4 v5, -0x1

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_0

    if-ne v1, v7, :cond_4

    if-eqz p3, :cond_4

    :cond_0
    new-instance v1, Ld/c;

    invoke-direct {v1}, Ld/c;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Ld/c;->o(Ljava/lang/String;II)Ld/c;

    :goto_1
    if-ge v0, p2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    if-ne v2, v6, :cond_1

    add-int/lit8 v3, v0, 0x2

    if-ge v3, p2, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokhttp3/internal/c;->decodeHexDigit(C)I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokhttp3/internal/c;->decodeHexDigit(C)I

    move-result v4

    if-eq v3, v5, :cond_2

    if-eq v4, v5, :cond_2

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ld/c;->fV(I)Ld/c;

    add-int/lit8 v0, v0, 0x2

    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    if-ne v2, v7, :cond_2

    if-eqz p3, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ld/c;->fV(I)Ld/c;

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Ld/c;->fU(I)Ld/c;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ld/c;->Ky()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lokhttp3/q;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lokhttp3/q;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static percentEncoded(Ljava/lang/String;II)Z
    .locals 3

    const/4 v2, -0x1

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/c;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lokhttp3/internal/c;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
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


# virtual methods
.method public final encodedPassword()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lokhttp3/q;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lokhttp3/q;->url:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final encodedPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v2, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lokhttp3/q;->url:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encodedPathSegments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v5, 0x2f

    iget-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lokhttp3/q;->url:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-static {v0, v3, v1, v5}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v0

    iget-object v4, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final encodedQuery()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/q;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lokhttp3/q;->url:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v1, v0, v2, v3}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v1

    iget-object v2, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final encodedUsername()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lokhttp3/q;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lokhttp3/q;->url:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lokhttp3/q;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/q;

    iget-object v0, p1, Lokhttp3/q;->url:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/q;->url:Ljava/lang/String;

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

.method public final ft(Ljava/lang/String;)Lokhttp3/q$a;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Lokhttp3/q$a;

    invoke-direct {v0}, Lokhttp3/q$a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lokhttp3/q$a;->a(Lokhttp3/q;Ljava/lang/String;)I

    move-result v1

    sget v2, Lokhttp3/q$a$a;->cYS:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isHttps()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final uri()Ljava/net/URI;
    .locals 12

    const/4 v4, 0x0

    const/4 v2, 0x1

    new-instance v11, Lokhttp3/q$a;

    invoke-direct {v11}, Lokhttp3/q$a;-><init>()V

    iget-object v0, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    iput-object v0, v11, Lokhttp3/q$a;->scheme:Ljava/lang/String;

    invoke-virtual {p0}, Lokhttp3/q;->encodedUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    invoke-virtual {p0}, Lokhttp3/q;->encodedPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/q;->host:Ljava/lang/String;

    iput-object v0, v11, Lokhttp3/q$a;->host:Ljava/lang/String;

    iget v0, p0, Lokhttp3/q;->port:I

    iget-object v1, p0, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/q;->defaultPort(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/q;->port:I

    :goto_0
    iput v0, v11, Lokhttp3/q$a;->port:I

    iget-object v0, v11, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v11, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lokhttp3/q;->encodedPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lokhttp3/q;->encodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lokhttp3/q$a;->fv(Ljava/lang/String;)Lokhttp3/q$a;

    iget-object v0, p0, Lokhttp3/q;->fragment:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v11, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    iget-object v0, v11, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_2
    if-ge v6, v7, :cond_2

    iget-object v0, v11, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, v11, Lokhttp3/q$a;->encodedPathSegments:Ljava/util/List;

    const-string v1, "[]"

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/q;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokhttp3/q;->url:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lokhttp3/q;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, v11, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v11, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_3
    if-ge v0, v1, :cond_4

    iget-object v3, v11, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v3, v11, Lokhttp3/q$a;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-static/range {v5 .. v10}, Lokhttp3/q;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, v11, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v11, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    const-string v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/q;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lokhttp3/q$a;->encodedFragment:Ljava/lang/String;

    :cond_5
    invoke-virtual {v11}, Lokhttp3/q$a;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_4

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
