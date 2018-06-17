.class public final Lio/intercom/okhttp3/HttpUrl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/HttpUrl$Builder;
    }
.end annotation


# static fields
.field static final FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final HEX_DIGITS:[C

.field static final PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"\'<>#&="

.field static final QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final QUERY_ENCODE_SET:Ljava/lang/String; = " \"\'<>#"

.field static final USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final fragment:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final host:Ljava/lang/String;

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

.field final port:I

.field private final queryNamesAndValues:Ljava/util/List;
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

.field final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/intercom/okhttp3/HttpUrl;->HEX_DIGITS:[C

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

.method constructor <init>(Lio/intercom/okhttp3/HttpUrl$Builder;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-static {v0, v3}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->username:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v3}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->password:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v0

    iput v0, p0, Lio/intercom/okhttp3/HttpUrl;->port:I

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-static {v0, v3}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->fragment:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 10

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    if-nez p7, :cond_2

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    invoke-static {p0, v2, p2}, Lio/intercom/okhttp3/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    if-eqz p6, :cond_3

    :cond_2
    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    invoke-virtual {v0, p0, p1, v2}, Lio/intercom/b/c;->l(Ljava/lang/String;II)Lio/intercom/b/c;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lio/intercom/okhttp3/HttpUrl;->canonicalize(Lio/intercom/b/c;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Lio/intercom/b/c;->Ky()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Lio/intercom/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lio/intercom/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static canonicalize(Lio/intercom/b/c;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .locals 6

    const/16 v5, 0x25

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    if-eqz p5, :cond_0

    const/16 v1, 0x9

    if-eq v2, v1, :cond_1

    const/16 v1, 0xa

    if-eq v2, v1, :cond_1

    const/16 v1, 0xc

    if-eq v2, v1, :cond_1

    const/16 v1, 0xd

    if-eq v2, v1, :cond_1

    :cond_0
    const/16 v1, 0x2b

    if-ne v2, v1, :cond_3

    if-eqz p7, :cond_3

    if-eqz p5, :cond_2

    const-string v1, "+"

    :goto_1
    invoke-virtual {p0, v1}, Lio/intercom/b/c;->ff(Ljava/lang/String;)Lio/intercom/b/c;

    :cond_1
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_2
    const-string v1, "%2B"

    goto :goto_1

    :cond_3
    const/16 v1, 0x20

    if-lt v2, v1, :cond_5

    const/16 v1, 0x7f

    if-eq v2, v1, :cond_5

    const/16 v1, 0x80

    if-lt v2, v1, :cond_4

    if-nez p8, :cond_5

    :cond_4
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    if-ne v2, v5, :cond_9

    if-eqz p5, :cond_5

    if-eqz p6, :cond_9

    invoke-static {p1, p2, p3}, Lio/intercom/okhttp3/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    :cond_6
    if-eqz p9, :cond_7

    sget-object v1, Lio/intercom/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p9, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {v0, v2}, Lio/intercom/b/c;->fu(I)Lio/intercom/b/c;

    :goto_3
    invoke-virtual {v0}, Lio/intercom/b/c;->Kr()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/intercom/b/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v5}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    sget-object v3, Lio/intercom/okhttp3/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    sget-object v3, Lio/intercom/okhttp3/HttpUrl;->HEX_DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    goto :goto_3

    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v1, p9}, Lio/intercom/b/c;->a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lio/intercom/b/c;

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v2}, Lio/intercom/b/c;->fu(I)Lio/intercom/b/c;

    goto :goto_2

    :cond_a
    return-void
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

.method public static get(Ljava/net/URI;)Lio/intercom/okhttp3/HttpUrl;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lio/intercom/okhttp3/HttpUrl;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method static getChecked(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Lio/intercom/okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lio/intercom/okhttp3/HttpUrl$Builder;->parse(Lio/intercom/okhttp3/HttpUrl;Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v1

    sget-object v2, Lio/intercom/okhttp3/HttpUrl$1;->$SwitchMap$okhttp3$HttpUrl$Builder$ParseResult:[I

    invoke-virtual {v1}, Lio/intercom/okhttp3/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->build()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
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

.method public static parse(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lio/intercom/okhttp3/HttpUrl$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/HttpUrl$Builder;-><init>()V

    invoke-virtual {v1, v0, p0}, Lio/intercom/okhttp3/HttpUrl$Builder;->parse(Lio/intercom/okhttp3/HttpUrl;Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v2

    sget-object v3, Lio/intercom/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lio/intercom/okhttp3/HttpUrl$Builder$ParseResult;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lio/intercom/okhttp3/HttpUrl$Builder;->build()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    :cond_0
    return-object v0
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
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    new-instance v1, Lio/intercom/b/c;

    invoke-direct {v1}, Lio/intercom/b/c;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lio/intercom/b/c;->l(Ljava/lang/String;II)Lio/intercom/b/c;

    invoke-static {v1, p0, v0, p2, p3}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Lio/intercom/b/c;Ljava/lang/String;IIZ)V

    invoke-virtual {v1}, Lio/intercom/b/c;->Ky()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

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

.method static percentDecode(Lio/intercom/b/c;Ljava/lang/String;IIZ)V
    .locals 5

    const/4 v4, -0x1

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/intercom/okhttp3/internal/Util;->decodeHexDigit(C)I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/intercom/okhttp3/internal/Util;->decodeHexDigit(C)I

    move-result v3

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    add-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    if-eqz p4, :cond_1

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lio/intercom/b/c;->fu(I)Lio/intercom/b/c;

    goto :goto_1

    :cond_2
    return-void
.end method

.method static percentEncoded(Ljava/lang/String;II)Z
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

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->decodeHexDigit(C)I

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
.method public final encodedFragment()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final encodedPassword()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final encodedPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lio/intercom/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

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

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lio/intercom/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-static {v0, v3, v1, v5}, Lio/intercom/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v0

    iget-object v4, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

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

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v1, v0, v2, v3}, Lio/intercom/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v1

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final encodedUsername()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lio/intercom/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

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

    instance-of v0, p1, Lio/intercom/okhttp3/HttpUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/okhttp3/HttpUrl;

    iget-object v0, p1, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

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

.method public final fragment()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final host()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final isHttps()Z
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final newBuilder()Lio/intercom/okhttp3/HttpUrl$Builder;
    .locals 3

    new-instance v1, Lio/intercom/okhttp3/HttpUrl$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/HttpUrl$Builder;-><init>()V

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v0, v1, Lio/intercom/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/okhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/okhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v0, v1, Lio/intercom/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    iget v0, p0, Lio/intercom/okhttp3/HttpUrl;->port:I

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lio/intercom/okhttp3/HttpUrl;->port:I

    :goto_0
    iput v0, v1, Lio/intercom/okhttp3/HttpUrl$Builder;->port:I

    iget-object v0, v1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lio/intercom/okhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lio/intercom/okhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    invoke-virtual {p0}, Lio/intercom/okhttp3/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final newBuilder(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Lio/intercom/okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lio/intercom/okhttp3/HttpUrl$Builder;->parse(Lio/intercom/okhttp3/HttpUrl;Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v1

    sget-object v2, Lio/intercom/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lio/intercom/okhttp3/HttpUrl$Builder$ParseResult;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final password()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final pathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public final pathSize()I
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final port()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/HttpUrl;->port:I

    return v0
.end method

.method public final query()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lio/intercom/okhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public final queryParameterName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final queryParameterNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final queryParameterValue(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final queryParameterValues(Ljava/lang/String;)Ljava/util/List;
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

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iget-object v2, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final querySize()I
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final redact()Ljava/lang/String;
    .locals 2

    const-string v0, "/..."

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/HttpUrl$Builder;->password(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->build()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resolve(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lio/intercom/okhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->build()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final topPrivateDomain()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lio/intercom/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lio/intercom/okhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final uri()Ljava/net/URI;
    .locals 4

    invoke-virtual {p0}, Lio/intercom/okhttp3/HttpUrl;->newBuilder()Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->reencodeForUri()Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
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

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final url()Ljava/net/URL;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lio/intercom/okhttp3/HttpUrl;->url:Ljava/lang/String;

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

.method public final username()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/HttpUrl;->username:Ljava/lang/String;

    return-object v0
.end method
